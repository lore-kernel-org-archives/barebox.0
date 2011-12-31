Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0qP-0000OA-RF
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:27:45 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 21EAADC37B6
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:28:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 16:21:38 +0100
Message-Id: <1325344898-7076-12-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111231151655.GB945@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
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
Subject: [PATCH 12/12] usb-a926x: update defconfig
To: barebox@lists.infradead.org

enable led, triggers, uimage, oftree, dfu, etc...

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/usb_a9260_defconfig        |   20 ++++++++++++++++----
 arch/arm/configs/usb_a9263_128mib_defconfig |   20 ++++++++++++++++----
 arch/arm/configs/usb_a9263_defconfig        |   20 ++++++++++++++++----
 arch/arm/configs/usb_a9g20_128mib_defconfig |   20 ++++++++++++++++----
 arch/arm/configs/usb_a9g20_defconfig        |   20 ++++++++++++++++----
 5 files changed, 80 insertions(+), 20 deletions(-)

diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index adcb603..6c6eac2 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -1,9 +1,8 @@
 CONFIG_ARCH_AT91SAM9260=y
 CONFIG_MACH_USB_A9260=y
 CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_KALLSYMS=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -34,14 +33,19 @@ CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -54,5 +58,13 @@ CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index 8d5342e..0b0ad80 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -1,10 +1,9 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
 CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_KALLSYMS=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -35,14 +34,19 @@ CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -55,5 +59,13 @@ CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 9f53431..168a5d1 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -1,9 +1,8 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
 CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_KALLSYMS=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -34,14 +33,19 @@ CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -54,5 +58,13 @@ CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index 3c0e6f7..a02002f 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -1,10 +1,9 @@
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_USB_A9G20=y
 CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_KALLSYMS=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -35,14 +34,19 @@ CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -55,5 +59,13 @@ CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_ZLIB=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index 2bcb8eb..e4dd424 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -1,9 +1,8 @@
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_USB_A9G20=y
 CONFIG_AEABI=y
+# CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_KALLSYMS=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -34,14 +33,19 @@ CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_MTEST=y
 CONFIG_CMD_MTEST_ALTERNATIVE=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_INITRD=y
+CONFIG_CMD_UIMAGE=y
+# CONFIG_CMD_BOOTZ is not set
+# CONFIG_CMD_BOOTU is not set
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_GPIO=y
+CONFIG_CMD_LED=y
+CONFIG_CMD_LED_TRIGGER=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
@@ -54,5 +58,13 @@ CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_NAND=y
+# CONFIG_NAND_ECC_HW is not set
+# CONFIG_NAND_ECC_HW_SYNDROME is not set
+# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_UBI=y
+CONFIG_USB_GADGET=y
+CONFIG_LED=y
+CONFIG_LED_GPIO=y
+CONFIG_LED_TRIGGERS=y
+CONFIG_ZLIB=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
