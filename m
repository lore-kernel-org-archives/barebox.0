Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0lX-0008P6-En
 for barebox@lists.infradead.org; Fri, 24 Apr 2020 16:01:25 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 Apr 2020 18:01:11 +0200
Message-Id: <20200424160111.10532-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200424160111.10532-1-a.fatoum@pengutronix.de>
References: <20200424160111.10532-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: stm32mp: expand stm32mp_defconfig for new drivers
 and board
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While some support is still missing (USB, LCD), we already have some
prerequisites in place like USB PHY and PWM (for backlight). We also have
gained one new board and some other new drivers since the last time the
defconfig was touched, so enable them all, as well as some possibly useful
commands.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst   |  1 +
 arch/arm/configs/stm32mp_defconfig | 28 +++++++++++++++++++++++-----
 2 files changed, 24 insertions(+), 5 deletions(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index de793ab3c96e..607c59fd0757 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -30,6 +30,7 @@ The resulting images will be placed under ``images/``:
 ::
 
   barebox-stm32mp157c-dk2.img
+  barebox-stm32mp157c-lxa-mc1.img
 
 
 Flashing barebox
diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index f69f9f966a2d..4b902e174113 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_STM32MP=y
 CONFIG_MACH_STM32MP157C_DK2=y
+CONFIG_MACH_LXA_MC1=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
@@ -27,13 +28,14 @@ CONFIG_PARTITION_DISK_EFI=y
 # CONFIG_PARTITION_DISK_EFI_GPT_COMPARE is not set
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_MACHINE_ID=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_MMC=y
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_RESET=y
@@ -73,8 +75,10 @@ CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_WD=y
 CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_DIFF=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
@@ -84,8 +88,6 @@ CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_STM32=y
-CONFIG_DRIVER_NET_DESIGNWARE=y
-CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=y
 CONFIG_DRIVER_NET_DESIGNWARE_EQOS=y
 CONFIG_DRIVER_NET_DESIGNWARE_STM32=y
 CONFIG_AT803X_PHY=y
@@ -94,23 +96,40 @@ CONFIG_REALTEK_PHY=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
 CONFIG_I2C_STM32=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_BACKLIGHT=y
+CONFIG_DRIVER_VIDEO_SIMPLE_PANEL=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
+CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_STM32_SDMMC2=y
 CONFIG_MFD_STPMIC1=y
+CONFIG_MFD_STM32_TIMERS=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
+CONFIG_LED_PWM=y
 CONFIG_LED_GPIO_OF=y
+CONFIG_EEPROM_AT24=y
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_INPUT_SPECIALKEYS=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_POLLER=y
 CONFIG_STM32_IWDG_WATCHDOG=y
 CONFIG_STPMIC1_WATCHDOG=y
-CONFIG_NVMEM=y
+CONFIG_PWM=y
+CONFIG_PWM_STM32=y
+CONFIG_HWRNG=y
+CONFIG_HWRNG_STM32=y
 CONFIG_STM32_BSEC=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
+CONFIG_REGULATOR_STM32_PWR=y
 CONFIG_REGULATOR_STPMIC1=y
+CONFIG_REMOTEPROC=y
+CONFIG_STM32_REMOTEPROC=y
 CONFIG_RESET_STM32=y
+CONFIG_GENERIC_PHY=y
+CONFIG_PHY_STM32_USBPHYC=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
@@ -119,4 +138,3 @@ CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_ZLIB=y
 CONFIG_CRC8=y
-CONFIG_DIGEST_SHA1_ARM=y
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
