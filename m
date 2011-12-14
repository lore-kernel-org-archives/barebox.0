Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaoB4-0003n5-4g
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 12:43:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Dec 2011 13:43:06 +0100
Message-Id: <1323866587-2385-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323866587-2385-1-git-send-email-s.hauer@pengutronix.de>
References: <1323866587-2385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ppc: switch to libfdt based oftree implementation
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/ppc/lib/ppclinux.c     |  231 +-----------------------------------------
 arch/ppc/mach-mpc5xxx/cpu.c |   42 ++++-----
 commands/bootm.c            |    5 +
 include/boot.h              |    2 +-
 4 files changed, 31 insertions(+), 249 deletions(-)

diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index 471b303..f7d3950 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -16,231 +16,15 @@
 #endif
 extern bd_t *bd;
 
-static int do_bootm_linux(struct image_data *idata)
+static int do_bootm_linux(struct image_data *data)
 {
-	ulong	sp;
-	ulong	initrd_end = 0;
-	ulong	cmd_start, cmd_end;
-	ulong	initrd_high;
-	int	initrd_copy_to_ram = 1;
-	char    *cmdline;
-	const char *c;
-	bd_t	*kbd;
-	void	(*kernel)(bd_t *, ulong, ulong, ulong, ulong);
-#ifdef CONFIG_OF_FLAT_TREE
-	char	*of_flat_tree = NULL;
-#endif
-	image_header_t *os_header = &idata->os->header;
-	image_header_t *initrd_header = NULL;
-	void    *os_data = NULL;
-	void    *initrd_data = NULL;
-	void    *of_data = NULL;
-	struct image_handle *oftree_handle;
-	unsigned long os_len, initrd_len;
-
-	if (idata->initrd)
-		initrd_header = &idata->initrd->header;
-
-	printf("entering %s: os_header: %p initrd_header: %p oftree: %s\n",
-			__FUNCTION__, os_header, initrd_header, idata->oftree);
-
-	if (image_get_type(os_header) == IH_TYPE_MULTI) {
-		unsigned long *data = (unsigned long *)(idata->os->data);
-		unsigned long len1 = 0, len2 = 0;
-
-		if (!*data) {
-			printf("multifile image with 0 entries???\n");
-			return -1;
-		}
-		os_len = ntohl(*data);	/* first one is the kernel */
-		data++;
-
-		if (*data) {
-			len1 = ntohl(*data);	/* could be initrd or oftree */
-			data++;
-		}
-
-		if (*data) {
-			len2 = ntohl(*data);	/* could be oftree */
-			data++;
-		}
-
-		while (*data)		/* skip all remaining files */
-			data++;
-
-		data++;			/* skip terminating zero */
-
-		os_data = (void *)ntohl(data);
-
-		if (len2) {
-			initrd_data = (void *)
-				((unsigned long)data + ((os_len + 3) & ~3));
-			initrd_len  = len1;
-			of_data     = (void *)
-				((unsigned long)initrd_data + ((initrd_len + 3) & ~3));
-		} else if (len1) {
-			/* We could check here if this is a multifile image
-			 * with only a kernel and an oftree. Original barebox
-			 * did not do this, so leave it out for now.
-			 */
-			initrd_data = (void *)((unsigned long)data + ((os_len + 3) & ~3));
-			initrd_len  = len1;
-		}
-	} else {
-		os_data = idata->os->data;
-		printf("set os_data to %p\n", os_data);
-	}
-
-	if (idata->initrd)
-		initrd_data = idata->initrd->data;
+	void	(*kernel)(void *, void *, unsigned long,
+			unsigned long, unsigned long);
+	struct image_header *os_header = &data->os->header;
 
-#ifdef CONFIG_OF_FLAT_TREE
-	if (idata->oftree) {
-		/* The oftree can be given either as an barebox image or as a
-		 * binary blob. First try to read it as an image.
-		 */
-		oftree_handle = map_image(idata->oftree, 1);
-		if (oftree_handle) {
-			of_data = oftree_handle->data;
-		} else {
-			of_data = read_file(idata->oftree, 0);
-			if (!of_data) {
-				printf("could not read %s: %s\n", idata->oftree, errno_str());
-				return -1;
-			}
-		}
-		/* FIXME: check if this is really an oftree */
-	}
-#endif
-	printf("loading kernel.\n");
-
-	if ((c = getenv ("initrd_high")) != NULL) {
-		/* a value of "no" or a similar string will act like 0,
-		 * turning the "load high" feature off. This is intentional.
-		 */
-		initrd_high = simple_strtoul(c, NULL, 16);
-		if (initrd_high == ~0)
-			initrd_copy_to_ram = 0;
-	} else {	/* not set, no restrictions to load high */
-		initrd_high = ~0;
-	}
-
-#ifdef CONFIG_LOGBUFFER
-	kbd=gd->bd;
-	/* Prevent initrd from overwriting logbuffer */
-	if (initrd_high < (kbd->bi_memsize-LOGBUFF_LEN-LOGBUFF_OVERHEAD))
-		initrd_high = kbd->bi_memsize-LOGBUFF_LEN-LOGBUFF_OVERHEAD;
-	debug ("## Logbuffer at 0x%08lX ", kbd->bi_memsize-LOGBUFF_LEN);
-#endif
+	kernel = (void *)image_get_ep(os_header);
 
 	/*
-	 * Booting a (Linux) kernel image
-	 *
-	 * Allocate space for command line and board info - the
-	 * address should be as high as possible within the reach of
-	 * the kernel (see CFG_BOOTMAPSZ settings), but in unused
-	 * memory, which means far enough below the current stack
-	 * pointer.
-	 */
-
-	asm( "mr %0,1": "=r"(sp) : );
-
-	debug ("## Current stack ends at 0x%08lX ", sp);
-
-	sp -= 2048;		/* just to be sure */
-	if (sp > CFG_BOOTMAPSZ)
-		sp = CFG_BOOTMAPSZ;
-	sp &= ~0xF;
-
-	debug ("=> set upper limit to 0x%08lX\n", sp);
-
-	cmdline = (char *)((sp - CONFIG_CBSIZE) & ~0xF);
-	kbd = (bd_t *)(((ulong)cmdline - sizeof(bd_t)) & ~0xF);
-
-	printf("cmdline: %p kbd: %p\n", cmdline, kbd);
-
-	if ((c = getenv("bootargs")) == NULL)
-		c = "";
-
-	strcpy (cmdline, c);
-
-	cmd_start    = (ulong)cmdline;
-	cmd_end      = cmd_start + strlen(cmdline);
-
-	init_board_data(kbd);
-
-#ifdef	DEBUG
-	printf ("## cmdline at 0x%08lX ... 0x%08lX\n", cmd_start, cmd_end);
-
-//	do_bdinfo (NULL, 0, 0, NULL);
-#endif
-
-	if ((c = getenv ("clocks_in_mhz")) != NULL) {
-		/* convert all clock information to MHz */
-		kbd->bi_intfreq /= 1000000L;
-		kbd->bi_busfreq /= 1000000L;
-#if defined(CONFIG_MPC8220)
-		kbd->bi_inpfreq /= 1000000L;
-		kbd->bi_pcifreq /= 1000000L;
-		kbd->bi_pevfreq /= 1000000L;
-		kbd->bi_flbfreq /= 1000000L;
-		kbd->bi_vcofreq /= 1000000L;
-#endif
-#if defined(CONFIG_CPM2)
-		kbd->bi_cpmfreq /= 1000000L;
-		kbd->bi_brgfreq /= 1000000L;
-		kbd->bi_sccfreq /= 1000000L;
-		kbd->bi_vco     /= 1000000L;
-#endif
-#if defined(CONFIG_MPC5xxx)
-		kbd->bi_ipbfreq /= 1000000L;
-		kbd->bi_pcifreq /= 1000000L;
-#endif /* CONFIG_MPC5xxx */
-	}
-
-	kernel = (void (*)(bd_t *, ulong, ulong, ulong, ulong))image_get_ep(os_header); /* FIXME */
-
-#if defined(CFG_INIT_RAM_LOCK) && !defined(CONFIG_E500)
-	unlock_ram_in_cache();
-#endif
-
-#ifdef CONFIG_OF_FLAT_TREE
-	/* move of_flat_tree if needed */
-	if (of_data) {
-		ulong of_start, of_len;
-		of_len = ((struct boot_param_header *)of_data)->totalsize;
-		/* provide extra 8k pad */
-		if (initrd_data)
-			of_start = (unsigned long)initrd_data - of_len - 8192;
-		else
-			of_start  = (ulong)kbd - of_len - 8192;
-		of_start &= ~(4096 - 1);	/* align on page */
-		debug ("## device tree at 0x%p ... 0x%p (len=%ld=0x%lX)\n",
-			of_data, of_data + of_len - 1, of_len, of_len);
-
-		of_flat_tree = (char *)of_start;
-		printf ("   Loading Device Tree to %08lx, end %08lx ... ",
-			of_start, of_start + of_len - 1);
-		memmove ((void *)of_start, (void *)of_data, of_len);
-	}
-#endif
-
-	/*
-	 * Linux Kernel Parameters (passing board info data):
-	 *   r3: ptr to board info data
-	 *   r4: initrd_start or 0 if no initrd
-	 *   r5: initrd_end - unused if r4 is 0
-	 *   r6: Start of command line string
-	 *   r7: End   of command line string
-	 */
-#ifdef CONFIG_OF_FLAT_TREE
-	if (!of_flat_tree)	/* no device tree; boot old style */
-#endif
-		(*kernel) (kbd, (ulong)initrd_data, initrd_end, cmd_start, cmd_end);
-		/* does not return */
-
-#ifdef CONFIG_OF_FLAT_TREE
-	/*
 	 * Linux Kernel Parameters (passing device tree):
 	 *   r3: ptr to OF flat tree, followed by the board info data
 	 *   r4: physical pointer to the kernel itself
@@ -248,11 +32,8 @@ static int do_bootm_linux(struct image_data *idata)
 	 *   r6: NULL
 	 *   r7: NULL
 	 */
-	ft_setup(of_flat_tree, kbd, (long)initrd_data, initrd_end);
-	ft_cpu_setup(of_flat_tree, kbd);
+	kernel(data->oftree, kernel, 0, 0, 0);
 
-	(*kernel) ((bd_t *)of_flat_tree, (ulong)kernel, 0, 0, 0);
-#endif
 	reset_cpu(0);
 
 	/* not reached */
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index d695b9b..62ddb1f 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -34,12 +34,9 @@
 #include <init.h>
 #include <types.h>
 #include <errno.h>
+#include <of.h>
 #include <mach/clocks.h>
 
-#if defined(CONFIG_OF_FLAT_TREE)
-#include <ft_build.h>
-#endif
-
 int checkcpu (void)
 {
 	ulong clock = get_cpu_clock();
@@ -83,27 +80,26 @@ void __noreturn reset_cpu (unsigned long addr)
 
 /* ------------------------------------------------------------------------- */
 
-#ifdef CONFIG_OF_FLAT_TREE
-void
-ft_cpu_setup(void *blob, bd_t *bd)
+#ifdef CONFIG_OFTREE
+static int of_mpc5200_fixup(struct fdt_header *fdt)
+{
+	char *cpu_path = "/cpus/PowerPC,5200@0";
+	int div = in_8((void*)CFG_MBAR + 0x204) & 0x0020 ? 8 : 4;
+
+	do_fixup_by_path_u32(fdt, cpu_path, "timebase-frequency", get_timebase_clock(), 1);
+	do_fixup_by_path_u32(fdt, cpu_path, "bus-frequency", get_bus_clock(), 1);
+	do_fixup_by_path_u32(fdt, cpu_path, "clock-frequency", get_cpu_clock(), 1);
+	do_fixup_by_path_u32(fdt, "/soc5200@f0000000", "bus-frequency", get_ipb_clock(), 1);
+	do_fixup_by_path_u32(fdt, "/soc5200@f0000000", "system-frequency",
+				get_bus_clock() * div, 1);
+	return 0;
+}
+
+static int of_register_mpc5200_fixup(void)
 {
-	u32 *p;
-	int len;
-
-	/* Core XLB bus frequency */
-	p = ft_get_prop(blob, "/cpus/" OF_CPU "/bus-frequency", &len);
-	if (p != NULL)
-		*p = cpu_to_be32(get_bus_clock());
-
-	/* SOC peripherals use the IPB bus frequency */
-	p = ft_get_prop(blob, "/" OF_SOC "/bus-frequency", &len);
-	if (p != NULL)
-		*p = cpu_to_be32(get_ipb_clock());
-
-	p = ft_get_prop(blob, "/" OF_SOC "/ethernet@3000/mac-address", &len);
-	if (p != NULL)
-		memcpy(p, bd->bi_enetaddr, 6);
+	return of_register_fixup(of_mpc5200_fixup);
 }
+late_initcall(of_register_mpc5200_fixup);
 #endif
 
 int cpu_init_board_data(bd_t *bd)
diff --git a/commands/bootm.c b/commands/bootm.c
index f97a842..265ad46 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -38,6 +38,7 @@
 #include <fs.h>
 #include <errno.h>
 #include <boot.h>
+#include <of.h>
 #include <rtc.h>
 #include <init.h>
 #include <magicvar.h>
@@ -144,6 +145,10 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 		}
 	}
 
+#ifdef CONFIG_OFTREE
+	data.oftree = of_get_fixed_tree();
+#endif
+
 	if (optind == argc) {
 		ret = COMMAND_ERROR_USAGE;
 		goto err_out;
diff --git a/include/boot.h b/include/boot.h
index b67e034..297b944 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -7,7 +7,7 @@
 struct image_data {
 	struct image_handle *os;
 	struct image_handle *initrd;
-	const char *oftree;
+	void *oftree;
 	int verify;
 	unsigned long initrd_address;
 	unsigned long initrd_size;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
