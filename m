Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo6-p00-ob.rzone.de ([2a01:238:20a:202:5300::1])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UdLez-00073D-Su
 for barebox@lists.infradead.org; Fri, 17 May 2013 14:29:32 +0000
From: Gregory Hermant <gregory.hermant@calao-systems.com>
Date: Fri, 17 May 2013 16:28:53 +0200
Message-Id: <1368800933-8019-1-git-send-email-gregory.hermant@calao-systems.com>
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
Subject: [PATCH] at91: add Calao QIL-A9G20
To: barebox@lists.infradead.org


Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
---
 arch/arm/Makefile                                  |    3 +-
 arch/arm/boards/{qil-a9260 => qil-a926x}/Makefile  |    0
 arch/arm/boards/{qil-a9260 => qil-a926x}/config.h  |    0
 .../{qil-a9260 => qil-a926x}/env/bin/init_board    |    0
 .../arm/boards/{qil-a9260 => qil-a926x}/env/config |    3 +-
 arch/arm/boards/{qil-a9260 => qil-a926x}/init.c    |   35 ++++++++-
 .../boards/{qil-a9260 => qil-a926x}/qil-a9260.dox  |    0
 arch/arm/configs/qil_a9260_128mib_defconfig        |   14 ++--
 arch/arm/configs/qil_a9260_defconfig               |   14 ++--
 arch/arm/configs/qil_a9g20_128mib_defconfig        |   77 ++++++++++++++++++++
 arch/arm/configs/qil_a9g20_defconfig               |   76 +++++++++++++++++++
 arch/arm/mach-at91/Kconfig                         |   12 ++-
 12 files changed, 211 insertions(+), 23 deletions(-)
 rename arch/arm/boards/{qil-a9260 => qil-a926x}/Makefile (100%)
 rename arch/arm/boards/{qil-a9260 => qil-a926x}/config.h (100%)
 rename arch/arm/boards/{qil-a9260 => qil-a926x}/env/bin/init_board (100%)
 rename arch/arm/boards/{qil-a9260 => qil-a926x}/env/config (85%)
 rename arch/arm/boards/{qil-a9260 => qil-a926x}/init.c (85%)
 rename arch/arm/boards/{qil-a9260 => qil-a926x}/qil-a9260.dox (100%)
 create mode 100644 arch/arm/configs/qil_a9g20_128mib_defconfig
 create mode 100644 arch/arm/configs/qil_a9g20_defconfig

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d506b12..641d989 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -142,7 +142,8 @@ board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
 board-$(CONFIG_MACH_MINI2440)			:= friendlyarm-mini2440
 board-$(CONFIG_MACH_MINI6410)			:= friendlyarm-mini6410
 board-$(CONFIG_MACH_TINY6410)			:= friendlyarm-tiny6410
-board-$(CONFIG_MACH_QIL_A9260)			:= qil-a9260
+board-$(CONFIG_MACH_QIL_A9260)			:= qil-a926x
+board-$(CONFIG_MACH_QIL_A9G20)			:= qil-a926x
 board-$(CONFIG_MACH_TNY_A9260)			:= tny-a926x
 board-$(CONFIG_MACH_TNY_A9263)			:= tny-a926x
 board-$(CONFIG_MACH_TNY_A9G20)			:= tny-a926x
diff --git a/arch/arm/boards/qil-a9260/Makefile b/arch/arm/boards/qil-a926x/Makefile
similarity index 100%
rename from arch/arm/boards/qil-a9260/Makefile
rename to arch/arm/boards/qil-a926x/Makefile
diff --git a/arch/arm/boards/qil-a9260/config.h b/arch/arm/boards/qil-a926x/config.h
similarity index 100%
rename from arch/arm/boards/qil-a9260/config.h
rename to arch/arm/boards/qil-a926x/config.h
diff --git a/arch/arm/boards/qil-a9260/env/bin/init_board b/arch/arm/boards/qil-a926x/env/bin/init_board
similarity index 100%
rename from arch/arm/boards/qil-a9260/env/bin/init_board
rename to arch/arm/boards/qil-a926x/env/bin/init_board
diff --git a/arch/arm/boards/qil-a9260/env/config b/arch/arm/boards/qil-a926x/env/config
similarity index 85%
rename from arch/arm/boards/qil-a9260/env/config
rename to arch/arm/boards/qil-a926x/env/config
index 9971106..793a73f 100644
--- a/arch/arm/boards/qil-a9260/env/config
+++ b/arch/arm/boards/qil-a926x/env/config
@@ -3,7 +3,8 @@
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
 ip=dhcp-barebox
-global.dhcp.vendor_id=barebox-qil-a9260
+[ x$armlinux_architecture = x1711 ] && global.dhcp.vendor_id=barebox-qil-a9260
+[ x$armlinux_architecture = x1844 ] && global.dhcp.vendor_id=barebox-qil-a9g20
 
 # or set your networking parameters here
 #eth0.ipaddr=a.b.c.d
diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a926x/init.c
similarity index 85%
rename from arch/arm/boards/qil-a9260/init.c
rename to arch/arm/boards/qil-a926x/init.c
index 56b51c2..504abc6 100644
--- a/arch/arm/boards/qil-a9260/init.c
+++ b/arch/arm/boards/qil-a926x/init.c
@@ -28,6 +28,14 @@
 #include <mach/at91_pmc.h>
 #include <mach/at91_rstc.h>
 
+static void qil_a9260_set_board_type(void)
+{
+	if (machine_is_qil_a9g20())
+		armlinux_set_architecture(MACH_TYPE_QIL_A9G20);
+	else
+		armlinux_set_architecture(MACH_TYPE_QIL_A9260);
+}
+
 static struct atmel_nand_data nand_pdata = {
 	.ale		= 21,
 	.cle		= 22,
@@ -37,7 +45,7 @@ static struct atmel_nand_data nand_pdata = {
 	.on_flash_bbt	= 1,
 };
 
-static struct sam9_smc_config nand_smc_config = {
+static struct sam9_smc_config qil_a9260_nand_smc_config = {
 	.ncs_read_setup		= 0,
 	.nrd_setup		= 1,
 	.ncs_write_setup	= 0,
@@ -55,10 +63,31 @@ static struct sam9_smc_config nand_smc_config = {
 	.tdf_cycles		= 2,
 };
 
+static struct sam9_smc_config qil_a9g20_nand_smc_config = {
+	.ncs_read_setup		= 0,
+	.nrd_setup		= 2,
+	.ncs_write_setup	= 0,
+	.nwe_setup		= 2,
+
+	.ncs_read_pulse		= 4,
+	.nrd_pulse		= 4,
+	.ncs_write_pulse	= 4,
+	.nwe_pulse		= 4,
+
+	.read_cycle		= 7,
+	.write_cycle		= 7,
+
+	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE | AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
+	.tdf_cycles		= 3,
+};
+
 static void qil_a9260_add_device_nand(void)
 {
 	/* configure chip-select 3 (NAND) */
-	sam9_smc_configure(0, 3, &nand_smc_config);
+	if (machine_is_qil_a9g20())
+		sam9_smc_configure(0, 3, &qil_a9g20_nand_smc_config);
+	else
+		sam9_smc_configure(0, 3, &qil_a9260_nand_smc_config);
 
 	at91_add_device_nand(&nand_pdata);
 }
@@ -174,7 +203,7 @@ static int qil_a9260_devices_init(void)
 	qil_a9260_add_device_mb();
 
 	armlinux_set_bootparams((void *)(AT91_CHIPSELECT_1 + 0x100));
-	armlinux_set_architecture(MACH_TYPE_QIL_A9260);
+	qil_a9260_set_board_type();
 
 	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
 	dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
diff --git a/arch/arm/boards/qil-a9260/qil-a9260.dox b/arch/arm/boards/qil-a926x/qil-a9260.dox
similarity index 100%
rename from arch/arm/boards/qil-a9260/qil-a9260.dox
rename to arch/arm/boards/qil-a926x/qil-a9260.dox
diff --git a/arch/arm/configs/qil_a9260_128mib_defconfig b/arch/arm/configs/qil_a9260_128mib_defconfig
index 8cd28f4..a19e083 100644
--- a/arch/arm/configs/qil_a9260_128mib_defconfig
+++ b/arch/arm/configs/qil_a9260_128mib_defconfig
@@ -2,12 +2,12 @@ CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_QIL_A9260=y
 CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_CALAO_MB_QIL_A9260=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
@@ -17,10 +17,9 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a9260/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -29,11 +28,10 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
@@ -41,11 +39,12 @@ CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
@@ -55,8 +54,6 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -77,3 +74,4 @@ CONFIG_MCI_ATMEL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/qil_a9260_defconfig b/arch/arm/configs/qil_a9260_defconfig
index 13460e8..67ca804 100644
--- a/arch/arm/configs/qil_a9260_defconfig
+++ b/arch/arm/configs/qil_a9260_defconfig
@@ -1,12 +1,12 @@
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_QIL_A9260=y
 CONFIG_CALAO_MB_QIL_A9260=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
@@ -16,10 +16,9 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-# CONFIG_CONSOLE_ACTIVATE_FIRST is not set
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a9260/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
@@ -28,11 +27,10 @@ CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
@@ -40,11 +38,12 @@ CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_UIMAGE=y
-# CONFIG_CMD_BOOTZ is not set
 # CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
@@ -54,8 +53,6 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_MACB=y
@@ -76,3 +73,4 @@ CONFIG_MCI_ATMEL=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/qil_a9g20_128mib_defconfig b/arch/arm/configs/qil_a9g20_128mib_defconfig
new file mode 100644
index 0000000..2c4a160
--- /dev/null
+++ b/arch/arm/configs/qil_a9g20_128mib_defconfig
@@ -0,0 +1,77 @@
+CONFIG_ARCH_AT91SAM9G20=y
+CONFIG_MACH_QIL_A9G20=y
+CONFIG_AT91_HAVE_SRAM_128M=y
+CONFIG_CALAO_MB_QIL_A9260=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_PROMPT="USB-9G20:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a926x/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/qil_a9g20_defconfig b/arch/arm/configs/qil_a9g20_defconfig
new file mode 100644
index 0000000..5b2e9ef
--- /dev/null
+++ b/arch/arm/configs/qil_a9g20_defconfig
@@ -0,0 +1,76 @@
+CONFIG_ARCH_AT91SAM9G20=y
+CONFIG_MACH_QIL_A9G20=y
+CONFIG_CALAO_MB_QIL_A9260=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
+CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_MMU=y
+CONFIG_EXPERIMENTAL=y
+CONFIG_PROMPT="USB-9G20:"
+CONFIG_LONGHELP=y
+CONFIG_GLOB=y
+CONFIG_PROMPT_HUSH_PS2="y"
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/qil-a926x/env"
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_RESET=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_MTEST=y
+CONFIG_CMD_MTEST_ALTERNATIVE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_PING=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_DRIVER_NET_MACB=y
+# CONFIG_SPI is not set
+CONFIG_MTD=y
+# CONFIG_MTD_OOB_DEVICE is not set
+CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
+CONFIG_NAND_ATMEL=y
+CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DFU=y
+CONFIG_USB_GADGET_SERIAL=y
+CONFIG_MCI=y
+CONFIG_MCI_ATMEL=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b8528d0..8116b62 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -59,6 +59,7 @@ config BOARDINFO
 	default "Calao TNY-A9263" if MACH_TNY_A9263
 	default "Calao TNY-A9G20" if MACH_TNY_A9G20
 	default "Calao QIL-A9260" if MACH_QIL_A9260
+	default "Calao QIL-A9G20" if MACH_QIL_A9G20
 	default "Somfy Animeo IP" if MACH_ANIMEO_IP
 	default "Telit EVK-PRO3" if MACH_GE863
 
@@ -363,6 +364,13 @@ config MACH_DSS11
 	  Select this if you are using aizo dSS11
 	  that embeds only one SD/MMC slot.
 
+config MACH_QIL_A9G20
+	bool "CALAO QIL-A9G20 board"
+	help
+	  Select this if you are using a Calao Systems QIL-A9G20 Board.
+	  <http://www.calao-systems.com>
+
+
 endchoice
 
 endif
@@ -513,7 +521,7 @@ config AT91_HAVE_2MMC
 
 config AT91_HAVE_SRAM_128M
 	bool "Have 128 of ram"
-	depends on MACH_USB_A9G20 || MACH_USB_A9263 || MACH_QIL_A9260
+	depends on MACH_USB_A9G20 || MACH_USB_A9263 || MACH_QIL_A9260 || MACH_QIL_A9G20
 	help
 	  Select this if you board have 128 MiB of Ram (as USB_A9G20 C11)
 
@@ -543,7 +551,7 @@ config CALAO_MOB_TNY_MD2
 
 config CALAO_MB_QIL_A9260
 	bool "MB-QIL A9260 Motherboard Board support"
-	depends on MACH_QIL_A9260
+	depends on MACH_QIL_A9260 || MACH_QIL_A9G20
 
 if COMMAND_SUPPORT
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
