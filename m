Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo1.mail-out.ovh.net ([178.32.97.206]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R5d6z-0000XK-2t
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 12:38:18 +0000
Received: from mail179.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id DFC1110141C7
	for <barebox@lists.infradead.org>;
	Mon, 19 Sep 2011 14:39:04 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 19 Sep 2011 14:15:49 +0200
Message-Id: <1316434549-15243-12-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
References: <1316434549-15243-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 12/12] at91: add Calao USB-A9263
To: barebox@lists.infradead.org

http://www.calao-systems.com

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Makefile                           |    1 +
 arch/arm/boards/usb-a926x/init.c            |    7 +++
 arch/arm/configs/usb_a9263_128mib_defconfig |   59 +++++++++++++++++++++++++++
 arch/arm/configs/usb_a9263_defconfig        |   58 ++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                  |    9 ++++-
 5 files changed, 133 insertions(+), 1 deletions(-)
 create mode 100644 arch/arm/configs/usb_a9263_128mib_defconfig
 create mode 100644 arch/arm/configs/usb_a9263_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f226575..d25412d 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -106,6 +106,7 @@ board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
 board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= mini2440
 board-$(CONFIG_MACH_USB_A9260)			:= usb-a926x
+board-$(CONFIG_MACH_USB_A9263)			:= usb-a926x
 board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
 board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
 board-$(CONFIG_MACH_TX25)			:= karo-tx25
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index d09c2da..07d85c1 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -45,6 +45,8 @@ static void usb_a9260_set_board_type(void)
 {
 	if (machine_is_usb_a9g20())
 		armlinux_set_architecture(MACH_TYPE_USB_A9G20);
+	else if (machine_is_usb_a9263())
+		armlinux_set_architecture(MACH_TYPE_USB_A9263);
 	else
 		armlinux_set_architecture(MACH_TYPE_USB_A9260);
 }
@@ -101,6 +103,11 @@ static void usb_a9260_add_device_nand(void)
 	else
 		sam9_smc_configure(3, &usb_a9260_nand_smc_config);
 
+	if (machine_is_usb_a9263()) {
+		nand_pdata.rdy_pin	= AT91_PIN_PA22;
+		nand_pdata.enable_pin	= AT91_PIN_PD15;
+	}
+
 	at91_add_device_nand(&nand_pdata);
 }
 
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
new file mode 100644
index 0000000..8d5342e
--- /dev/null
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -0,0 +1,59 @@
+CONFIG_ARCH_AT91SAM9263=y
+CONFIG_MACH_USB_A9263=y
+CONFIG_AEABI=y
+CONFIG_AT91_HAVE_SRAM_128M=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="USB-9G20:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
new file mode 100644
index 0000000..9f53431
--- /dev/null
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -0,0 +1,58 @@
+CONFIG_ARCH_AT91SAM9263=y
+CONFIG_MACH_USB_A9263=y
+CONFIG_AEABI=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_MMU=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT="USB-9G20:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_NET_TFTP_PUSH=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+CONFIG_NAND=y
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b53b1c4..2ac23b5 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -15,6 +15,7 @@ config BOARDINFO
 	default "Atmel at91sam9m10g45-ek" if MACH_AT91SAM9M10G45EK
 	default "Bucyrus MMC-CPU" if MACH_MMCCPU
 	default "Calao USB-A9260" if MACH_USB_A9260
+	default "Calao USB-A9263" if MACH_USB_A9263
 	default "Calao USB-A9G20" if MACH_USB_A9G20
 	default "Ronetix PM9261" if MACH_PM9261
 	default "Ronetix PM9263" if MACH_PM9263
@@ -203,6 +204,12 @@ config MACH_PM9263
 	help
 	  Say y here if you are using the Ronetix PM9263 Board
 
+config MACH_USB_A9263
+	bool "CALAO USB-A9263"
+	help
+	  Select this if you are using a Calao Systems USB-A9263.
+	  <http://www.calao-systems.com>
+
 endchoice
 
 endif
@@ -250,7 +257,7 @@ config AT91_HAVE_2MMC
 
 config AT91_HAVE_SRAM_128M
 	bool "Have 128 of ram"
-	depends on MACH_USB_A9G20
+	depends on MACH_USB_A9G20 || MACH_USB_A9263
 	help
 	  Select this if you board have 128 MiB of Ram (as USB_A9G20 C11)
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
