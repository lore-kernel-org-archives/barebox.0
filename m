Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bOHBk-0003Va-Ql
 for barebox@lists.infradead.org; Sat, 16 Jul 2016 04:26:55 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 16 Jul 2016 07:26:21 +0300
Message-Id: <1468643181-10784-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1468643181-10784-1-git-send-email-shc_work@mail.ru>
References: <1468643181-10784-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] ARM: clps711x: clep7212: Register board env during runtime
To: barebox@lists.infradead.org

Register the board specific environment during runtime using
defaultenv_append_directory(). Also this patch updates default config.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/clep7212/Makefile                  |  1 +
 arch/arm/boards/clep7212/clep7212.c                |  3 +++
 .../clep7212/{env => defaultenv-clep7212}/boot/nor |  2 +-
 .../{env => defaultenv-clep7212}/init/mtdparts-nor |  0
 .../nv/autoboot_timeout                            |  0
 .../clep7212/defaultenv-clep7212/nv/boot.default   |  1 +
 .../defaultenv-clep7212/nv/linux.bootargs.console  |  1 +
 .../defaultenv-clep7212/nv/linux.bootargs.debug    |  1 +
 arch/arm/boards/clep7212/env/init/bootsource       |  9 -------
 .../boards/clep7212/env/nv/linux.bootargs.console  |  1 -
 arch/arm/configs/clps711x_defconfig                | 29 +++++++++++-----------
 arch/arm/mach-clps711x/Kconfig                     |  1 +
 12 files changed, 23 insertions(+), 26 deletions(-)
 rename arch/arm/boards/clep7212/{env => defaultenv-clep7212}/boot/nor (63%)
 rename arch/arm/boards/clep7212/{env => defaultenv-clep7212}/init/mtdparts-nor (100%)
 rename arch/arm/boards/clep7212/{env => defaultenv-clep7212}/nv/autoboot_timeout (100%)
 create mode 100644 arch/arm/boards/clep7212/defaultenv-clep7212/nv/boot.default
 create mode 100644 arch/arm/boards/clep7212/defaultenv-clep7212/nv/linux.bootargs.console
 create mode 100644 arch/arm/boards/clep7212/defaultenv-clep7212/nv/linux.bootargs.debug
 delete mode 100644 arch/arm/boards/clep7212/env/init/bootsource
 delete mode 100644 arch/arm/boards/clep7212/env/nv/linux.bootargs.console

diff --git a/arch/arm/boards/clep7212/Makefile b/arch/arm/boards/clep7212/Makefile
index 4b0304f..a5001df 100644
--- a/arch/arm/boards/clep7212/Makefile
+++ b/arch/arm/boards/clep7212/Makefile
@@ -1,2 +1,3 @@
 obj-y += clep7212.o
 lwl-y += lowlevel.o
+bbenv-y += defaultenv-clep7212
diff --git a/arch/arm/boards/clep7212/clep7212.c b/arch/arm/boards/clep7212/clep7212.c
index dfdd0d3..584ecdc 100644
--- a/arch/arm/boards/clep7212/clep7212.c
+++ b/arch/arm/boards/clep7212/clep7212.c
@@ -9,6 +9,7 @@
 
 #include <common.h>
 #include <driver.h>
+#include <envfs.h>
 #include <init.h>
 #include <partition.h>
 #include <io.h>
@@ -44,6 +45,8 @@ static int clps711x_devices_init(void)
 	armlinux_set_architecture(MACH_TYPE_CLEP7212);
 	armlinux_set_serial(((u64)serial_h << 32) | serial_l);
 
+	defaultenv_append_directory(defaultenv_clep7212);
+
 	return 0;
 }
 device_initcall(clps711x_devices_init);
diff --git a/arch/arm/boards/clep7212/env/boot/nor b/arch/arm/boards/clep7212/defaultenv-clep7212/boot/nor
similarity index 63%
rename from arch/arm/boards/clep7212/env/boot/nor
rename to arch/arm/boards/clep7212/defaultenv-clep7212/boot/nor
index d53f07e..f584307 100644
--- a/arch/arm/boards/clep7212/env/boot/nor
+++ b/arch/arm/boards/clep7212/defaultenv-clep7212/boot/nor
@@ -1,4 +1,4 @@
 #!/bin/sh
 
-global.bootm.image="/dev/kernel"
+global.bootm.image="/dev/nor0.kernel"
 global.linux.bootargs.dyn.root="root=/dev/mtdblock3 ro"
diff --git a/arch/arm/boards/clep7212/env/init/mtdparts-nor b/arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor
similarity index 100%
rename from arch/arm/boards/clep7212/env/init/mtdparts-nor
rename to arch/arm/boards/clep7212/defaultenv-clep7212/init/mtdparts-nor
diff --git a/arch/arm/boards/clep7212/env/nv/autoboot_timeout b/arch/arm/boards/clep7212/defaultenv-clep7212/nv/autoboot_timeout
similarity index 100%
rename from arch/arm/boards/clep7212/env/nv/autoboot_timeout
rename to arch/arm/boards/clep7212/defaultenv-clep7212/nv/autoboot_timeout
diff --git a/arch/arm/boards/clep7212/defaultenv-clep7212/nv/boot.default b/arch/arm/boards/clep7212/defaultenv-clep7212/nv/boot.default
new file mode 100644
index 0000000..aa244dc
--- /dev/null
+++ b/arch/arm/boards/clep7212/defaultenv-clep7212/nv/boot.default
@@ -0,0 +1 @@
+nor
diff --git a/arch/arm/boards/clep7212/defaultenv-clep7212/nv/linux.bootargs.console b/arch/arm/boards/clep7212/defaultenv-clep7212/nv/linux.bootargs.console
new file mode 100644
index 0000000..0b9dc01
--- /dev/null
+++ b/arch/arm/boards/clep7212/defaultenv-clep7212/nv/linux.bootargs.console
@@ -0,0 +1 @@
+console=ttyCL0,57600n8
diff --git a/arch/arm/boards/clep7212/defaultenv-clep7212/nv/linux.bootargs.debug b/arch/arm/boards/clep7212/defaultenv-clep7212/nv/linux.bootargs.debug
new file mode 100644
index 0000000..7106a19
--- /dev/null
+++ b/arch/arm/boards/clep7212/defaultenv-clep7212/nv/linux.bootargs.debug
@@ -0,0 +1 @@
+earlyprintk
diff --git a/arch/arm/boards/clep7212/env/init/bootsource b/arch/arm/boards/clep7212/env/init/bootsource
deleted file mode 100644
index 2f09c0c..0000000
--- a/arch/arm/boards/clep7212/env/init/bootsource
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-
-if [ -n "$nv.boot.default" ]; then
-	exit
-fi
-
-if [ -e /dev/nor0 ]; then
-	global.boot.default=nor
-fi
diff --git a/arch/arm/boards/clep7212/env/nv/linux.bootargs.console b/arch/arm/boards/clep7212/env/nv/linux.bootargs.console
deleted file mode 100644
index 77ea2ec..0000000
--- a/arch/arm/boards/clep7212/env/nv/linux.bootargs.console
+++ /dev/null
@@ -1 +0,0 @@
-earlyprintk console=ttyCL0,57600n8
diff --git a/arch/arm/configs/clps711x_defconfig b/arch/arm/configs/clps711x_defconfig
index 9312a25..d9eab56 100644
--- a/arch/arm/configs/clps711x_defconfig
+++ b/arch/arm/configs/clps711x_defconfig
@@ -1,5 +1,4 @@
 CONFIG_ARCH_CLPS711X=y
-CONFIG_CLPS711X_CPU_PLL_MULT=50
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 # CONFIG_MEMINFO is not set
@@ -9,31 +8,31 @@ CONFIG_EXPERIMENTAL=y
 CONFIG_BAUDRATE=57600
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/clep7212/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_FLASH=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_CMD_BOOTZ=y
+CONFIG_DEFAULT_COMPRESSION_LZO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_CMD_IOMEM=y
 # CONFIG_CMD_BOOTU is not set
+CONFIG_CMD_BOOTZ=y
 CONFIG_CMD_RESET=y
-CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
-CONFIG_MTD=y
 CONFIG_DISK=y
 CONFIG_DISK_WRITE=y
 CONFIG_DISK_INTF_PLATFORM_IDE=y
diff --git a/arch/arm/mach-clps711x/Kconfig b/arch/arm/mach-clps711x/Kconfig
index 0853ce2..92dd51a 100644
--- a/arch/arm/mach-clps711x/Kconfig
+++ b/arch/arm/mach-clps711x/Kconfig
@@ -5,6 +5,7 @@ choice
 
 config MACH_CLEP7212
 	bool "Cirrus Logic CLEP7212"
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	help
 	  Boards based on the Cirrus Logic 7212/7312 CPU.
 
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
