Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUjxY-0006Y6-QD
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 05:13:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Oct 2020 07:13:18 +0200
Message-Id: <20201020051318.17233-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201020051318.17233-1-a.fatoum@pengutronix.de>
References: <20201020051318.17233-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] x86: configs: efi: enable some more useful options
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Enable some more options to make the defconfig more widely applicable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/configs/efi_defconfig | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index 83794d7a0702..761ffbe261ba 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -15,14 +15,19 @@ CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
 CONFIG_DEBUG_LL=y
+CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_LOADENV=y
@@ -56,6 +61,7 @@ CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_2048=y
 CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_DIFF=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
@@ -64,12 +70,24 @@ CONFIG_CMD_STATE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_EFI_STDIO=y
 CONFIG_DRIVER_NET_EFI_SNP=y
 # CONFIG_SPI is not set
 CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_EFI_GOP=y
+CONFIG_FINTEK_SUPERIO=y
+CONFIG_SMSC_SUPERIO=y
+CONFIG_STATE_DRV=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_EFI=y
+CONFIG_F71808E_WDT=y
+# CONFIG_PINCTRL is not set
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
