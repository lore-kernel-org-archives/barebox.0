Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zfbgr-0003UK-Fa
 for barebox@lists.infradead.org; Fri, 25 Sep 2015 22:42:06 +0000
Received: by wicge5 with SMTP id ge5so38725960wic.0
 for <barebox@lists.infradead.org>; Fri, 25 Sep 2015 15:41:43 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Fri, 25 Sep 2015 23:41:01 +0100
Message-Id: <1443220863-24355-2-git-send-email-vicencb@gmail.com>
In-Reply-To: <1443220863-24355-1-git-send-email-vicencb@gmail.com>
References: <1443220863-24355-1-git-send-email-vicencb@gmail.com>
In-Reply-To: <20150924115829.62eef721bbcd7eeb0c9852aa@gmail.com>
References: <20150924115829.62eef721bbcd7eeb0c9852aa@gmail.com>
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
Subject: [PATCH 1/3] archosg9: re-generate defconfigs with "make savedefconfig"
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/configs/archosg9_defconfig       | 60 +++++++++++++++----------------
 arch/arm/configs/archosg9_xload_defconfig |  4 ---
 2 files changed, 28 insertions(+), 36 deletions(-)

diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
index 66fbf1a..c870209 100644
--- a/arch/arm/configs/archosg9_defconfig
+++ b/arch/arm/configs/archosg9_defconfig
@@ -1,19 +1,15 @@
 CONFIG_ARCH_OMAP=y
-CONFIG_ARCH_OMAP4=y
 CONFIG_OMAP4_USBBOOT=y
 CONFIG_MACH_ARCHOSG9=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
-CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-# CONFIG_MMU is not set
 CONFIG_TEXT_BASE=0x8f000000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
@@ -22,51 +18,51 @@ CONFIG_MENU=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/archosg9/env"
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_DIRNAME=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_READLINK=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_MEMINFO=y
+CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_FLASH=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_ARM_MMUINFO=y
+CONFIG_CMD_BOOT_ORDER=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_BOOTM_VERBOSE=y
 CONFIG_CMD_BOOTM_INITRD=y
 CONFIG_CMD_BOOTM_OFTREE=y
 CONFIG_CMD_BOOTM_OFTREE_UIMAGE=y
 CONFIG_CMD_BOOTM_AIMAGE=y
-CONFIG_CMD_UIMAGE=y
 # CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_RESET=y
-CONFIG_CMD_BOOT_ORDER=y
 CONFIG_CMD_GO=y
-CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_GPIO=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_LN=y
+CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_GPIO=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_LED=y
 CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_SERIAL_NS16550=y
diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
index 24369b2..9660213 100644
--- a/arch/arm/configs/archosg9_xload_defconfig
+++ b/arch/arm/configs/archosg9_xload_defconfig
@@ -1,13 +1,10 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
-CONFIG_ARCH_OMAP4=y
 # CONFIG_OMAP_GPMC is not set
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_OMAP4_USBBOOT=y
 CONFIG_MACH_ARCHOSG9=y
 CONFIG_THUMB2_BAREBOX=y
-# CONFIG_CMD_ARM_CPUINFO is not set
-# CONFIG_MMU is not set
 # CONFIG_BANNER is not set
 # CONFIG_MEMINFO is not set
 CONFIG_TEXT_BASE=0x40300000
@@ -21,7 +18,6 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
 CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
 # CONFIG_SPI is not set
-# CONFIG_DISK_WRITE is not set
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 # CONFIG_MCI_WRITE is not set
-- 
2.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
