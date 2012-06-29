Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkWHu-0000c4-LS
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 08:10:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jun 2012 10:10:00 +0200
Message-Id: <1340957401-6242-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340957401-6242-1-git-send-email-s.hauer@pengutronix.de>
References: <1340957401-6242-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM defconfigs: Use TLSF malloc on defconfigs getting too
 big
To: barebox@lists.infradead.org

Several boards are getting bigger than their specified maximum binary
size of 256Kb. Enable the TLSF allocator for them which is smaller
than the original dlmalloc. The changed defconfigs are:

eukrea_cpuimx25_defconfig
eukrea_cpuimx35_defconfig
eukrea_cpuimx51_defconfig
usb_a9260_defconfig
usb_a9263_128mib_defconfig
usb_a9263_defconfig
usb_a9g20_128mib_defconfig
usb_a9g20_defconfig

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/eukrea_cpuimx25_defconfig  |    1 +
 arch/arm/configs/eukrea_cpuimx35_defconfig  |    1 +
 arch/arm/configs/eukrea_cpuimx51_defconfig  |    1 +
 arch/arm/configs/usb_a9260_defconfig        |    1 +
 arch/arm/configs/usb_a9263_128mib_defconfig |    3 ++-
 arch/arm/configs/usb_a9263_defconfig        |    2 +-
 arch/arm/configs/usb_a9g20_128mib_defconfig |    3 ++-
 arch/arm/configs/usb_a9g20_defconfig        |    1 +
 8 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index 94ae670..f7207e8 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -8,6 +8,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0x800000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
index a888765..880beb6 100644
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx35_defconfig
@@ -9,6 +9,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0x800000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
index f6fd7bc..7261796 100644
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx51_defconfig
@@ -7,6 +7,7 @@ CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_SIZE=0x2000000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/usb_a9260_defconfig b/arch/arm/configs/usb_a9260_defconfig
index 85e7878..a9574c4 100644
--- a/arch/arm/configs/usb_a9260_defconfig
+++ b/arch/arm/configs/usb_a9260_defconfig
@@ -6,6 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
diff --git a/arch/arm/configs/usb_a9263_128mib_defconfig b/arch/arm/configs/usb_a9263_128mib_defconfig
index 23bc3d7..d31057f 100644
--- a/arch/arm/configs/usb_a9263_128mib_defconfig
+++ b/arch/arm/configs/usb_a9263_128mib_defconfig
@@ -1,12 +1,13 @@
 CONFIG_ARCH_AT91SAM9263=y
 CONFIG_MACH_USB_A9263=y
+CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9263:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
diff --git a/arch/arm/configs/usb_a9263_defconfig b/arch/arm/configs/usb_a9263_defconfig
index 96ea3e1..b57c300 100644
--- a/arch/arm/configs/usb_a9263_defconfig
+++ b/arch/arm/configs/usb_a9263_defconfig
@@ -6,6 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9263:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
@@ -22,7 +23,6 @@ CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/usb-a926x/env"
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
diff --git a/arch/arm/configs/usb_a9g20_128mib_defconfig b/arch/arm/configs/usb_a9g20_128mib_defconfig
index c25d7de..6b02342 100644
--- a/arch/arm/configs/usb_a9g20_128mib_defconfig
+++ b/arch/arm/configs/usb_a9g20_128mib_defconfig
@@ -1,12 +1,13 @@
 CONFIG_ARCH_AT91SAM9G20=y
 CONFIG_MACH_USB_A9G20=y
+CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
-CONFIG_AT91_HAVE_SRAM_128M=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
diff --git a/arch/arm/configs/usb_a9g20_defconfig b/arch/arm/configs/usb_a9g20_defconfig
index d645adb..30bf380 100644
--- a/arch/arm/configs/usb_a9g20_defconfig
+++ b/arch/arm/configs/usb_a9g20_defconfig
@@ -6,6 +6,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
+CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="USB-9G20:"
 CONFIG_LONGHELP=y
 CONFIG_GLOB=y
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
