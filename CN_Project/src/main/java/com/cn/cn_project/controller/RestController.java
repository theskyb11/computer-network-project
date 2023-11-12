package com.cn.cn_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.BufferedReader;
import java.io.InputStreamReader;

@Controller
public class RestController {

    @GetMapping("/ipconfig")
    public String executeIPConfigCommand(Model model) {
        try {
            Process process = Runtime.getRuntime().exec("ipconfig");
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
            StringBuilder output = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line).append("<br>");
            }
            model.addAttribute("output", output.toString());
            return "ipconfig";
        } catch (Exception e) {
            model.addAttribute("output", "Error executing ipconfig command: " + e.getMessage());
            return "ipconfig";
        }
    }

    @RequestMapping("/httpstatuses")
    public String httpstatuses(){
        return "httpstatuses";
    }

    @RequestMapping("/ipinfo")
    public String ipinfo(){
        return "ipinfo";
    }

    @RequestMapping("/ipDetailsPage")
    public String details(){
        return "ipDetailsPage";
    }

    @PostMapping("/ipDetails")
    public String showIPDetails(@RequestParam("ipAddress") String ipAddress, Model model) {
        String ipClass = calculateIPClass(ipAddress);
        String subnetMask = calculateSubnetMask(ipClass);
        String networkId = calculateNetworkId(ipAddress, subnetMask);
        String broadcastId = calculateBroadcastId(ipAddress, subnetMask);

        model.addAttribute("ipAddress", ipAddress);
        model.addAttribute("ipClass", ipClass);
        model.addAttribute("subnetMask", subnetMask);
        model.addAttribute("networkId", networkId);
        model.addAttribute("broadcastId", broadcastId);

        return "ipDetailsPage"; // This should be the name of the page to display IP details
    }

    private String calculateIPClass(String ipAddress) {
        String[] octets = ipAddress.split("\\.");

        int firstOctet = Integer.parseInt(octets[0]);

        if (firstOctet >= 1 && firstOctet <= 126) {
            return "A";
        } else if (firstOctet >= 128 && firstOctet <= 191) {
            return "B";
        } else if (firstOctet >= 192 && firstOctet <= 223) {
            return "C";
        } else if (firstOctet >= 224 && firstOctet <= 239) {
            return "D";
        } else {
            return "E";
        }
    }

    private String calculateSubnetMask(String ipClass) {
        switch (ipClass) {
            case "A":
                return "255.0.0.0";
            case "B":
                return "255.255.0.0";
            case "C":
                return "255.255.255.0";
            default:
                return "N/A";
        }
    }

    private String calculateNetworkId(String ipAddress, String subnetMask) {
        String[] ipOctets = ipAddress.split("\\.");
        String[] maskOctets = subnetMask.split("\\.");

        int[] networkIdOctets = new int[4];
        for (int i = 0; i < 4; i++) {
            networkIdOctets[i] = Integer.parseInt(ipOctets[i]) & Integer.parseInt(maskOctets[i]);
        }

        return String.format("%d.%d.%d.%d", networkIdOctets[0], networkIdOctets[1], networkIdOctets[2], networkIdOctets[3]);
    }

    private String calculateBroadcastId(String ipAddress, String subnetMask) {
        String[] ipOctets = ipAddress.split("\\.");
        String[] maskOctets = subnetMask.split("\\.");

        int[] broadcastIdOctets = new int[4];
        for (int i = 0; i < 4; i++) {
            broadcastIdOctets[i] = (Integer.parseInt(ipOctets[i]) & Integer.parseInt(maskOctets[i])) | (~Integer.parseInt(maskOctets[i]) & 0xFF);
        }

        return String.format("%d.%d.%d.%d", broadcastIdOctets[0], broadcastIdOctets[1], broadcastIdOctets[2], broadcastIdOctets[3]);
    }
}
