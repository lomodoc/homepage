---
weight: 13
bookFlatSection: true
title: "External Access"
---

# External Access Configuration

Currently, external access need some manual setup and some technical background, we will make the process more user-friendly later.

There are a few tunnel services available for free use, most tunnel services require a client application running on your device, and set up a connection to the service running by the service provider, and it will give a subdomain name for you to use, if you access the URL with that subdomain, the tunnel service will forward the traffic/request to the client application.

You can use [ngrok](https://ngrok.com), which is a free tunnel services. ngrok need register before use, and need pay to customize subdomain.

{{< hint info >}}
If you are using Lomorage Raspbian image, the login username is "pi" and password is "raspberry";
If you are using Lomorage Armbian image, the login username is "lomoware" and password is "lomorage";
{{< /hint >}}

## ngrok

### 1. Register

Sign up a ngrok account [here](https://dashboard.ngrok.com/signup), after that, it will show up a "Setup & Installation" page.

### 2. Download

ngrok is just one binary, you can download the version on your platform.

If you are on Raspberry Pi, you can copy the link of Linux(ARM) on the "Setup & Installation" page, which is "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip" for now, and download it via "wget".

```bash
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
```

### 3. Installation

unzip and get the binary. You can double click on Windows or macOS to unzip it.

If you are using Raspberry Pi, use "unzip" command:

```bash
unzip ngrok-stable-linux-arm.zip
```

### 4. Connect your account

On the "Setup & Installation" page step 3, it shows the “authtoken”, you need open **terminal** to run ngrok to add the authtoken to the config file.

```bash
./ngrok authtoken [your-authtoken-show-in-step-3]
```

### 5. Run ngrok

Lomorage service is using "8000" by default, and ngrok can't customize subdomain with free account. After runnig successfully, it will show the tunnel url, the subdomain is a random string which might change in next run.

```bash
./ngrok http 8000
```

<script id="asciicast-265359" src="https://asciinema.org/a/265359.js" async></script>

### 6. Config tunnel service on Lomorage APP

Open Lomorage APP on the phone, and in the settings tab, fill the tunnel service host, the host is like "2e30eea5.ngrok.io", and port should be "443".