Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srlr9-0005KO-IB
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 08:13:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jul 2012 10:12:59 +0200
Message-Id: <1342685582-13244-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] ARM ep93xx: Get rid of special handling in linker file
To: barebox@lists.infradead.org

The ep93xx needs a special value at offset 0x1000. Rather than
do special handling in the linker file add aa header section
as done on i.MX.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/barebox.lds.S                      |    5 -----
 arch/arm/mach-ep93xx/Makefile                   |    2 +-
 arch/arm/mach-ep93xx/header.c                   |    8 ++++++++
 arch/arm/mach-ep93xx/include/mach/barebox.lds.h |    9 +++++++++
 include/asm-generic/barebox.lds.h               |    3 ++-
 5 files changed, 20 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/mach-ep93xx/header.c
 create mode 100644 arch/arm/mach-ep93xx/include/mach/barebox.lds.h

diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
index 736e5f0..e0bae70 100644
--- a/arch/arm/lib/barebox.lds.S
+++ b/arch/arm/lib/barebox.lds.S
@@ -41,11 +41,6 @@ SECTIONS
 		*(.text_entry*)
 		__ll_return = .;
 		*(.text_ll_return*)
-#ifdef CONFIG_ARCH_EP93XX
-		/* the EP93xx expects to find the pattern 'CRUS' at 0x1000 */
-	  . = 0x1000;
-	  LONG(0x53555243) /* 'CRUS' */
-#endif
 		__bare_init_start = .;
 		*(.text_bare_init*)
 		__bare_init_end = .;
diff --git a/arch/arm/mach-ep93xx/Makefile b/arch/arm/mach-ep93xx/Makefile
index dac6571..d401164 100644
--- a/arch/arm/mach-ep93xx/Makefile
+++ b/arch/arm/mach-ep93xx/Makefile
@@ -1,3 +1,3 @@
-obj-y += clocksource.o gpio.o led.o
+obj-y += clocksource.o gpio.o led.o header.o
 
 obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel_init.o
diff --git a/arch/arm/mach-ep93xx/header.c b/arch/arm/mach-ep93xx/header.c
new file mode 100644
index 0000000..4e6a2e5
--- /dev/null
+++ b/arch/arm/mach-ep93xx/header.c
@@ -0,0 +1,8 @@
+#include <common.h>
+#include <linux/compiler.h>
+#include <asm/barebox-arm-head.h>
+
+void __naked __section(.flash_header_start) go(void)
+{
+        barebox_arm_head();
+}
diff --git a/arch/arm/mach-ep93xx/include/mach/barebox.lds.h b/arch/arm/mach-ep93xx/include/mach/barebox.lds.h
new file mode 100644
index 0000000..74c4662
--- /dev/null
+++ b/arch/arm/mach-ep93xx/include/mach/barebox.lds.h
@@ -0,0 +1,9 @@
+
+/* the EP93xx expects to find the pattern 'CRUS' at 0x1000 */
+
+#define PRE_IMAGE				\
+	.pre_image : {				\
+		KEEP(*(.flash_header_start*))	\
+		. = 0x1000;			\
+		LONG(0x53555243) /* 'CRUS' */	\
+	}
diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index e853ca1..b2bd19e 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -4,7 +4,8 @@
 	defined CONFIG_ARCH_IMX51 || \
 	defined CONFIG_ARCH_IMX53 || \
 	defined CONFIG_ARCH_IMX6 || \
-	defined CONFIG_X86
+	defined CONFIG_X86 || \
+	defined CONFIG_ARCH_EP93XX
 #include <mach/barebox.lds.h>
 #endif
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
