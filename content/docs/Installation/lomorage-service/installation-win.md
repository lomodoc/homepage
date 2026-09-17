---
title: Windows
weight: 4
---

# Install "Lomorage Photo Assistant" on Windows

## 1. Install

Open **PowerShell** (no need to run as Administrator) and paste in:

```powershell
irm https://lomosw.lomorage.com/windows/install.ps1 | iex
```

This downloads `lomod.exe` and everything it needs (vips, exiftool, ffmpeg), installs it to
your user profile, and starts it — no installer window, no admin rights, no reboot.

{{< hint warning >}}
If you're in mainland China and GitHub downloads are slow or fail, set this first so the
download goes through an accelerator proxy instead:

```powershell
$env:LOMOD_CHINA=1; irm https://lomosw.lomorage.com/windows/install.ps1 | iex
```
{{< /hint >}}

If Windows shows a firewall prompt the first time it starts (so your phone can reach it over
your local network), choose **Private networks** and click **Allow access**.

## 2. Data folder

By default, your photos and videos are stored under `Pictures\Lomorage` in your own user
folder — you don't need to configure anything before using it.

If you'd rather use a different drive or folder (for example an external drive), download the
script first instead of piping it straight into `iex`, then run it with `-DataDir`:

```powershell
irm https://lomosw.lomorage.com/windows/install.ps1 -OutFile install.ps1
./install.ps1 -DataDir "D:\Lomorage"
```

Running the installer again like this is also how you re-point an existing install at a new
folder — it's safe to re-run any time.

## 3. Open Lomorage

A **Lomorage** icon appears in your Start menu and in the notification area (system tray, at
the bottom right of your screen) — double-click either to open the web client in your browser.

Right-click the tray icon for **Start / Stop / Restart**, or **Quit** to close it entirely. If
you ever quit it, search for **Lomorage** in the Start menu to open it again — no need to
reinstall.

## 4. Access from your phone or another computer

Find the IP address shown for your PC, then from your phone or another device on the same
network, open `http://<that-ip>:8000` in a browser.

## 5. Staying up to date

Lomorage checks for updates once a day in the background and installs them automatically — no
action needed. If you'd rather update right away, just run the install command from step 1
again; it's safe to re-run and won't touch your photos.

## 6. Uninstall

There isn't a one-click uninstaller yet. To remove it completely:

1. Right-click the tray icon and choose **Quit**.
2. Delete the `Lomorage.lnk` shortcuts from your Start menu and from
   `shell:startup` (paste that into the Windows Explorer address bar to jump there).
3. Open Task Scheduler and delete the **LomorageUpdate** task, if present.
4. Delete the install folder at `%LOCALAPPDATA%\Lomorage\lomod`.

Your photos in the data folder from step 2 are not touched by any of this.

Enjoy!

**Contact us: support@lomorage.com**

{{< hint info >}}
**Note on iPhone HEIC photos / HEVC videos:** the Lomorage web client converts these to
browser-friendly formats automatically when you view them there, so you don't need to install
anything extra just for that. But the *original* file stays HEIC/HEVC on disk — in your data
folder, and in anything you download from Lomorage rather than just view in the browser. If
you want Windows Explorer/Photos (on this PC or any other) to display or play those original
files, install the
"[HEIF Image Extensions](https://www.microsoft.com/en-us/p/heif-image-extensions/9pmmsr1cgpwg?activetab=pivot:overviewtab)"
and "[HEVC Video Extensions](https://www.microsoft.com/en-us/p/hevc-video-extensions/9nmzlz57r3t7?activetab=pivot:overviewtab)"
for that.
{{< /hint >}}
