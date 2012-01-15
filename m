Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RmMh9-0007tB-6J
 for barebox@lists.infradead.org; Sun, 15 Jan 2012 09:48:13 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 59CA01004264
 for <barebox@lists.infradead.org>; Sun, 15 Jan 2012 10:40:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Jan 2012 10:38:16 +0100
Message-Id: <1326620296-8076-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1326620296-8076-1-git-send-email-plagnioj@jcrosoft.com>
References: <1326620296-8076-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] calao/boards: specific BAREBOX_MAX_SIZE to 256KiB
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/tny_a9260_defconfig        |    1 +
 arch/arm/configs/tny_a9263_defconfig        |    1 +
 arch/arm/configs/tny_a9g20_defconfig        |    1 +
 arch/arm/configs/usb_a9260_defconfig        |    1 +
 arch/arm/configs/usb_a9263_128mib_defconfig |    1 +
 arch/arm/configs/usb_a9263_defconfig        |    1 +
 arch/arm/configs/usb_a9g20_128mib_defconfig |    1 +
 arch/arm/configs/usb_a9g20_defconfig        |    1 +
 8 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/arch/arm/configs/tny_a9260_defconfig b/arch/arm/configs/tny_a9260_defconfig
index dbd6ffc..57ff7cb 100644
--- a/arch/arm/configs/tny_a9260_defconfig
+++ b/arch/arm/configs/tny_a9260_defconfig
@@ -3,6 +3,7 @@ CONFIG_MACH_TNY_A9260=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BAREBOX_MAX_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="TNY-9260:"
diff --git a/arch/arm/configs/tny_a9263_defconfig b/arch/arm/configs/tny_a9263_defconfig
index e65f4d3..a3ff02e 100644
--- a/arch/arm/configs/tny_a9263_defconfig
+++ b/arch/arm/configs/tny_a9263_defconfig
@@ -3,6 +3,7 @@ CONFIG_MACH_TNY_A9263=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BAREBOX_MAX_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="TNY-9263:"
diff --git a/arch/arm/configs/tny_a9g20_defconfig b/arch/arm/configs/tny_a9g20_defconfig
index df82f65..b81b0cf 100644
--- a/arch/arm/configs/tny_a9g20_defconfig
+++ b/arch/arm/configs/tny_a9g20_defconfig
@@ -3,6 +3,7 @@ CONFIG_MACH_TNY_A9G20=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BAREBOX_MAX_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="TNY-9G20:"
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index 861c62d..db1f69e 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -3,6 +3,7 @@ CONFIG_MACH_USB_A9260=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BAREBOX_MAX_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index 2c54743..62d4f57 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -4,6 +4,7 @@ CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BAREBOX_MAX_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index eb9ad9a..92ff247 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -3,6 +3,7 @@ CONFIG_MACH_USB_A9263=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BAREBOX_MAX_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index cb17d71..6349061 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -4,6 +4,7 @@ CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BAREBOX_MAX_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index edce2cf..f5d67b8 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -3,6 +3,7 @@ CONFIG_MACH_USB_A9G20=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_BAREBOX_MAX_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
