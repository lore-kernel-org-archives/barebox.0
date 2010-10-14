Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout-de.gmx.net ([213.165.64.22] helo=mail.gmx.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P6LeD-0000dg-G0
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 11:06:58 +0000
From: Carsten Schlote <carsten.schlote@gmx.net>
Date: Thu, 14 Oct 2010 13:06:45 +0200
Message-Id: <1287054406-31713-4-git-send-email-carsten.schlote@gmx.net>
In-Reply-To: <1287054406-31713-3-git-send-email-carsten.schlote@gmx.net>
References: <1287054406-31713-1-git-send-email-carsten.schlote@gmx.net>
	<1287054406-31713-2-git-send-email-carsten.schlote@gmx.net>
	<1287054406-31713-3-git-send-email-carsten.schlote@gmx.net>
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
Subject: [PATCH 4/5] [compiler] Added OPTIMIZE options to enable GCC optimizer
To: barebox@lists.infradead.org

From: Carsten Schlote <c.schlote@konzeptpark.de>

With GCC 4.5.x the default option -Os causes problems on powerpc as it
tries to move common code to libgcc2, which isn't correctly linked later.

With optimizer turned off, code compiles fine.

So I added some options to turn on/off optimization for all architectures
and to choose between -Os and -O option.

In case your compiler produces broken code or refuses to link, just try
without optimization. As it's an option no hack in the Makefile is required
anymore.

Signed-off-by: Carsten Schlote <c.schlote@konzeptpark.de>
---
 Makefile               |    2 +-
 arch/arm/Makefile      |    8 ++++++++
 arch/blackfin/Makefile |    7 +++++++
 arch/m68k/Makefile     |    7 +++++++
 arch/ppc/Makefile      |    8 ++++++++
 arch/sandbox/Makefile  |    8 ++++++++
 arch/x86/Makefile      |    8 ++++++++
 common/Kconfig         |   13 +++++++++++++
 8 files changed, 60 insertions(+), 1 deletions(-)

diff --git a/Makefile b/Makefile
index 2442b5d..527b0a4 100644
--- a/Makefile
+++ b/Makefile
@@ -295,7 +295,7 @@ LINUXINCLUDE    := -Iinclude \
 CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
 
 CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
-                   -fno-strict-aliasing -fno-common -Os -pipe
+                   -fno-strict-aliasing -fno-common -pipe
 AFLAGS          := -D__ASSEMBLY__
 
 LDFLAGS		:= -Map barebox.map
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index e542c03..f94418d 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -3,6 +3,14 @@ CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
 CPPFLAGS	+=$(call cc-option,-marm,)
 
+ifdef CONFIG_OPTIMIZE
+ifdef CONFIG_OPTIMIZE_SIZE
+CPPFLAGS += -Os
+else
+CPPFLAGS += -O
+endif
+endif
+
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
 CPPFLAGS	+= -mbig-endian
 AS		+= -EB
diff --git a/arch/blackfin/Makefile b/arch/blackfin/Makefile
index 902268d..a4f4b7d 100644
--- a/arch/blackfin/Makefile
+++ b/arch/blackfin/Makefile
@@ -1,6 +1,13 @@
 
 CPPFLAGS += -fno-strict-aliasing
 
+ifdef CONFIG_OPTIMIZE
+ifdef CONFIG_OPTIMIZE_SIZE
+CPPFLAGS += -Os
+else
+CPPFLAGS += -O
+endif
+endif
 
 board-$(CONFIG_MACH_IPE337)	:= ipe337
 cpu-$(CONFIG_BF561)		:= bf561
diff --git a/arch/m68k/Makefile b/arch/m68k/Makefile
index ec70028..1366b4c 100644
--- a/arch/m68k/Makefile
+++ b/arch/m68k/Makefile
@@ -21,6 +21,13 @@
 CPPFLAGS += -isystem $(gccincdir) -D __M68K__ \
 	-fno-strict-aliasing
 
+ifdef CONFIG_OPTIMIZE
+ifdef CONFIG_OPTIMIZE_SIZE
+CPPFLAGS += -Os
+else
+CPPFLAGS += -O
+endif
+endif
 
 machine-$(CONFIG_ARCH_MCF54xx)	   := mcfv4e
 board-$(CONFIG_MACH_KPUKDR1)	   := kp_ukd_r1
diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index e843ed5..f2f3e4f 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -7,6 +7,14 @@ ifdef CONFIG_RELOCATABLE
 CPPFLAGS += -fPIC -mrelocatable
 endif
 
+ifdef CONFIG_OPTIMIZE
+ifdef CONFIG_OPTIMIZE_SIZE
+CPPFLAGS += -Os
+else
+CPPFLAGS += -O
+endif
+endif
+
 machine-$(CONFIG_ARCH_MPC5200)			:= mpc5200
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
 board-$(CONFIG_MACH_KONZEPTPARK_MCB2)		:= kp-mcb2
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 4ca17ed..a9dfb53 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -1,6 +1,14 @@
 
 CPPFLAGS += -fno-strict-aliasing
 
+ifdef CONFIG_OPTIMIZE
+ifdef CONFIG_OPTIMIZE_SIZE
+CPPFLAGS += -Os
+else
+CPPFLAGS += -O
+endif
+endif
+
 machine-y := sandbox
 
 board-y := arch/sandbox/board
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 57c5dbc..ec2237b 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -1,5 +1,13 @@
 CPPFLAGS += -D__X86__ -fno-strict-aliasing
 
+ifdef CONFIG_OPTIMIZE
+ifdef CONFIG_OPTIMIZE_SIZE
+CPPFLAGS += -Os
+else
+CPPFLAGS += -O
+endif
+endif
+
 board-y := x86_generic
 machine-y := i386
 
diff --git a/common/Kconfig b/common/Kconfig
index 6556c62..04f386d 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -167,6 +167,19 @@ config RELOCATABLE
 	  allowing it to relocate to the end of the available RAM. This
 	  way you have the whole memory in a single piece.
 
+config OPTIMIZE_CODE
+	bool "enable compiler optimizations"
+	help
+	  Enable GCC compiler optimizations.
+
+config OPTIMIZE_SIZE
+	bool "compile size-optimized barebox binary (-Os)"
+	depends on OPTIMIZE_CODE
+	help
+	  This option will enable the size optimizations of GCC. This will
+	  break the build process with GCC 4.5.x as it references libgcc2
+	  in this case.
+
 config MACH_HAS_LOWLEVEL_INIT
 	bool
 
-- 
1.7.2.2.277.gb49c4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
