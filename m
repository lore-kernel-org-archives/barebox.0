Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tin1p-0008IJ-M4
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 14:11:18 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Wed, 12 Dec 2012 15:10:54 +0100
Message-Id: <1355321456-6334-2-git-send-email-maxime.ripard@free-electrons.com>
In-Reply-To: <1355321456-6334-1-git-send-email-maxime.ripard@free-electrons.com>
References: <1355321456-6334-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH 1/3] ARM: cfa10036: Add the AT24HC02 I2C EEPROM
To: barebox@lists.infradead.org
Cc: Brian Lilly <brian@crystalfontz.com>

This EEPROM is found on the expansion boards available for the 10036
module. Since we won't need to do anything fancy except reading/writing
from it, use bitbanging to communicate with it.

This EEPROM will hold mostly the board_id so that we can determine if
there is an expansion board plugged in and what expansion board it is.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |   23 ++++++++++++++++++++++
 arch/arm/configs/cfa10036_defconfig              |    3 ++-
 arch/arm/mach-mxs/Kconfig                        |    3 +++
 3 files changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 522d2d7..df0ead9 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -26,6 +26,10 @@
 #include <net.h>
 #include <sizes.h>
 
+#include <i2c/i2c.h>
+#include <i2c/i2c-gpio.h>
+#include <i2c/at24.h>
+
 #include <mach/clock.h>
 #include <mach/imx-regs.h>
 #include <mach/iomux-imx28.h>
@@ -58,6 +62,10 @@ static const uint32_t cfa10036_pads[] = {
 	SSP0_SCK | VE_3_3V | BITKEEPER(0),
 	/* MCI slot power control 1 = off */
 	PWM3_GPIO | VE_3_3V | GPIO_OUT | GPIO_VALUE(0),
+
+	/* i2c0 */
+	AUART0_TX_GPIO | VE_3_3V | PULLUP(1),
+	AUART0_RX_GPIO | VE_3_3V | PULLUP(1),
 };
 
 static struct mxs_mci_platform_data mci_pdata = {
@@ -67,6 +75,18 @@ static struct mxs_mci_platform_data mci_pdata = {
 	.f_max = 25000000,
 };
 
+static struct i2c_board_info cfa10036_i2c_devices[] = {
+	{
+		I2C_BOARD_INFO("24c02", 0x50)
+	},
+};
+
+static struct i2c_gpio_platform_data i2c_gpio_pdata = {
+	.sda_pin		= 3 * 32 + 1,
+	.scl_pin		= 3 * 32 + 0,
+	.udelay			= 5,		/* ~100 kHz */
+};
+
 static int cfa10036_mem_init(void)
 {
 	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
@@ -97,6 +117,9 @@ static int cfa10036_devices_init(void)
 	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, SZ_8K,
 			   IORESOURCE_MEM, NULL);
 
+	i2c_register_board_info(0, cfa10036_i2c_devices, ARRAY_SIZE(cfa10036_i2c_devices));
+	add_generic_device_res("i2c-gpio", 0, NULL, 0, &i2c_gpio_pdata);
+
 	return 0;
 }
 device_initcall(cfa10036_devices_init);
diff --git a/arch/arm/configs/cfa10036_defconfig b/arch/arm/configs/cfa10036_defconfig
index 67a0e8f..c55d50d 100644
--- a/arch/arm/configs/cfa10036_defconfig
+++ b/arch/arm/configs/cfa10036_defconfig
@@ -11,7 +11,7 @@ CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/crystalfontz-cfa10036/env"
 CONFIG_DEBUG_INFO=y
@@ -35,6 +35,7 @@ CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 # CONFIG_SPI is not set
+CONFIG_I2C=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MXS=y
diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index ff295f1..4e7e750 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -77,6 +77,9 @@ config MACH_MX28EVK
 config MACH_CFA10036
 	bool "cfa-10036"
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	select MXS_OCOTP
+	select I2C_GPIO
+	select EEPROM_AT24
 	help
 	  Say Y here if you are using the Crystalfontz CFA-10036 module
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
