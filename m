Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from we-in-x0229.1e100.net ([2a00:1450:400c:c03::229]
 helo=mail-we0-x229.google.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4aFo-0008Jh-5P
 for barebox@lists.infradead.org; Sun, 10 Feb 2013 16:59:49 +0000
Received: by mail-we0-f169.google.com with SMTP id t11so4518067wey.28
 for <barebox@lists.infradead.org>; Sun, 10 Feb 2013 08:59:45 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Feb 2013 17:58:57 +0100
Message-Id: <1360515537-1703-3-git-send-email-vicencb@gmail.com>
In-Reply-To: <1360515537-1703-1-git-send-email-vicencb@gmail.com>
References: <1360515537-1703-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 2/2] ArchosG9: boot linux kernel with DT
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

Provide a device tree to the OS.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/archosg9/env/config       | 1 +
 arch/arm/configs/archosg9_defconfig       | 4 ++++
 arch/arm/configs/archosg9_xload_defconfig | 1 +
 3 files changed, 6 insertions(+)

diff --git a/arch/arm/boards/archosg9/env/config b/arch/arm/boards/archosg9/env/config
index 8f3edb0..60467f6 100644
--- a/arch/arm/boards/archosg9/env/config
+++ b/arch/arm/boards/archosg9/env/config
@@ -1,3 +1,4 @@
 global.bootm.image="${TARGET_ROOT}/boot/zImage"
 global.bootm.initrd="${TARGET_ROOT}/boot/initrd"
+global.bootm.oftree="${TARGET_ROOT}/boot/omap4-archosg9.dtb"
 global.linux.bootargs.base="console=ttyO0,115200n8 root=/dev/ram0"
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index 9a051da..337a7b7 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -45,6 +45,9 @@ CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_BOOTM_AIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_MAGICVAR=y
@@ -68,3 +71,4 @@ CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_FS_OMAP4_USBBOOT=y
+CONFIG_OFDEVICE=y
diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
index 83743fa..b25778a 100644
--- a/arch/arm/configs/archosg9_xload_defconfig
+++ b/arch/arm/configs/archosg9_xload_defconfig
@@ -21,4 +21,5 @@ CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
 # CONFIG_SPI is not set
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
 CONFIG_FS_OMAP4_USBBOOT=y
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
