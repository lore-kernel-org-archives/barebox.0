Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPLaW-0004PK-OI
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 08:11:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Oct 2020 10:10:58 +0200
Message-Id: <20201005081058.2572-3-a.fatoum@pengutronix.de>
In-Reply-To: <20201005081058.2572-1-a.fatoum@pengutronix.de>
References: <20201005081058.2572-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: stm32mp: defconfig: enable more useful options
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Improve coverage by enabling more common code. Users will tweak the
defconfig and cut it down anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 870d47739bdf..e9f89e69d969 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -12,7 +12,6 @@ CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_RELOCATABLE=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
@@ -24,10 +23,14 @@ CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
+CONFIG_CONSOLE_RATP=y
+CONFIG_RATP_CMD_I2C=y
+CONFIG_RATP_CMD_GPIO=y
 CONFIG_PARTITION_DISK_EFI=y
 # CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE is not set
 # CONFIG_PARTITION_DISK_EFI_GPT_COMPARE is not set
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
 CONFIG_RESET_SOURCE=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
@@ -83,10 +86,12 @@ CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_DIFF=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_FASTBOOT=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_STM32=y
@@ -111,6 +116,7 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_PWM=y
 CONFIG_LED_GPIO_OF=y
+CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT24=y
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_INPUT_SPECIALKEYS=y
@@ -132,11 +138,17 @@ CONFIG_STM32_REMOTEPROC=y
 CONFIG_RESET_STM32=y
 CONFIG_GENERIC_PHY=y
 CONFIG_PHY_STM32_USBPHYC=y
+CONFIG_SYSCON_REBOOT_MODE=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
+CONFIG_FS_PSTORE=y
+CONFIG_FS_PSTORE_CONSOLE=y
+CONFIG_FS_PSTORE_RAMOOPS=y
+CONFIG_FS_SQUASHFS=y
+CONFIG_FS_RATP=y
 CONFIG_ZLIB=y
 CONFIG_CRC8=y
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
