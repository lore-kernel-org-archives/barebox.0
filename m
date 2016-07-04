Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK2Rk-0007sV-LK
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 11:53:53 +0000
Received: by mail-wm0-x244.google.com with SMTP id c82so21088426wme.3
 for <barebox@lists.infradead.org>; Mon, 04 Jul 2016 04:53:32 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Mon,  4 Jul 2016 13:52:44 +0200
Message-Id: <1467633177-22478-2-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1467633177-22478-1-git-send-email-poggi.raph@gmail.com>
References: <1467633177-22478-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v5 01/14] arm64: add armv8 Kconfig entries
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/Kconfig     | 23 +++++++++++++++++++++++
 arch/arm/cpu/Kconfig | 33 ++++++++++++++++++++++++++++++++-
 2 files changed, 55 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1fc887b..986fdaa 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -315,6 +315,29 @@ config ARM_BOARD_APPEND_ATAG
 
 endmenu
 
+choice
+	prompt "Barebox code model"
+	help
+	  You should only select this option if you have a workload that
+	  actually benefits from 64-bit processing or if your machine has
+	  large memory. You will only be presented a single option in this
+	  menu if your system does not support both 32-bit and 64-bit modes.
+
+config 32BIT
+	bool "32-bit barebox"
+	depends on CPU_SUPPORTS_32BIT_KERNEL && SYS_SUPPORTS_32BIT_KERNEL
+	help
+	  Select this option if you want to build a 32-bit barebox.
+
+config 64BIT
+	bool "64-bit barebox"
+	depends on CPU_SUPPORTS_64BIT_KERNEL && SYS_SUPPORTS_64BIT_KERNEL
+	select ARCH_DMA_ADDR_T_64BIT
+	help
+	  Select this option if you want to build a 64-bit barebox.
+
+endchoice
+
 menu "ARM specific settings"
 
 config ARM_OPTIMZED_STRING_FUNCTIONS
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 4f5d9b6..450a6d5 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -1,8 +1,14 @@
 comment "Processor Type"
 
+config PHYS_ADDR_T_64BIT
+	bool
+
 config CPU_32
 	bool
-	default y
+
+config CPU_64
+	bool
+	select PHYS_ADDR_T_64BIT
 
 # Select CPU types depending on the architecture selected. This selects
 # which CPUs we support in the kernel image, and the compiler instruction
@@ -69,6 +75,12 @@ config CPU_V7
 	bool
 	select CPU_32v7
 
+# ARMv8
+config CPU_V8
+	bool
+	select CPU_64v8
+	select CPU_SUPPORTS_64BIT_KERNEL
+
 config CPU_XSC3
         bool
         select CPU_32v4T
@@ -84,15 +96,23 @@ config CPU_XSCALE
 # This defines the compiler instruction set which depends on the machine type.
 config CPU_32v4T
 	bool
+	select CPU_32
 
 config CPU_32v5
 	bool
+	select CPU_32
 
 config CPU_32v6
 	bool
+	select CPU_32
 
 config CPU_32v7
 	bool
+	select CPU_32
+
+config CPU_64v8
+	bool
+	select CPU_64
 
 comment "processor features"
 
@@ -124,3 +144,14 @@ config CACHE_L2X0
 	bool "Enable L2x0 PrimeCell"
 	depends on MMU && ARCH_HAS_L2X0
 
+config SYS_SUPPORTS_32BIT_KERNEL
+	bool
+
+config SYS_SUPPORTS_64BIT_KERNEL
+	bool
+
+config CPU_SUPPORTS_32BIT_KERNEL
+	bool
+
+config CPU_SUPPORTS_64BIT_KERNEL
+	bool
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
