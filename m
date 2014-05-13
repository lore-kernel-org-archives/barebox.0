Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22b.google.com ([2a00:1450:4013:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wk80u-0001jS-Mw
 for barebox@lists.infradead.org; Tue, 13 May 2014 08:24:48 +0000
Received: by mail-ee0-f43.google.com with SMTP id d17so124590eek.16
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 01:24:18 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 13 May 2014 10:28:44 +0200
Message-Id: <1399969739-10355-5-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 04/19] commands: CMD_MEMORY -> COMPILE_MEMORY
To: barebox@lists.infradead.org

* CMD_MEMORY was defined both in common/Kconfig and commands/Kconfig
* that symbol turned not a command on, but just the compilation of
  commands/mem.c, so rename it accordingly

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 .../configs/omap3430_sdp3430_per_uart_defconfig    |    2 +-
 arch/arm/configs/omap3_evm_defconfig               |    2 +-
 arch/arm/configs/phytec-phycard-omap3_defconfig    |    2 +-
 arch/arm/configs/tx51stk5_defconfig                |    2 +-
 commands/Kconfig                                   |   24 +++++++++-----------
 commands/Makefile                                  |    2 +-
 common/Kconfig                                     |    3 ---
 7 files changed, 16 insertions(+), 21 deletions(-)

diff --git a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
index 013d000..445866f 100644
--- a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
+++ b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
@@ -1,7 +1,7 @@
 CONFIG_ARCH_OMAP=y
 # CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-# CONFIG_CMD_MEMORY is not set
+# CONFIG_COMPILE_MEMORY is not set
 CONFIG_TEXT_BASE=0x40200000
 CONFIG_MEMORY_LAYOUT_FIXED=y
 CONFIG_STACK_BASE=0x87BF7F10
diff --git a/arch/arm/configs/omap3_evm_defconfig b/arch/arm/configs/omap3_evm_defconfig
index 3fe2647..90ace31 100644
--- a/arch/arm/configs/omap3_evm_defconfig
+++ b/arch/arm/configs/omap3_evm_defconfig
@@ -2,7 +2,7 @@ CONFIG_ARCH_OMAP=y
 # CONFIG_OMAP3_COPY_CLOCK_SRAM is not set
 CONFIG_MACH_OMAP3EVM=y
 CONFIG_AEABI=y
-# CONFIG_CMD_MEMORY is not set
+# CONFIG_COMPILE_MEMORY is not set
 CONFIG_TEXT_BASE=0x40200000
 CONFIG_MEMORY_LAYOUT_FIXED=y
 CONFIG_STACK_BASE=0x87BF7F10
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
index b901658..d242c19 100644
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ b/arch/arm/configs/phytec-phycard-omap3_defconfig
@@ -18,7 +18,7 @@ CONFIG_DEFCONFIG_LIST="$ARCH_DEFCONFIG"
 CONFIG_GREGORIAN_CALENDER=y
 CONFIG_HAS_KALLSYMS=y
 CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
+CONFIG_COMPILE_MEMORY=y
 CONFIG_ENV_HANDLING=y
 CONFIG_GENERIC_GPIO=y
 CONFIG_BLOCK=y
diff --git a/arch/arm/configs/tx51stk5_defconfig b/arch/arm/configs/tx51stk5_defconfig
index 354e809..b05c01d 100644
--- a/arch/arm/configs/tx51stk5_defconfig
+++ b/arch/arm/configs/tx51stk5_defconfig
@@ -18,7 +18,7 @@ CONFIG_ARM_UNWIND=y
 CONFIG_GREGORIAN_CALENDER=y
 CONFIG_HAS_KALLSYMS=y
 CONFIG_HAS_MODULES=y
-CONFIG_CMD_MEMORY=y
+CONFIG_COMPILE_MEMORY=y
 CONFIG_ENV_HANDLING=y
 CONFIG_GENERIC_GPIO=y
 CONFIG_BLOCK=y
diff --git a/commands/Kconfig b/commands/Kconfig
index fb9a036..d987688 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -12,6 +12,11 @@ config HAS_POWEROFF
 
 if COMMAND_SUPPORT
 
+config COMPILE_MEMORY
+	bool
+	help
+	  Turns on compilation of mem.c
+
 menu "Commands"
 
 
@@ -1196,13 +1201,6 @@ endmenu
 
 menu "Memory"
 
-config CMD_MEMORY
-	bool
-	default y
-	help
-	  TODO This is actually not a command, but turns in the /dev/mem device
-	  and common memory options (e.g. range parsing).
-
 config CMD_CRC
 	tristate
 	select CRC32
@@ -1228,7 +1226,7 @@ config CMD_CRC_CMP
 config CMD_MD
 	tristate
 	default y
-	select CMD_MEMORY
+	select COMPILE_MEMORY
 	prompt "md"
 	help
 	  Memory display
@@ -1252,7 +1250,7 @@ config CMD_MD
 config CMD_MEMCMP
 	tristate
 	default y
-	select CMD_MEMORY
+	select COMPILE_MEMORY
 	prompt "memcmp"
 	help
 	  Memory compare
@@ -1274,7 +1272,7 @@ config CMD_MEMCMP
 config CMD_MEMCPY
 	tristate
 	default y
-	select CMD_MEMORY
+	select COMPILE_MEMORY
 	prompt "memcpy"
 	help
 	  Memory copy
@@ -1293,7 +1291,7 @@ config CMD_MEMCPY
 config CMD_MEMSET
 	tristate
 	default y
-	select CMD_MEMORY
+	select COMPILE_MEMORY
 	prompt "memset"
 	help
 	  Memory fill
@@ -1326,7 +1324,7 @@ config CMD_MEMTEST
 
 config CMD_MM
 	tristate
-	select CMD_MEMORY
+	select COMPILE_MEMORY
 	prompt "memory modify (mm)"
 	help
 	  Memory modify with mask
@@ -1344,7 +1342,7 @@ config CMD_MM
 config CMD_MW
 	tristate
 	default y
-	select CMD_MEMORY
+	select COMPILE_MEMORY
 	prompt "mw"
 	help
 	  Memory write
diff --git a/commands/Makefile b/commands/Makefile
index f927d21..f5aaf1c 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_STDDEV)		+= stddev.o
+obj-$(CONFIG_COMPILE_MEMORY)	+= mem.o
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
 obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
@@ -6,7 +7,6 @@ obj-$(CONFIG_CMD_LOADB)		+= loadb.o
 obj-$(CONFIG_CMD_LOADY)		+= loadxy.o
 obj-$(CONFIG_CMD_LOADS)		+= loads.o
 obj-$(CONFIG_CMD_ECHO)		+= echo.o
-obj-$(CONFIG_CMD_MEMORY)	+= mem.o
 obj-$(CONFIG_CMD_MD)		+= md.o
 obj-$(CONFIG_CMD_MM)		+= mm.o
 obj-$(CONFIG_CMD_MW)		+= mw.o
diff --git a/common/Kconfig b/common/Kconfig
index 0031cc8..20ce60c 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -21,9 +21,6 @@ config HAS_KALLSYMS
 config HAS_MODULES
 	bool
 
-config CMD_MEMORY
-	bool
-
 config ENV_HANDLING
 	select CRC32
 	bool
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
