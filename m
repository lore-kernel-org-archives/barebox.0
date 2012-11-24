Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tc6MK-0006EP-Rf
 for barebox@lists.infradead.org; Sat, 24 Nov 2012 03:24:49 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so801579wgb.18
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 19:24:47 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sat, 24 Nov 2012 04:24:24 +0100
Message-Id: <1353727464-15175-3-git-send-email-vicencb@gmail.com>
In-Reply-To: <1353727464-15175-1-git-send-email-vicencb@gmail.com>
References: <1353727464-15175-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] archosg9: improve configuration
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>


Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/env/config       | 4 +++-
 arch/arm/boards/archosg9/env/init/usbboot | 9 +++++----
 arch/arm/configs/archosg9_defconfig       | 2 +-
 3 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/archosg9/env/config b/arch/arm/boards/archosg9/env/config
index 38fc51c..8f3edb0 100644
--- a/arch/arm/boards/archosg9/env/config
+++ b/arch/arm/boards/archosg9/env/config
@@ -1 +1,3 @@
-global.linux.bootargs.base="earlyprintk=serial console=ttyO1,1000000n8 keep_bootcon pm_disable initcall_debug ignore_loglevel no_console_suspend=1 root=/dev/ram0 init=/linuxrc"
+global.bootm.image="${TARGET_ROOT}/boot/zImage"
+global.bootm.initrd="${TARGET_ROOT}/boot/initrd"
+global.linux.bootargs.base="console=ttyO0,115200n8 root=/dev/ram0"
diff --git a/arch/arm/boards/archosg9/env/init/usbboot b/arch/arm/boards/archosg9/env/init/usbboot
index 25536e2..83dd19a 100644
--- a/arch/arm/boards/archosg9/env/init/usbboot
+++ b/arch/arm/boards/archosg9/env/init/usbboot
@@ -1,5 +1,6 @@
-mkdir /usb
-mount -t omap4_usbbootfs omap4_usbboot /usb
+TARGET_ROOT="/mnt/usb"
+mkdir ${TARGET_ROOT}
+mount -t omap4_usbbootfs omap4_usbboot ${TARGET_ROOT}
 . /env/config
-. /usb/boot/config
-bootm -r /usb/boot/initrd /usb/boot/zImage
+. ${TARGET_ROOT}/boot/config
+bootm
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index e598258..2a20dd7 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -55,7 +55,7 @@ CONFIG_CMD_I2C=y
 CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
-CONFIG_BAUDRATE=1000000
+CONFIG_BAUDRATE=115200
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_OMAP=y
-- 
1.8.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
