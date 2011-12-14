Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rar6P-0000md-67
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 15:50:43 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 54F13FFC074
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2011 16:51:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 14 Dec 2011 16:46:14 +0100
Message-Id: <1323877574-10276-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1323877574-10276-1-git-send-email-plagnioj@jcrosoft.com>
References: <1323877574-10276-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3] at91sam9260/9g20-ek: add usb host, device and mci support
To: barebox@lists.infradead.org

configure BP4 and BP3

use BP4 to start DFU mode at boot

if BP4 is pressed at boot time and maintain at least 5s the dfu is started
otherwise we boot normaly

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/env/bin/init_board |   23 +++++++++++
 arch/arm/boards/at91sam9260ek/init.c             |   46 ++++++++++++++++++++++
 arch/arm/configs/at91sam9260ek_defconfig         |   25 +++++++++++-
 arch/arm/configs/at91sam9g20ek_defconfig         |   25 +++++++++--
 4 files changed, 113 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boards/at91sam9260ek/env/bin/init_board

diff --git a/arch/arm/boards/at91sam9260ek/env/bin/init_board b/arch/arm/boards/at91sam9260ek/env/bin/init_board
new file mode 100644
index 0000000..0da2781
--- /dev/null
+++ b/arch/arm/boards/at91sam9260ek/env/bin/init_board
@@ -0,0 +1,23 @@
+#!/bin/sh
+
+#PIOA_31
+gpio_get_value 63
+if [ $? != 0 ]
+then
+	exit
+fi
+
+echo "BP4 pressed detected wait 5s"
+timeout -s -a 5
+gpio_get_value 63
+if [ $? != 0 ]
+then
+	echo "BP4 released, normal boot"
+	exit
+fi
+
+echo ""
+echo "Start DFU Mode"
+echo ""
+
+dfu /dev/self0(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.root.bb(root)r -P 0x1234 -V 0x4321
diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 5aacc75..dbd6541 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -165,6 +165,40 @@ static void at91sam9260ek_phy_reset(void)
 				     AT91_RSTC_URSTEN);
 }
 
+/*
+ * MCI (SD/MMC)
+ */
+#if defined(CONFIG_MCI_ATMEL)
+static struct atmel_mci_platform_data __initdata ek_mci_data = {
+	.bus_width	= 4,
+};
+
+static void ek_usb_add_device_mci(void)
+{
+	if (machine_is_at91sam9g20ek())
+		ek_mci_data.detect_pin = AT91_PIN_PC9;
+
+	at91_add_device_mci(1, &ek_mci_data);
+}
+#else
+static void ek_usb_add_device_mci(void) {}
+#endif
+
+/*
+ * USB Host port
+ */
+static struct at91_usbh_data __initdata ek_usbh_data = {
+	.ports		= 2,
+};
+
+/*
+ * USB Device port
+ */
+static struct at91_udc_data __initdata ek_udc_data = {
+	.vbus_pin	= AT91_PIN_PC5,
+	.pullup_pin	= -EINVAL,		/* pull-up driven by UDC */
+};
+
 static int at91sam9260ek_mem_init(void)
 {
 	at91_add_device_sdram(64 * 1024 * 1024);
@@ -173,11 +207,23 @@ static int at91sam9260ek_mem_init(void)
 }
 mem_initcall(at91sam9260ek_mem_init);
 
+static void __init ek_add_device_buttons(void)
+{
+	at91_set_gpio_input(AT91_PIN_PA30, 1);	/* btn3 */
+	at91_set_deglitch(AT91_PIN_PA30, 1);
+	at91_set_gpio_input(AT91_PIN_PA31, 1);	/* btn4 */
+	at91_set_deglitch(AT91_PIN_PA31, 1);
+}
+
 static int at91sam9260ek_devices_init(void)
 {
 	ek_add_device_nand();
 	at91sam9260ek_phy_reset();
 	at91_add_device_eth(&macb_pdata);
+	at91_add_device_usbh_ohci(&ek_usbh_data);
+	at91_add_device_udc(&ek_udc_data);
+	ek_usb_add_device_mci();
+	ek_add_device_buttons();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
 	ek_set_board_type();
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index a08607f..3367cee 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -1,10 +1,13 @@
 CONFIG_ARCH_AT91SAM9260=y
+CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PROMPT="9260-EK:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
 CONFIG_CMD_EDIT=y
@@ -14,17 +17,37 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
+CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_ATMEL=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index e6916f7..2492b30 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -1,14 +1,14 @@
 CONFIG_ARCH_AT91SAM9G20=y
-CONFIG_MACH_AT91SAM9G20EK=y
 CONFIG_AT91_HAVE_2MMC=y
+CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PROMPT="9G20-EK:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
 CONFIG_CMD_EDIT=y
@@ -18,6 +18,8 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
@@ -25,15 +27,28 @@ CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
+CONFIG_NET_NETCONSOLE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+CONFIG_MCI_ATMEL=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
