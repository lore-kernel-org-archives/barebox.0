Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R8T1o-0001mj-E0
	for barebox@lists.infradead.org; Tue, 27 Sep 2011 08:28:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Sep 2011 10:28:18 +0200
Message-Id: <1317112109-23311-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
References: <1317112109-23311-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] remove EARLY_INIT and EARLY_CONSOLE support
To: barebox@lists.infradead.org

Bitrotted over time and nearly unused, so remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx28/tx28-stk5.c |    1 -
 arch/mips/lib/barebox.lds.S           |    4 --
 arch/ppc/Kconfig                      |    9 -----
 arch/ppc/boards/pcm030/barebox.lds.S  |    4 --
 arch/ppc/boards/pcm030/pcm030.c       |   13 +------
 arch/ppc/include/asm/common.h         |    2 +
 arch/ppc/lib/board.c                  |    3 --
 arch/ppc/mach-mpc5xxx/Kconfig         |    3 --
 arch/ppc/mach-mpc5xxx/cpu_init.c      |    3 --
 arch/ppc/mach-mpc5xxx/start.S         |   15 --------
 common/Kconfig                        |   17 ---------
 common/console.c                      |   36 ++-----------------
 common/startup.c                      |   28 ---------------
 common/version.c                      |    5 +--
 drivers/serial/serial_mpc5xxx.c       |   25 -------------
 include/linux/ctype.h                 |    3 +-
 include/reloc.h                       |   62 ---------------------------------
 lib/vsprintf.c                        |    1 -
 18 files changed, 10 insertions(+), 224 deletions(-)
 delete mode 100644 include/reloc.h

diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index 645aa7b..b36d822 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -20,7 +20,6 @@
 #include <mci.h>
 #include <fec.h>
 #include <sizes.h>
-#include <reloc.h>
 #include <io.h>
 #include <asm/sections.h>
 #include <mach/imx-regs.h>
diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index dd9eab7..ba4c0af 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -64,10 +64,6 @@ SECTIONS
 	__usymtab : { BAREBOX_SYMS }
 	__usymtab_end = .;
 
-	__early_init_data_begin = .;
-	.early_init_data : { *(.early_init_data) }
-	__early_init_data_end = .;
-
 	. = ALIGN(4);
 	__bss_start = .;
 	.bss : { *(.bss*) }
diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index cda14de..50ccaac 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -7,15 +7,6 @@ config ARCH_TEXT_BASE
 	default 0x00000000 if RELOCATABLE
 	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
 
-config MPC5XXX_EARLY_CONSOLE
-	bool
-	depends on ARCH_MPC5200
-	default y
-
-config HAS_EARLY_INIT
-	bool
-	default y
-
 config PPC
 	bool
 	select HAVE_CONFIGURABLE_TEXT_BASE
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 21bf4a7..4aacfc5 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -111,10 +111,6 @@ SECTIONS
   __usymtab : { BAREBOX_SYMS }
   __usymtab_end = .;
 
-  __early_init_data_begin = .;
-  .early_init_data : { *(.early_init_data) }
-  __early_init_data_end = .;
-
   __start___ex_table = .;
   __ex_table : { *(__ex_table) }
   __stop___ex_table = .;
diff --git a/arch/ppc/boards/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
index d3b7094..f408c3d 100644
--- a/arch/ppc/boards/pcm030/pcm030.c
+++ b/arch/ppc/boards/pcm030/pcm030.c
@@ -35,7 +35,7 @@
 #include <types.h>
 #include <partition.h>
 #include <memory.h>
-#include <reloc.h>
+#include <sizes.h>
 
 static struct mpc5xxx_fec_platform_data fec_info = {
 	.xcv_type = MII100,
@@ -68,15 +68,6 @@ static int console_init(void)
 
 console_initcall(console_init);
 
-void *get_early_console_base(const char *name)
-{
-	if (!strcmp(name, RELOC("psc3")))
-		return (void *)MPC5XXX_PSC3;
-	if (!strcmp(name, RELOC("psc6")))
-		return (void *)MPC5XXX_PSC6;
-	return NULL;
-}
-
 #include "mt46v32m16-75.h"
 
 static void sdram_start (int hi_addr)
@@ -131,7 +122,7 @@ long int initdram (int board_type)
 
 	ulong test1, test2;
 
-	if ((ulong)RELOC(initdram) > (2 << 30)) {
+	if (get_pc() > SZ_128M) {
 		/* setup SDRAM chip selects */
 		*(vu_long *)MPC5XXX_SDRAM_CS0CFG = 0x0000001b;/* 256MB at 0x0 */
 		*(vu_long *)MPC5XXX_SDRAM_CS1CFG = 0x10000000;/* disabled */
diff --git a/arch/ppc/include/asm/common.h b/arch/ppc/include/asm/common.h
index 26876c7..9239de4 100644
--- a/arch/ppc/include/asm/common.h
+++ b/arch/ppc/include/asm/common.h
@@ -3,6 +3,8 @@
 
 #include <asm/barebox.h>
 
+extern unsigned long _text_base;
+
 void	upmconfig     (unsigned int, unsigned int *, unsigned int);
 ulong	get_tbclk     (void);
 
diff --git a/arch/ppc/lib/board.c b/arch/ppc/lib/board.c
index 798c386..82ba458 100644
--- a/arch/ppc/lib/board.c
+++ b/arch/ppc/lib/board.c
@@ -29,7 +29,6 @@
 #include <memory.h>
 #include <init.h>
 #include <net.h>
-#include <reloc.h>
 #include <asm-generic/memory_layout.h>
 
 /************************************************************************
@@ -48,8 +47,6 @@ void board_init_r (ulong end_of_ram)
 
 	asm ("sync ; isync");
 
-	_text_base += reloc_offset();
-
 	/*
 	 * FIXME: 128k stack size. Is this enough? should
 	 *        it be configurable?
diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index 5da6a5b..632fb85 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -10,6 +10,3 @@ config MACH_PHYCORE_MPC5200B_TINY_REV
 	  old board you should set this option to 1
 
 endmenu
-
-config EARLY_CONSOLE_PORT
-	default "psc3" if MACH_PHYCORE_MPC5200B_TINY
\ No newline at end of file
diff --git a/arch/ppc/mach-mpc5xxx/cpu_init.c b/arch/ppc/mach-mpc5xxx/cpu_init.c
index 24edc48..bf0a5bd 100644
--- a/arch/ppc/mach-mpc5xxx/cpu_init.c
+++ b/arch/ppc/mach-mpc5xxx/cpu_init.c
@@ -24,7 +24,6 @@
 #include <common.h>
 #include <mach/mpc5xxx.h>
 #include <types.h>
-#include <reloc.h>
 
 /*
  * Breath some life into the CPU...
@@ -177,8 +176,6 @@ int cpu_init(void)
 	/* route critical ints to normal ints */
 	*(vu_long *)MPC5XXX_ICTL_EXT |= 0x00000001;
 
-	early_init();
-
 	return 0;
 }
 
diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index 3ba7208..2627e5d 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -802,21 +802,6 @@ trap_reloc:
 
 	blr
 
-	.globl reloc_offset
-reloc_offset:
-	mfspr	r4,  LR
-	bl	pc
-pc:
-	mfspr	r3,  LR
-	mtspr   LR, r4
-	addi	r4, r3, (_text_base - pc)
-	subi	r3, r3, (pc - _start)
-	lwz	r4, 0(r4)
-
-	sub	r3, r3, r4
-	subi	r3, r3, 0x100
-	blr
-
 .globl _text_base
 _text_base:
 	.long TEXT_BASE
diff --git a/common/Kconfig b/common/Kconfig
index 82e43aa..8e96920 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -398,23 +398,6 @@ config CONSOLE_ACTIVATE_ALL
 	  Enabling this options activates all consoles on startup, so
 	  you will get output and a prompt on all consoles simultaneously.
 
-config EARLY_CONSOLE_PORT
-	string
-	depends on HAS_EARLY_INIT
-	prompt "Console device for early output"
-	help
-	  Choose the device on which you want to have early output printed
-	  to. This is only used during startup when no device information
-	  is available.
-
-config EARLY_CONSOLE_BAUDRATE
-	int
-	default 115200
-	depends on HAS_EARLY_INIT
-	prompt "Early console baudrate"
-	help
-	  Choose the baudrate for your early console.
-
 config OF_FLAT_TREE
 	bool
 	prompt "Open Firmware flat device tree support"
diff --git a/common/console.c b/common/console.c
index 1f6ee93..06e9c29 100644
--- a/common/console.c
+++ b/common/console.c
@@ -29,7 +29,6 @@
 #include <console.h>
 #include <driver.h>
 #include <fs.h>
-#include <reloc.h>
 #include <init.h>
 #include <clock.h>
 #include <kfifo.h>
@@ -42,10 +41,9 @@ LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
 
 #define CONSOLE_UNINITIALIZED	0
-#define CONSOLE_INIT_EARLY	1
-#define CONSOLE_INIT_FULL	2
+#define CONSOLE_INIT_FULL	1
 
-static int __early_initdata initialized = 0;
+static int initialized = 0;
 
 static int console_std_set(struct device_d *dev, struct param_d *param,
 		const char *val)
@@ -163,10 +161,8 @@ int console_register(struct console_device *newcdev)
 		console_output_buffer = NULL;
 	}
 
-#ifndef CONFIG_HAS_EARLY_INIT
 	if (first)
 		barebox_banner();
-#endif
 
 	return 0;
 }
@@ -250,26 +246,16 @@ int tstc(void)
 }
 EXPORT_SYMBOL(tstc);
 
-#ifdef CONFIG_HAS_EARLY_INIT
-static void __early_initdata *early_console_base;
-#endif
-
 void console_putc(unsigned int ch, char c)
 {
 	struct console_device *cdev;
-	int init = INITDATA(initialized);
+	int init = initialized;
 
 	switch (init) {
 	case CONSOLE_UNINITIALIZED:
 		kfifo_putc(console_output_buffer, c);
 		return;
 
-#ifdef CONFIG_HAS_EARLY_INIT
-	case CONSOLE_INIT_EARLY:
-		early_console_putc(INITDATA(early_console_base), c);
-		return;
-#endif
-
 	case CONSOLE_INIT_FULL:
 		for_each_console(cdev) {
 			if (cdev->f_active & ch) {
@@ -410,19 +396,3 @@ int ctrlc (void)
 }
 EXPORT_SYMBOL(ctrlc);
 #endif /* ARCH_HAS_CTRC */
-
-#ifdef CONFIG_HAS_EARLY_INIT
-
-void early_console_start(const char *name, int baudrate)
-{
-	void *base = get_early_console_base(name);
-
-	if (base) {
-		early_console_init(base, baudrate);
-		INITDATA(initialized) = CONSOLE_INIT_EARLY;
-		INITDATA(early_console_base) = base;
-		barebox_banner();
-	}
-}
-
-#endif
diff --git a/common/startup.c b/common/startup.c
index 7a1b602..13783fb 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -38,7 +38,6 @@
 #include <fs.h>
 #include <linux/stat.h>
 #include <environment.h>
-#include <reloc.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
@@ -62,23 +61,6 @@ static void display_meminfo(void)
 #endif
 }
 
-#ifdef CONFIG_HAS_EARLY_INIT
-
-#define EARLY_INITDATA (CFG_INIT_RAM_ADDR + CFG_INIT_RAM_SIZE \
-		- CONFIG_EARLY_INITDATA_SIZE)
-
-void *init_data_ptr = (void *)EARLY_INITDATA;
-
-void early_init (void)
-{
-	/* copy the early initdata segment to early init RAM */
-	memcpy((void *)EARLY_INITDATA, RELOC(&__early_init_data_begin),
-				(ulong)&__early_init_data_end -
-				(ulong)&__early_init_data_begin);
-}
-
-#endif /* CONFIG_HAS_EARLY_INIT */
-
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 #include <generated/barebox_default_env.h>
 
@@ -112,16 +94,6 @@ void start_barebox (void)
 	struct stat s;
 #endif
 
-#ifdef CONFIG_HAS_EARLY_INIT
-	/* We are running from RAM now, copy early initdata from
-	 * early RAM to RAM
-	 */
-	memcpy(&__early_init_data_begin, init_data_ptr,
-			(ulong)&__early_init_data_end -
-			(ulong)&__early_init_data_begin);
-	init_data_ptr = &__early_init_data_begin;
-#endif /* CONFIG_HAS_EARLY_INIT */
-
 	for (initcall = __barebox_initcalls_start;
 			initcall < __barebox_initcalls_end; initcall++) {
 		PUTS_LL("<<");
diff --git a/common/version.c b/common/version.c
index 945475f..0af8ec1 100644
--- a/common/version.c
+++ b/common/version.c
@@ -1,5 +1,4 @@
 #include <common.h>
-#include <reloc.h>
 #include <generated/utsrelease.h>
 
 const char version_string[] =
@@ -7,7 +6,7 @@ const char version_string[] =
 
 void barebox_banner (void)
 {
-	printf (RELOC("\n\n%s\n\n"), RELOC_VAR(version_string));
-	printf(RELOC("Board: " CONFIG_BOARDINFO "\n"));
+	printf("\n\n%s\n\n", version_string);
+	printf("Board: " CONFIG_BOARDINFO "\n");
 }
 
diff --git a/drivers/serial/serial_mpc5xxx.c b/drivers/serial/serial_mpc5xxx.c
index fb580cf..b00b442 100644
--- a/drivers/serial/serial_mpc5xxx.c
+++ b/drivers/serial/serial_mpc5xxx.c
@@ -39,7 +39,6 @@
 #include <init.h>
 #include <console.h>
 #include <xfuncs.h>
-#include <reloc.h>
 #include <mach/clocks.h>
 
 static int __mpc5xxx_serial_setbaudrate(struct mpc5xxx_psc *psc, int baudrate)
@@ -180,27 +179,3 @@ static int mpc5xxx_serial_register(void)
 }
 
 console_initcall(mpc5xxx_serial_register);
-
-#ifdef CONFIG_MPC5XXX_EARLY_CONSOLE
-
-void early_console_putc(void *base, char c)
-{
-	struct mpc5xxx_psc *psc =
-		(struct mpc5xxx_psc *)base;
-
-	/* Wait for last character to go. */
-	while (!(psc->psc_status & PSC_SR_TXEMP))
-		;
-
-	psc->psc_buffer_8 = c;
-}
-
-void early_console_init(void *base, int baudrate)
-{
-	struct mpc5xxx_psc *psc =
-		(struct mpc5xxx_psc *)base;
-	__mpc5xxx_serial_init(psc);
-	__mpc5xxx_serial_setbaudrate(psc, baudrate);
-}
-
-#endif
diff --git a/include/linux/ctype.h b/include/linux/ctype.h
index 728040e..74fb735 100644
--- a/include/linux/ctype.h
+++ b/include/linux/ctype.h
@@ -2,7 +2,6 @@
 #define _LINUX_CTYPE_H
 
 #include <common.h>
-#include <reloc.h>
 
 /*
  * NOTE! This ctype does not handle EOF like the standard C
@@ -20,7 +19,7 @@
 
 extern unsigned char _ctype[];
 
-#define __ismask(x) (RELOC_VAR(_ctype[(int)(unsigned char)(x)]))
+#define __ismask(x) (_ctype[(int)(unsigned char)(x)])
 
 #define isalnum(c)	((__ismask(c)&(_U|_L|_D)) != 0)
 #define isalpha(c)	((__ismask(c)&(_U|_L)) != 0)
diff --git a/include/reloc.h b/include/reloc.h
deleted file mode 100644
index cc99866..0000000
--- a/include/reloc.h
+++ /dev/null
@@ -1,62 +0,0 @@
-#ifndef __RELOC_H
-#define __RELOC_H
-
-extern unsigned long _text_base;
-
-#ifdef CONFIG_HAS_EARLY_INIT
-
-extern ulong __early_init_data_begin, __early_init_data_end;
-
-/*
- * The difference between our link address and the address we're
- * currently running at.
- */
-unsigned long reloc_offset(void);
-
-/*
- * When not running at link address, relocate a pointer by
- * taking reloc_offset() into account
- */
-#define RELOC(a) (typeof(*a) *)((unsigned long)a + reloc_offset())
-
-/*
- * dito, used for variables
- */
-#define RELOC_VAR(v) *(typeof(v)* )((unsigned long)&v + reloc_offset())
-
-void early_init(void);
-
-/*
- * put a variable into early init RAM. This section will
- * be relocated into SRAM during early init
- */
-#define __early_initdata	__attribute__ ((__section__ (".early_init_data")))
-
-/* Access init data */
-#define INITDATA(var) *(typeof(var) *)((ulong)(&var) - \
-		(ulong)&__early_init_data_begin + \
-		(ulong)RELOC_VAR(init_data_ptr))
-
-extern void *init_data_ptr;
-
-#else
-
-static inline int reloc_offset(void)
-{
-	return 0;
-}
-
-static inline void early_init(void)
-{
-}
-
-#define RELOC(a) a
-#define RELOC_VAR(v) v
-
-#define __early_initdata
-
-#define INITDATA(var)	var
-
-#endif /* CONFIG_HAS_EARLY_INIT */
-
-#endif /* __RELOC_H */
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index ccccc5d..54e162f 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -19,7 +19,6 @@
 
 #include <common.h>
 #include <led.h>
-#include <reloc.h>
 
 unsigned long simple_strtoul(const char *cp,char **endp,unsigned int base)
 {
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
