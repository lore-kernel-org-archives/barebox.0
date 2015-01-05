Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo69.mail-out.ovh.net ([46.105.73.241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y87ex-0006qc-BD
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 13:25:29 +0000
Received: from mail174.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id C947DFF9ED0
 for <barebox@lists.infradead.org>; Mon,  5 Jan 2015 14:25:02 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  5 Jan 2015 14:24:38 +0100
Message-Id: <1420464278-18451-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1420464278-18451-1-git-send-email-plagnioj@jcrosoft.com>
References: <1420464278-18451-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] versatilepb: allow to compile it an arm1176
To: barebox@lists.infradead.org

usefull to use it for testing on qemu

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/Kconfig                               |  1 -
 arch/arm/boards/versatile/env/nv/hostname      |  1 -
 arch/arm/boards/versatile/versatilepb.c        | 15 +++-
 arch/arm/configs/versatilepb_arm1176_defconfig | 99 ++++++++++++++++++++++++++
 arch/arm/mach-versatile/Kconfig                | 17 +++--
 5 files changed, 126 insertions(+), 7 deletions(-)
 delete mode 100644 arch/arm/boards/versatile/env/nv/hostname
 create mode 100644 arch/arm/configs/versatilepb_arm1176_defconfig

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 4aa6afe..f736349 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -188,7 +188,6 @@ config ARCH_S3C64xx
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
-	select CPU_ARM926T
 	select GPIOLIB
 	select HAVE_CLK
 
diff --git a/arch/arm/boards/versatile/env/nv/hostname b/arch/arm/boards/versatile/env/nv/hostname
deleted file mode 100644
index 7cdb629..0000000
--- a/arch/arm/boards/versatile/env/nv/hostname
+++ /dev/null
@@ -1 +0,0 @@
-versatilepb
diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index f854394..419279f 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -22,6 +22,7 @@
 #include <common.h>
 #include <init.h>
 #include <asm/armlinux.h>
+#include <asm/system_info.h>
 #include <generated/mach-types.h>
 #include <mach/init.h>
 #include <mach/platform.h>
@@ -32,7 +33,19 @@
 
 static int vpb_console_init(void)
 {
-	barebox_set_hostname("versatilepb");
+	char *hostname = "versatilepb-unknown";
+	char *model = "ARM Versatile PB";
+
+	if (cpu_is_arm926()) {
+		hostname = "versatilepb-arm926";
+		model = "ARM Versatile PB (arm926)";
+	} else if (cpu_is_arm1176()) {
+		hostname = "versatilepb-arm1176";
+		model = "ARM Versatile PB (arm1176)";
+	}
+
+	barebox_set_hostname(hostname);
+	barebox_set_model(model);
 
 	versatile_register_uart(0);
 	return 0;
diff --git a/arch/arm/configs/versatilepb_arm1176_defconfig b/arch/arm/configs/versatilepb_arm1176_defconfig
new file mode 100644
index 0000000..ca0ab36
--- /dev/null
+++ b/arch/arm/configs/versatilepb_arm1176_defconfig
@@ -0,0 +1,99 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="versatile-pb"
+CONFIG_ARCH_VERSATILE=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
+CONFIG_MACH_VERSATILEPB_ARM1176=y
+CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
+CONFIG_PBL_RELOCATABLE=y
+CONFIG_MALLOC_SIZE=0xa00000
+CONFIG_PROMPT="versatilepb> "
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_DEFAULT_COMPRESSION_GZIP=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/versatile/env"
+CONFIG_CMD_DMESG=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_BOOTM_OFTREE=y
+CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_UBIFORMAT=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_SPLASH=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_SERIAL_USB=y
+CONFIG_SERIAL_USB_FTDI=y
+CONFIG_DRIVER_NET_SMC91111=y
+CONFIG_I2C=y
+CONFIG_I2C_VERSATILE=y
+CONFIG_MTD=y
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_AMD is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
+CONFIG_MTD_UBI=y
+CONFIG_USB_HOST=y
+CONFIG_USB_EHCI=y
+CONFIG_USB_STORAGE=y
+CONFIG_VIDEO=y
+CONFIG_DRIVER_VIDEO_ARMCLCD=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_FRAMEBUFFER_CONSOLE_SELF_REGISTER=y
+CONFIG_FONTS=y
+# CONFIG_FONT_8x8 is not set
+CONFIG_FONT_ACORN_8x8=y
+CONFIG_GPIO_PL061=y
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_DRV_DS1307=y
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
+CONFIG_PNG=y
+CONFIG_SHA1=y
+CONFIG_SHA256=y
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index f902576..755fdc1 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -4,15 +4,24 @@ if ARCH_VERSATILE
 config ARCH_TEXT_BASE
 	default 0x02000000
 
-choice
-	prompt "ARM Board type"
-
 config MACH_VERSATILEPB
-	bool "ARM Versatile/PB (ARM926EJ-S)"
+	bool
+	default y
 	select ARM_AMBA
 	select CLKDEV_LOOKUP
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 
+choice
+	prompt "ARM Board type"
+
+config MACH_VERSATILEPB_926T
+	bool "ARM Versatile/PB (ARM926EJ-S)"
+	select CPU_ARM926T
+
+config MACH_VERSATILEPB_ARM1176
+	bool "ARM Versatile/PB (ARM1176)"
+	select CPU_ARM1176
+
 endchoice
 
 source arch/arm/boards/versatile/Kconfig
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
