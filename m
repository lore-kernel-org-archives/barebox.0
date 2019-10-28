Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCkB-0004V6-I8
 for barebox@lists.infradead.org; Mon, 28 Oct 2019 21:40:10 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 28 Oct 2019 22:39:42 +0100
Message-Id: <20191028213943.32071-6-ahmad@a3f.at>
In-Reply-To: <20191028213943.32071-1-ahmad@a3f.at>
References: <20191028213943.32071-1-ahmad@a3f.at>
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
Subject: [PATCH v2 5/6] ARM: stm32mp: include new drivers in defconfig
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

We've had some new drivers added for the STM32MP since the defconfig was
first added. Include the newcomers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 9f30bb1caa48..292d7751e112 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -4,7 +4,6 @@ CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-CONFIG_ARM_PSCI=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
@@ -23,10 +22,12 @@ CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ACTIVATE_NONE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
-CONFIG_PARTITION=y
+CONFIG_PARTITION_DISK_EFI=y
+# CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE is not set
+# CONFIG_PARTITION_DISK_EFI_GPT_COMPARE is not set
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_INITCALLS=y
+CONFIG_MACHINE_ID=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -82,19 +83,31 @@ CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_DRIVER_SERIAL_STM32=y
 CONFIG_DRIVER_NET_DESIGNWARE=y
 CONFIG_DRIVER_NET_DESIGNWARE_GENERIC=y
+CONFIG_DRIVER_NET_DESIGNWARE_EQOS=y
+CONFIG_DRIVER_NET_DESIGNWARE_STM32=y
 CONFIG_AT803X_PHY=y
 CONFIG_MICREL_PHY=y
+CONFIG_REALTEK_PHY=y
 # CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_STM32=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_STM32_SDMMC2=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_POLLER=y
 CONFIG_STM32_IWDG_WATCHDOG=y
+CONFIG_NVMEM=y
+CONFIG_STM32_BSEC=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
+CONFIG_RESET_STM32=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
@@ -103,3 +116,4 @@ CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
 CONFIG_ZLIB=y
 CONFIG_CRC8=y
+CONFIG_DIGEST_SHA1_ARM=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
