Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSUv4-0001VD-7c
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 22:04:14 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Tue, 12 Jun 2018 00:02:28 +0200
Message-Id: <20180611220235.15995-3-rohieb@rohieb.name>
In-Reply-To: <20180611220235.15995-1-rohieb@rohieb.name>
References: <20180611220235.15995-1-rohieb@rohieb.name>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/9] doc: boards: Amazon Kindle 4/5: apply some more formatting
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 .../boards/imx/amazon-kindle-4-5.rst          | 39 ++++++++++++-------
 1 file changed, 25 insertions(+), 14 deletions(-)

diff --git a/Documentation/boards/imx/amazon-kindle-4-5.rst b/Documentation/boards/imx/amazon-kindle-4-5.rst
index 1e71cd26ba..bc6bf2609b 100644
--- a/Documentation/boards/imx/amazon-kindle-4-5.rst
+++ b/Documentation/boards/imx/amazon-kindle-4-5.rst
@@ -18,24 +18,32 @@ are shipped with a vendor modified u-boot imximage based on u-boot v2009.08.
 To upload and run a new bootloader the older devices can be put into
 USB-downloader mode by the SOC microcode when a specific key is pressed during
 startup:
+
 * the fiveway down button on the model D01100
 * the home button on model D01200
+
 A new USB device "NS Blank CODEX" should appear, barebox may be uploaded using
-$ scripts/imx/imx-usb-loader barebox-kindle-d01100.img
-$ scripts/imx/imx-usb-loader barebox-kindle-d01200.img
+
+::
+
+        $ scripts/imx/imx-usb-loader barebox-kindle-d01100.img
+        $ scripts/imx/imx-usb-loader barebox-kindle-d01200.img
+
 Hint: keep the select button pressed down to get the barebox USB console.
 
 Barebox may be used as drop-in replacement for the shipped bootloader, when
 the imximg fits into 258048 bytes. When installing the barebox imximg on
-the eMMC take care not to overwrite the vendor supplied serial numbers stored
-on the eMMC.
-e.g. for the D01100 just write the imx-header and the application section:
-loady -t usbserial
-memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.imx_header 1024 0 2048
-memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.self 4096 0 253952
+the eMMC, take care not to overwrite the vendor supplied serial numbers stored
+on the eMMC,
+e.g. for the D01100 just write the imx-header and the application section::
+
+        loady -t usbserial
+        memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.imx_header 1024 0 2048
+        memcpy -b -s barebox-kindle-d01100.img -d /dev/disk0.boot0.self 4096 0 253952
 
 Note: a USB serial ACM console will be launched by a barebox init script
 when
+
 * the cursor select key is pressed during startup of model D01100
 * the home button is pressed within a second after startup of model D01200.
   If you press the home button during startup, you will enter USB boot mode.
@@ -47,12 +55,15 @@ power consumption to a few milliamps of battery power, after some minutes
 the power consumption is further reduced to about 550 microamps. Switching
 on iomux pullups may significantly reduce your standby-time.
 
-Hints to reduce the build image size.
+Hints to reduce the build image size
+------------------------------------
+
 Note that a drop-in replacement barebox imximage must not exceed 258048 bytes
 since the space behind it is in use. Hence, don't build in drivers and FS
-that are not required, e.g.:
-  NET, DISK_AHCI, DISK_INTF_PLATFORM_IDE, DISK_ATA, VIDEO, PWM, LED,
-  USB_STORAGE, USB_ULPI, NAND, MTD_UBI, FS_UBIFS, MFD_MC34704, MFD_MC9SDZ60,
-  MFD_STMPE, EEPROM_AT25, EEPROM_AT24, KEYBOARD_GPIO, PARTITION_DISK_EFI
+that are not required, e.g.
+``NET, DISK_AHCI, DISK_INTF_PLATFORM_IDE, DISK_ATA, VIDEO, PWM, LED,
+USB_STORAGE, USB_ULPI, NAND, MTD_UBI, FS_UBIFS, MFD_MC34704, MFD_MC9SDZ60,
+MFD_STMPE, EEPROM_AT25, EEPROM_AT24, KEYBOARD_GPIO, PARTITION_DISK_EFI``
+
 Also unselect support for other boards to get rid of their dependencies.
-Further select IMAGE_COMPRESSION_XZKERN
+Further select ``IMAGE_COMPRESSION_XZKERN``.
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
