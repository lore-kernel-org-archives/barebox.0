Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og114.obsmtp.com ([64.18.0.28])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgBC-0002CY-S5
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:04:48 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 13 Apr 2012 14:04:30 +0100
Message-Id: <1334322272-26898-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1334322272-26898-1-git-send-email-renaud.barbier@ge.com>
References: <1334322272-26898-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V2 1/3] Preparation stage to support multiple PPC architectures
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

arch/ppc/Kconfig is reworked to make the configuration environment
architecture neutral. All MPC5200 configuration is moved to the
MPC5200 architecture specific configuration file. These modifications
are reflected in the PCM030 board support.

arch/ppc/Makefile compilation directives are updated in preparation
for the introduction of future cpus/machines.

lib/time.c is moved to an architecture specific version and the
building instructions updated in the Makefile. The file
now named time-mpc5200.c is cleaned up of unused code.

The definition of L1_CACHE_... is updated and CACHELINE_SIZE is
defined in ppc/include/asm/cache.h for future use by the mpc85xx.
The file mach-mpc5xxx/pci_mpc5200.c and mach-mpc5xxx/start.S are
updated accordingly.

The declaration of search_exception_table is moved in
include/asm/common.h because it is used across architectures.
mach-mpc5xxx/traps.c is also updated to reflect this change.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Kconfig                        |   42 +++---------------------------
 arch/ppc/Makefile                       |   19 ++++++++-----
 arch/ppc/configs/pcm030_defconfig       |    3 ++
 arch/ppc/include/asm/cache.h            |   17 +++++-------
 arch/ppc/include/asm/common.h           |    1 +
 arch/ppc/lib/Makefile                   |    2 +-
 arch/ppc/lib/{time.c => time-mpc5200.c} |   27 ++-----------------
 arch/ppc/mach-mpc5xxx/Kconfig           |   43 ++++++++++++++++++++++++++++++-
 arch/ppc/mach-mpc5xxx/pci_mpc5200.c     |    2 +-
 arch/ppc/mach-mpc5xxx/start.S           |    2 +-
 arch/ppc/mach-mpc5xxx/traps.c           |    6 +---
 11 files changed, 76 insertions(+), 88 deletions(-)
 rename arch/ppc/lib/{time.c => time-mpc5200.c} (71%)

diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index 4c7b7cd..164598f 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -1,51 +1,17 @@
-
-config BOARDINFO
-	default "Phytec Phycore mpc5200b tiny" if MACH_PHYCORE_MPC5200B_TINY
-	
-config ARCH_TEXT_BASE
-	hex
-	default 0x00000000 if RELOCATABLE
-	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
-
 config PPC
 	bool
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAS_KALLSYMS
 	select HAS_MODULES
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
-	select HAVE_CONFIGURABLE_TEXT_BASE
 	default y
 
-# Uh, we should decide which one we want to use
-config ARCH_MPC5200
-	bool
-
-config MPC5200
-	bool
-
-config MPC5xxx
-	bool
-
-config CACHELINE_SIZE
-	int
-	default 32 if ARCH_MPC5200
-
-config HAS_REGINFO
-	bool
-	default y if ARCH_MPC5200
-
 choice
-	prompt "Select your board"
+	prompt "Processor type"
+
+config ARCH_MPC5XXX
+	bool "Freescale MPC5xxx"
 
-config MACH_PHYCORE_MPC5200B_TINY
-	bool "Phycore mpc5200b tiny"
-	select ARCH_MPC5200
-	select MPC5200
-	select MPC5xxx
-	select HAS_CFI
-	help
-	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
-	  board aka pcm030
 endchoice
 
 source arch/ppc/mach-mpc5xxx/Kconfig
diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index c7bf863..2d9e47f 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -1,16 +1,15 @@
 
-CPPFLAGS += -ffixed-r14 	\
+CPPFLAGS += -ffixed-r14 -m32 	\
 	-meabi -D __PPC__ -D CONFIG_PPC \
-	-fno-strict-aliasing
+	-fno-strict-aliasing -mno-spe -mspe=no
 
 ifdef CONFIG_RELOCATABLE
 CPPFLAGS += -fPIC -mrelocatable
 endif
 
 
-machine-$(CONFIG_ARCH_MPC5200)			:= mpc5200
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
-cpu-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
+machine-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
@@ -21,7 +20,7 @@ ifndef CONFIG_MODULES
 CPPFLAGS += -fdata-sections -ffunction-sections
 endif
 
-machdirs := $(patsubst %,arch/ppc/mach-%/,$(cpu-y))
+machdirs := $(patsubst %,arch/ppc/mach-%/,$(machine-y))
 
 ifeq ($(KBUILD_SRC),)
 CPPFLAGS += $(patsubst %,-I%include,$(machdirs))
@@ -40,13 +39,19 @@ else
 BOARD  :=
 endif
 
+ifneq ($(machine-y),)
+MACH  := arch/ppc/mach-$(machine-y)/
+else
+MACH  :=
+endif
+
 ifneq ($(cpu-y),)
-CPU  := arch/ppc/mach-$(cpu-y)/
+CPU  := arch/ppc/cpu-$(cpu-y)/
 else
 CPU  :=
 endif
 
-common-y += $(BOARD) $(CPU)
+common-y += $(BOARD) $(CPU) $(MACH)
 common-y += arch/ppc/lib/
 
 lds-y += $(BOARD)/barebox.lds
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index 5de1c75..c037502 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -32,6 +32,9 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
+CONFIG_ARCH_MPC5XXX=y
+CONFIG_MACH_PHYCORE_MPC5200B_TINY=y
+CONFIG_DRIVER_NET_MPC5200=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_ZLIB=y
diff --git a/arch/ppc/include/asm/cache.h b/arch/ppc/include/asm/cache.h
index f37af97..4f7ca86 100644
--- a/arch/ppc/include/asm/cache.h
+++ b/arch/ppc/include/asm/cache.h
@@ -6,16 +6,13 @@
 
 #include <asm/processor.h>
 
-/* bytes per L1 cache line */
-#if !defined(CONFIG_8xx) || defined(CONFIG_8260)
-#if defined(CONFIG_PPC64BRIDGE)
-#define L1_CACHE_BYTES	128
-#else
-#define	L1_CACHE_BYTES  32
-#endif /* PPC64 */
-#else
-#define	L1_CACHE_BYTES	16
-#endif /* !8xx || 8260 */
+/* bytes per L1 cache line. CPU dependent */
+#define L1_CACHE_SHIFT	5
+#define L1_CACHE_BYTES	(1 << L1_CACHE_SHIFT)
+
+#ifndef CACHELINE_SIZE
+#define CACHELINE_SIZE	L1_CACHE_BYTES
+#endif
 
 #define	L1_CACHE_ALIGN(x)       (((x)+(L1_CACHE_BYTES-1))&~(L1_CACHE_BYTES-1))
 #define	L1_CACHE_PAGES		8
diff --git a/arch/ppc/include/asm/common.h b/arch/ppc/include/asm/common.h
index b7c524a..732fbaf 100644
--- a/arch/ppc/include/asm/common.h
+++ b/arch/ppc/include/asm/common.h
@@ -34,4 +34,5 @@ static inline unsigned long get_pc(void)
 	return pc;
 }
 
+extern unsigned long search_exception_table(unsigned long);
 #endif /* __ASM_COMMON_H */
diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
index b611ddf..2af000a 100644
--- a/arch/ppc/lib/Makefile
+++ b/arch/ppc/lib/Makefile
@@ -4,7 +4,7 @@ obj-y += extable.o
 obj-y += kgdb.o
 obj-y += ppcstring.o
 obj-y += ticks.o
-obj-y += time.o
+obj-$(CONFIG_MPC5200) += time-mpc5200.o
 obj-y += misc.o
 obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
 obj-y += board_data.o
diff --git a/arch/ppc/lib/time.c b/arch/ppc/lib/time-mpc5200.c
similarity index 71%
rename from arch/ppc/lib/time.c
rename to arch/ppc/lib/time-mpc5200.c
index 04c71df..b35859a 100644
--- a/arch/ppc/lib/time.c
+++ b/arch/ppc/lib/time-mpc5200.c
@@ -27,28 +27,6 @@
 #include <mach/clocks.h>
 #include <asm/common.h>
 
-/* ------------------------------------------------------------------------- */
-
-static int init_timebase (void)
-{
-#if defined(CONFIG_5xx) || defined(CONFIG_8xx)
-	volatile immap_t *immap = (immap_t *) CFG_IMMR;
-
-	/* unlock */
-	immap->im_sitk.sitk_tbk = KAPWR_KEY;
-#endif
-
-	/* reset */
-	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
-
-#if defined(CONFIG_5xx) || defined(CONFIG_8xx)
-	/* enable */
-	immap->im_sit.sit_tbscr |= TBSCR_TBE;
-#endif
-	return (0);
-}
-/* ------------------------------------------------------------------------- */
-
 uint64_t ppc_clocksource_read(void)
 {
 	return get_ticks();
@@ -60,9 +38,10 @@ static struct clocksource cs = {
 	.shift	= 15,
 };
 
-static int clocksource_init (void)
+static int clocksource_init(void)
 {
-	init_timebase();
+	/* reset time base */
+	asm ("li 3,0 ; mttbu 3 ; mttbl 3 ;");
 
 	cs.mult = clocksource_hz2mult(get_timebase_clock(), cs.shift);
 
diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index 632fb85..db4f391 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -1,4 +1,44 @@
-menu "Board specific settings       "
+if ARCH_MPC5XXX
+
+config BOARDINFO
+	default "Phytec Phycore mpc5200b tiny" if MACH_PHYCORE_MPC5200B_TINY
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00000000 if RELOCATABLE
+	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
+
+config HAS_REGINFO
+	bool
+	default y if ARCH_MPC5200
+
+choice
+	prompt "Select your board"
+
+config MACH_PHYCORE_MPC5200B_TINY
+	bool "Phycore mpc5200b tiny"
+	select HAS_CFI
+	help
+	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
+	  board aka pcm030.
+endchoice
+
+config MPC5200
+	bool
+	depends on MACH_PHYCORE_MPC5200B_TINY
+	default y
+
+config ARCH_MPC5200
+	bool
+	depends on MACH_PHYCORE_MPC5200B_TINY
+	default y
+
+config MPC5xxx
+	bool
+	depends on MACH_PHYCORE_MPC5200B_TINY
+	default y
+
+menu "Board specific settings"
 
 config MACH_PHYCORE_MPC5200B_TINY_REV
 	int "Board Revision"
@@ -10,3 +50,4 @@ config MACH_PHYCORE_MPC5200B_TINY_REV
 	  old board you should set this option to 1
 
 endmenu
+endif
diff --git a/arch/ppc/mach-mpc5xxx/pci_mpc5200.c b/arch/ppc/mach-mpc5xxx/pci_mpc5200.c
index d8f3b00..625d17f 100644
--- a/arch/ppc/mach-mpc5xxx/pci_mpc5200.c
+++ b/arch/ppc/mach-mpc5xxx/pci_mpc5200.c
@@ -125,7 +125,7 @@ void pci_mpc5xxx_init (struct pci_controller *hose)
 
 	/* Set cache line size */
 	*(vu_long *)MPC5XXX_PCI_CFG = (*(vu_long *)MPC5XXX_PCI_CFG & ~0xff) |
-		(CONFIG_CACHELINE_SIZE / 4);
+		(CACHELINE_SIZE / 4);
 
 	/* Map MBAR to PCI space */
 	*(vu_long *)MPC5XXX_PCI_BAR0 = CFG_MBAR;
diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index 7a4c16b..0110022 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -287,7 +287,7 @@ before_relocate:
 	 *
 	 */
 
-	li	r6, CONFIG_CACHELINE_SIZE		/* Cache Line Size	*/
+	li	r6, CACHELINE_SIZE
 
 	/*
 	 * Fix GOT pointer:
diff --git a/arch/ppc/mach-mpc5xxx/traps.c b/arch/ppc/mach-mpc5xxx/traps.c
index 47d1406..806b976 100644
--- a/arch/ppc/mach-mpc5xxx/traps.c
+++ b/arch/ppc/mach-mpc5xxx/traps.c
@@ -41,11 +41,7 @@
 int (*debugger_exception_handler)(struct pt_regs *) = 0;
 #endif
 
-/* Returns 0 if exception not found and fixup otherwise.  */
-extern unsigned long search_exception_table(unsigned long);
-
-/* THIS NEEDS CHANGING to use the board info structure.
-*/
+/* THIS NEEDS CHANGING to use the board info structure.  */
 #define END_OF_MEM	0x02000000
 
 /*
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
