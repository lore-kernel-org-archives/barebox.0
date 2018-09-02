Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwZoY-0000EZ-VH
 for barebox@lists.infradead.org; Sun, 02 Sep 2018 21:21:51 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Sun,  2 Sep 2018 23:21:23 +0200
Message-Id: <20180902212123.16405-5-r.hieber@pengutronix.de>
In-Reply-To: <20180902212123.16405-1-r.hieber@pengutronix.de>
References: <20180902212123.16405-1-r.hieber@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] Documentation: i.MX: update Kindle 4/5 board documentation
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

From: Roland Hieber <rohieb@rohieb.name>

- complete the instructions to get into USB bootloader mode
- put hardware info to the top, and split into sections
- add info about the new defconfig
- remove build size hints, which have been applied to the defconfig
- transform literal blocks into code blocks

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 .../boards/imx/amazon-kindle-4-5.rst          | 81 ++++++++++---------
 1 file changed, 41 insertions(+), 40 deletions(-)

diff --git a/Documentation/boards/imx/amazon-kindle-4-5.rst b/Documentation/boards/imx/amazon-kindle-4-5.rst
index bc6bf2609b..58f38a058e 100644
--- a/Documentation/boards/imx/amazon-kindle-4-5.rst
+++ b/Documentation/boards/imx/amazon-kindle-4-5.rst
@@ -1,7 +1,8 @@
-Amazon Kindle 4/5 Model No. D01100, D01200 and EY21
-===================================================
+Amazon Kindle 4/5 (Wi-Fi/No-Touch, Touch and Paperwhite)
+========================================================
 
-The Kindle Model No. D01100 (Kindle Wi-Fi), D01200 (Kindle Touch)
+The Kindle Models No. D01100 (Kindle Wi-Fi, also known as No-Touch or K4NT),
+D01200 (Kindle Touch)
 and EY21 (Paperwhite) are refered as the Kindle 4th and 5th generation.
 Those e-book readers share a common set of hardware:
 
@@ -15,55 +16,55 @@ while the newer EY21 uses 256MiB of LPDDR2.
 The devices boot up in internal boot mode from an eMMC boot partition and
 are shipped with a vendor modified u-boot imximage based on u-boot v2009.08.
 
-To upload and run a new bootloader the older devices can be put into
-USB-downloader mode by the SOC microcode when a specific key is pressed during
-startup:
+This device is battery-powered and there is no way to switch the device off.
+When the device is inactive, the Kindle software will first reduce the
+power consumption to a few milliamps of battery power, after some minutes
+the power consumption is further reduced to about 550 microamps. Switching
+on iomux pullups may significantly reduce your standby-time.
 
-* the fiveway down button on the model D01100
-* the home button on model D01200
+Building barebox
+----------------
 
-A new USB device "NS Blank CODEX" should appear, barebox may be uploaded using
+``make kindle-mx50_defconfig`` should get you a working config.
 
-::
+Uploading barebox
+-----------------
 
-        $ scripts/imx/imx-usb-loader barebox-kindle-d01100.img
-        $ scripts/imx/imx-usb-loader barebox-kindle-d01200.img
+To upload and run a new bootloader, the older devices can be put into
+USB bootloader mode by the SoC microcode:
 
-Hint: keep the select button pressed down to get the barebox USB console.
+1. Connect the Kindle to your host computer with a USB cable.
+2. Power down the device by holding the power button until the power LED goes
+   dark (about 10 seconds).
+4. Hold the power button, and hold down a device-specific special key:
+   * the fiveway down button on the model D01100
+   * the home button on model D01200
+4. Then release the power button, but still hold the special key.
+5. A new USB device named ``NS Blank CODEX`` should appear on your host computer.
+   You can now release the special button.
+7. Finally, upload barebox to the Kindle by using:
 
-Barebox may be used as drop-in replacement for the shipped bootloader, when
-the imximg fits into 258048 bytes. When installing the barebox imximg on
-the eMMC, take care not to overwrite the vendor supplied serial numbers stored
-on the eMMC,
-e.g. for the D01100 just write the imx-header and the application section::
+   .. code-block:: console
 
-        loady -t usbserial
-        memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.imx_header 1024 0 2048
-        memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.self 4096 0 253952
+        $ scripts/imx/imx-usb-loader barebox-kindle-d01100.img
+        $ scripts/imx/imx-usb-loader barebox-kindle-d01200.img
 
-Note: a USB serial ACM console will be launched by a barebox init script
-when
+Additionally, a USB serial ACM console will be launched by a barebox init script
+when:
 
 * the cursor select key is pressed during startup of model D01100
 * the home button is pressed within a second after startup of model D01200.
-  If you press the home button during startup, you will enter USB boot mode.
+  (If you press the home button during startup, you will enter USB boot mode.)
 * the EY21 has no keys to press, a USB console will be launched for 10s.
 
-This device is battery-powered and there is no way to switch the device off.
-When the device is inactive, the kindle software will first reduce the
-power consumption to a few milliamps of battery power, after some minutes
-the power consumption is further reduced to about 550 microamps. Switching
-on iomux pullups may significantly reduce your standby-time.
-
-Hints to reduce the build image size
-------------------------------------
+Barebox may be used as drop-in replacement for the shipped bootloader, when
+the imximg fits into 258048 bytes. When installing the barebox imximg on
+the eMMC, take care not to overwrite the vendor supplied serial numbers stored
+on the eMMC,
+e.g. for the D01100 just write the imx-header and the application section:
 
-Note that a drop-in replacement barebox imximage must not exceed 258048 bytes
-since the space behind it is in use. Hence, don't build in drivers and FS
-that are not required, e.g.
-``NET, DISK_AHCI, DISK_INTF_PLATFORM_IDE, DISK_ATA, VIDEO, PWM, LED,
-USB_STORAGE, USB_ULPI, NAND, MTD_UBI, FS_UBIFS, MFD_MC34704, MFD_MC9SDZ60,
-MFD_STMPE, EEPROM_AT25, EEPROM_AT24, KEYBOARD_GPIO, PARTITION_DISK_EFI``
+.. code-block:: console
 
-Also unselect support for other boards to get rid of their dependencies.
-Further select ``IMAGE_COMPRESSION_XZKERN``.
+        $ loady -t usbserial
+        $ memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.imx_header 1024 0 2048
+        $ memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.self 4096 0 253952
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
