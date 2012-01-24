Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rpfa7-0004mZ-RY
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 12:34:57 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Subject: [PATCH 3/9] Added support for the mpc8xxx architecture.
Date: Tue, 24 Jan 2012 12:33:57 +0000
Message-Id: <1327408443-3519-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
References: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
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
To: barebox@lists.infradead.org

The mpc8xxx directory contains support for the mpc85xx.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc8xxx/Kconfig                     |   72 +
 arch/ppc/mach-mpc8xxx/Makefile                    |    6 +
 arch/ppc/mach-mpc8xxx/cpuid.c                     |  133 ++
 arch/ppc/mach-mpc8xxx/fdt_8xxx.c                  |  266 +++
 arch/ppc/mach-mpc8xxx/fsl_law.c                   |  259 +++
 arch/ppc/mach-mpc8xxx/fsl_lbc.c                   |  149 ++
 arch/ppc/mach-mpc8xxx/include/mach/README         |    1 +
 arch/ppc/mach-mpc8xxx/include/mach/clock_config.h |    7 +
 arch/ppc/mach-mpc8xxx/include/mach/clocks.h       |    8 +
 arch/ppc/mach-mpc8xxx/include/mach/early_udelay.h |   33 +
 arch/ppc/mach-mpc8xxx/include/mach/immap_85xx.h   | 2339 +++++++++++++++++++++
 arch/ppc/mach-mpc8xxx/include/mach/mpc85xx.h      |   29 +
 arch/ppc/mach-mpc8xxx/include/mach/nand_upm.h     |   36 +
 arch/ppc/mach-mpc8xxx/include/mach/ppc_asm.tmpl   |  299 +++
 arch/ppc/mach-mpc8xxx/include/mach/tsec.h         |  664 ++++++
 arch/ppc/mach-mpc8xxx/include/mach/uart.h         |   38 +
 arch/ppc/mach-mpc8xxx/io.S                        |  128 ++
 arch/ppc/mach-mpc8xxx/mpc85xx/Makefile            |   14 +
 arch/ppc/mach-mpc8xxx/mpc85xx/cpu.c               |  347 +++
 arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init.c          |  263 +++
 arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init_early.c    |   80 +
 arch/ppc/mach-mpc8xxx/mpc85xx/fdt.c               |  490 +++++
 arch/ppc/mach-mpc8xxx/mpc85xx/fixed_ivor.S        |   79 +
 arch/ppc/mach-mpc8xxx/mpc85xx/interrupts.c        |  113 +
 arch/ppc/mach-mpc8xxx/mpc85xx/mp.c                |  408 ++++
 arch/ppc/mach-mpc8xxx/mpc85xx/mp.h                |   22 +
 arch/ppc/mach-mpc8xxx/mpc85xx/mpc8544_serdes.c    |   95 +
 arch/ppc/mach-mpc8xxx/mpc85xx/p2020_serdes.c      |   73 +
 arch/ppc/mach-mpc8xxx/mpc85xx/release.S           |  317 +++
 arch/ppc/mach-mpc8xxx/mpc85xx/resetvec.S          |    2 +
 arch/ppc/mach-mpc8xxx/mpc85xx/speed.c             |  213 ++
 arch/ppc/mach-mpc8xxx/mpc85xx/start.S             | 1236 +++++++++++
 arch/ppc/mach-mpc8xxx/mpc85xx/tlb.c               |  307 +++
 arch/ppc/mach-mpc8xxx/mpc85xx/traps.c             |  329 +++
 34 files changed, 8855 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/mach-mpc8xxx/Kconfig
 create mode 100644 arch/ppc/mach-mpc8xxx/Makefile
 create mode 100644 arch/ppc/mach-mpc8xxx/cpuid.c
 create mode 100644 arch/ppc/mach-mpc8xxx/fdt_8xxx.c
 create mode 100644 arch/ppc/mach-mpc8xxx/fsl_law.c
 create mode 100644 arch/ppc/mach-mpc8xxx/fsl_lbc.c
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/README
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/clock_config.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/clocks.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/early_udelay.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/immap_85xx.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/mpc85xx.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/nand_upm.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/ppc_asm.tmpl
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/tsec.h
 create mode 100644 arch/ppc/mach-mpc8xxx/include/mach/uart.h
 create mode 100644 arch/ppc/mach-mpc8xxx/io.S
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/Makefile
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/cpu.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init_early.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/fdt.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/fixed_ivor.S
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/interrupts.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/mp.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/mp.h
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/mpc8544_serdes.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/p2020_serdes.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/release.S
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/resetvec.S
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/speed.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/start.S
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/tlb.c
 create mode 100644 arch/ppc/mach-mpc8xxx/mpc85xx/traps.c

diff --git a/arch/ppc/mach-mpc8xxx/Kconfig b/arch/ppc/mach-mpc8xxx/Kconfig
new file mode 100644
index 0000000..c5368af
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/Kconfig
@@ -0,0 +1,72 @@
+if ARCH_MPC8XXX
+
+config TEXT_BASE
+    hex
+	default 0xfff80000 if DA923
+	default 0xeff80000 if P1_P2_RDB
+
+config BOARDINFO
+	default "DA923" if DA923
+	default "P1_P2_RDB" if P1_P2_RDB
+
+config MPC85xx
+	bool
+	default y if DA923
+    default y if P1_P2_RDB
+
+config MPC8544
+	bool
+	default y if DA923
+
+comment "Board selection"
+
+choice
+	prompt "Board selection"
+
+config DA923
+	bool "DA923, GBX460"
+	select HAS_TSEC
+	select HAS_CFI
+	help
+	Say Y here if you are using the GE Intelligent Platforms
+	      board aka DA923/GBX460.
+
+config P1_P2_RDB
+	bool "P1_P2_RDB"
+	help
+	Say Y here if you are using the Freescale P1_P2_RDB
+
+endchoice
+
+if P1_P2_RDB
+choice
+	prompt "P1_P2P_RDB development board selection"
+	config P1011
+		bool "P1011RDB"
+		help
+		Say Y if using the P1011RDB
+
+	config P1020
+		bool "P1020RDB"
+		help
+		Say Y if using the P1020RDB
+
+	config P2010
+		bool "P2010RDB"
+		help
+		Say Y if using the P2010RDB
+
+	config P2020
+		bool "P2020RDB"
+		help
+		Say Y if using the P2020RDB
+
+endchoice
+
+config MP
+    bool
+    default y if P2020
+    default y if P1020
+
+endif
+endif
diff --git a/arch/ppc/mach-mpc8xxx/Makefile b/arch/ppc/mach-mpc8xxx/Makefile
new file mode 100644
index 0000000..0721cf8
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/Makefile
@@ -0,0 +1,6 @@
+obj-y 				+= cpuid.o
+obj-y				+= fsl_lbc.o
+obj-y				+= fsl_law.o
+#obj-y				+= uart_early.o
+obj-$(CONFIG_OF_FLAT_TREE)	+= fdt_8xxx.o
+obj-$(CONFIG_MPC85xx)	+= mpc85xx/
diff --git a/arch/ppc/mach-mpc8xxx/cpuid.c b/arch/ppc/mach-mpc8xxx/cpuid.c
new file mode 100644
index 0000000..7d3c09d
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/cpuid.c
@@ -0,0 +1,133 @@
+/*
+ * Copyright 2009-2011 Freescale Semiconductor, Inc.
+ *
+ * This file is derived from arch/powerpc/cpu/mpc85xx/cpu.c and
+ * arch/powerpc/cpu/mpc86xx/cpu.c. Basically this file contains
+ * cpu specific common code for 85xx/86xx processors.
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <common.h>
+#include <command.h>
+#include <asm/cache.h>
+#include <asm/io.h>
+#include <asm/global_data.h>
+
+struct cpu_type cpu_type_list [] = {
+#if defined(CONFIG_MPC85xx)
+	CPU_TYPE_ENTRY(8533, 8533, 1),
+	CPU_TYPE_ENTRY(8533, 8533_E, 1),
+	CPU_TYPE_ENTRY(8535, 8535, 1),
+	CPU_TYPE_ENTRY(8535, 8535_E, 1),
+	CPU_TYPE_ENTRY(8536, 8536, 1),
+	CPU_TYPE_ENTRY(8536, 8536_E, 1),
+	CPU_TYPE_ENTRY(8540, 8540, 1),
+	CPU_TYPE_ENTRY(8541, 8541, 1),
+	CPU_TYPE_ENTRY(8541, 8541_E, 1),
+	CPU_TYPE_ENTRY(8543, 8543, 1),
+	CPU_TYPE_ENTRY(8543, 8543_E, 1),
+	CPU_TYPE_ENTRY(8544, 8544, 1),
+	CPU_TYPE_ENTRY(8544, 8544_E, 1),
+	CPU_TYPE_ENTRY(8545, 8545, 1),
+	CPU_TYPE_ENTRY(8545, 8545_E, 1),
+	CPU_TYPE_ENTRY(8547, 8547_E, 1),
+	CPU_TYPE_ENTRY(8548, 8548, 1),
+	CPU_TYPE_ENTRY(8548, 8548_E, 1),
+	CPU_TYPE_ENTRY(8555, 8555, 1),
+	CPU_TYPE_ENTRY(8555, 8555_E, 1),
+	CPU_TYPE_ENTRY(8560, 8560, 1),
+	CPU_TYPE_ENTRY(8567, 8567, 1),
+	CPU_TYPE_ENTRY(8567, 8567_E, 1),
+	CPU_TYPE_ENTRY(8568, 8568, 1),
+	CPU_TYPE_ENTRY(8568, 8568_E, 1),
+	CPU_TYPE_ENTRY(8569, 8569, 1),
+	CPU_TYPE_ENTRY(8569, 8569_E, 1),
+	CPU_TYPE_ENTRY(8572, 8572, 2),
+	CPU_TYPE_ENTRY(8572, 8572_E, 2),
+	CPU_TYPE_ENTRY(P1010, P1010, 1),
+	CPU_TYPE_ENTRY(P1010, P1010_E, 1),
+	CPU_TYPE_ENTRY(P1011, P1011, 1),
+	CPU_TYPE_ENTRY(P1011, P1011_E, 1),
+	CPU_TYPE_ENTRY(P1012, P1012, 1),
+	CPU_TYPE_ENTRY(P1012, P1012_E, 1),
+	CPU_TYPE_ENTRY(P1013, P1013, 1),
+	CPU_TYPE_ENTRY(P1014, P1014_E, 1),
+	CPU_TYPE_ENTRY(P1014, P1014, 1),
+	CPU_TYPE_ENTRY(P1013, P1013_E, 1),
+	CPU_TYPE_ENTRY(P1020, P1020, 2),
+	CPU_TYPE_ENTRY(P1020, P1020_E, 2),
+	CPU_TYPE_ENTRY(P1021, P1021, 2),
+	CPU_TYPE_ENTRY(P1021, P1021_E, 2),
+	CPU_TYPE_ENTRY(P1022, P1022, 2),
+	CPU_TYPE_ENTRY(P1022, P1022_E, 2),
+	CPU_TYPE_ENTRY(P2010, P2010, 1),
+	CPU_TYPE_ENTRY(P2010, P2010_E, 1),
+	CPU_TYPE_ENTRY(P2020, P2020, 2),
+	CPU_TYPE_ENTRY(P2020, P2020_E, 2),
+	CPU_TYPE_ENTRY(P2040, P2040, 4),
+	CPU_TYPE_ENTRY(P2040, P2040_E, 4),
+	CPU_TYPE_ENTRY(P3041, P3041, 4),
+	CPU_TYPE_ENTRY(P3041, P3041_E, 4),
+	CPU_TYPE_ENTRY(P4040, P4040, 4),
+	CPU_TYPE_ENTRY(P4040, P4040_E, 4),
+	CPU_TYPE_ENTRY(P4080, P4080, 8),
+	CPU_TYPE_ENTRY(P4080, P4080_E, 8),
+	CPU_TYPE_ENTRY(P5010, P5010, 1),
+	CPU_TYPE_ENTRY(P5010, P5010_E, 1),
+	CPU_TYPE_ENTRY(P5020, P5020, 2),
+	CPU_TYPE_ENTRY(P5020, P5020_E, 2),
+#elif defined(CONFIG_MPC86xx)
+	CPU_TYPE_ENTRY(8610, 8610, 1),
+	CPU_TYPE_ENTRY(8641, 8641, 2),
+	CPU_TYPE_ENTRY(8641D, 8641D, 2),
+#endif
+};
+
+struct cpu_type cpu_type_unknown = CPU_TYPE_ENTRY(Unknown, Unknown, 1);
+
+struct cpu_type *identify_cpu(u32 ver)
+{
+	int i;
+	for (i = 0; i < ARRAY_SIZE(cpu_type_list); i++) {
+		if (cpu_type_list[i].soc_ver == ver)
+			return &cpu_type_list[i];
+	}
+	return &cpu_type_unknown;
+}
+
+int cpu_numcores() {
+	ccsr_pic_t __iomem *pic = (void *)CONFIG_SYS_MPC8xxx_PIC_ADDR;
+	struct cpu_type *cpu;
+	uint svr;
+	uint ver;
+
+	svr = get_svr();
+	ver = SVR_SOC_VER(svr);
+	cpu = identify_cpu(ver);
+
+	/* better to query feature reporting register than just assume 1 */
+#define MPC8xxx_PICFRR_NCPU_MASK 0x00001f00
+#define MPC8xxx_PICFRR_NCPU_SHIFT 8
+	if (cpu == &cpu_type_unknown)
+		return ((in_be32(&pic->frr) & MPC8xxx_PICFRR_NCPU_MASK) >>
+			MPC8xxx_PICFRR_NCPU_SHIFT) + 1;
+
+	return cpu->num_cores;
+}
diff --git a/arch/ppc/mach-mpc8xxx/fdt_8xxx.c b/arch/ppc/mach-mpc8xxx/fdt_8xxx.c
new file mode 100644
index 0000000..6958ae6
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/fdt_8xxx.c
@@ -0,0 +1,266 @@
+/*
+ * Copyright 2009-2011 Freescale Semiconductor, Inc.
+ *
+ * This file is derived from arch/powerpc/cpu/mpc85xx/cpu.c and
+ * arch/powerpc/cpu/mpc86xx/cpu.c. Basically this file contains
+ * cpu specific common code for 85xx/86xx processors.
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <libfdt.h>
+#include <fdt_support.h>
+#include <asm/mp.h>
+#include <asm/fsl_enet.h>
+#include <asm/fsl_serdes.h>
+
+#if defined(CONFIG_MP) && (defined(CONFIG_MPC85xx) || defined(CONFIG_MPC86xx))
+static int ft_del_cpuhandle(void *blob, int cpuhandle)
+{
+	int off, ret = -FDT_ERR_NOTFOUND;
+
+	/* if we find a match, we'll delete at it which point the offsets are
+	 * invalid so we start over from the beginning
+	 */
+	off = fdt_node_offset_by_prop_value(blob, -1, "cpu-handle",
+						&cpuhandle, 4);
+	while (off != -FDT_ERR_NOTFOUND) {
+		fdt_delprop(blob, off, "cpu-handle");
+		ret = 1;
+		off = fdt_node_offset_by_prop_value(blob, -1, "cpu-handle",
+				&cpuhandle, 4);
+	}
+
+	return ret;
+}
+
+void ft_fixup_num_cores(void *blob) {
+	int off, num_cores, del_cores;
+
+	del_cores = 0;
+	num_cores = cpu_numcores();
+
+	off = fdt_node_offset_by_prop_value(blob, -1, "device_type", "cpu", 4);
+	while (off != -FDT_ERR_NOTFOUND) {
+		u32 *reg = (u32 *)fdt_getprop(blob, off, "reg", 0);
+
+		if ((*reg > num_cores-1) || (is_core_disabled(*reg))) {
+			int ph = fdt_get_phandle(blob, off);
+
+			/* Delete the cpu node once there are no cpu handles */
+			if (-FDT_ERR_NOTFOUND == ft_del_cpuhandle(blob, ph)) {
+				fdt_del_node(blob, off);
+				del_cores++;
+			}
+			/* either we deleted some cpu handles or the cpu node
+			 * so we reset the offset back to the start since we
+			 * can't trust the offsets anymore
+			 */
+			off = -1;
+		}
+		off = fdt_node_offset_by_prop_value(blob, off,
+				"device_type", "cpu", 4);
+	}
+	debug ("%x core system found\n", num_cores);
+	debug ("deleted %d extra core entry entries from device tree\n",
+								del_cores);
+}
+#endif /* defined(CONFIG_MPC85xx) || defined(CONFIG_MPC86xx) */
+
+#ifdef CONFIG_HAS_FSL_DR_USB
+void fdt_fixup_dr_usb(void *blob, bd_t *bd)
+{
+	char *mode;
+	char *type;
+	const char *compat = "fsl-usb2-dr";
+	const char *prop_mode = "dr_mode";
+	const char *prop_type = "phy_type";
+	int node_offset;
+	int err;
+
+	mode = getenv("usb_dr_mode");
+	type = getenv("usb_phy_type");
+	if (!mode && !type)
+		return;
+
+	node_offset = fdt_node_offset_by_compatible(blob, 0, compat);
+	if (node_offset < 0) {
+		printf("WARNING: could not find compatible node %s: %s.\n",
+			compat, fdt_strerror(node_offset));
+		return;
+	}
+
+	if (mode) {
+		err = fdt_setprop(blob, node_offset, prop_mode, mode,
+				  strlen(mode) + 1);
+		if (err < 0)
+			printf("WARNING: could not set %s for %s: %s.\n",
+			       prop_mode, compat, fdt_strerror(err));
+	}
+
+	if (type) {
+		err = fdt_setprop(blob, node_offset, prop_type, type,
+				  strlen(type) + 1);
+		if (err < 0)
+			printf("WARNING: could not set %s for %s: %s.\n",
+			       prop_type, compat, fdt_strerror(err));
+	}
+}
+#endif /* CONFIG_HAS_FSL_DR_USB */
+
+/*
+ * update crypto node properties to a specified revision of the SEC
+ * called with sec_rev == 0 if not on an E processor
+ */
+#if CONFIG_SYS_FSL_SEC_COMPAT == 2 /* SEC 2.x/3.x */
+void fdt_fixup_crypto_node(void *blob, int sec_rev)
+{
+	const struct sec_rev_prop {
+		u32 sec_rev;
+		u32 num_channels;
+		u32 channel_fifo_len;
+		u32 exec_units_mask;
+		u32 descriptor_types_mask;
+	} sec_rev_prop_list [] = {
+		{ 0x0200, 4, 24, 0x07e, 0x01010ebf }, /* SEC 2.0 */
+		{ 0x0201, 4, 24, 0x0fe, 0x012b0ebf }, /* SEC 2.1 */
+		{ 0x0202, 1, 24, 0x04c, 0x0122003f }, /* SEC 2.2 */
+		{ 0x0204, 4, 24, 0x07e, 0x012b0ebf }, /* SEC 2.4 */
+		{ 0x0300, 4, 24, 0x9fe, 0x03ab0ebf }, /* SEC 3.0 */
+		{ 0x0301, 4, 24, 0xbfe, 0x03ab0ebf }, /* SEC 3.1 */
+		{ 0x0303, 4, 24, 0x97c, 0x03a30abf }, /* SEC 3.3 */
+	};
+	char compat_strlist[ARRAY_SIZE(sec_rev_prop_list) *
+			    sizeof("fsl,secX.Y")];
+	int crypto_node, sec_idx, err;
+	char *p;
+	u32 val;
+
+	/* locate crypto node based on lowest common compatible */
+	crypto_node = fdt_node_offset_by_compatible(blob, -1, "fsl,sec2.0");
+	printf("crypto_node = %d, %d\n", crypto_node, -FDT_ERR_NOTFOUND);
+	if (crypto_node < 0)
+		return;
+
+	/* delete it if not on an E-processor */
+	if (crypto_node > 0 && !sec_rev) {
+		fdt_del_node(blob, crypto_node);
+		return;
+	}
+
+	/* else we got called for possible uprev */
+	for (sec_idx = 0; sec_idx < ARRAY_SIZE(sec_rev_prop_list); sec_idx++)
+	{
+		printf("sec_rev = 0x%x, 0x%x\n", sec_rev_prop_list[sec_idx].sec_rev, sec_rev);
+		if (sec_rev_prop_list[sec_idx].sec_rev == sec_rev)
+			break;
+	}
+
+	if (sec_idx == ARRAY_SIZE(sec_rev_prop_list)) {
+		puts("warning: unknown SEC revision number\n");
+		return;
+	}
+
+	val = cpu_to_fdt32(sec_rev_prop_list[sec_idx].num_channels);
+	err = fdt_setprop(blob, crypto_node, "fsl,num-channels", &val, 4);
+	if (err < 0)
+		printf("WARNING: could not set crypto property: %s\n",
+		       fdt_strerror(err));
+
+	val = cpu_to_fdt32(sec_rev_prop_list[sec_idx].descriptor_types_mask);
+	err = fdt_setprop(blob, crypto_node, "fsl,descriptor-types-mask", &val, 4);
+	if (err < 0)
+		printf("WARNING: could not set crypto property: %s\n",
+		       fdt_strerror(err));
+
+	val = cpu_to_fdt32(sec_rev_prop_list[sec_idx].exec_units_mask);
+	err = fdt_setprop(blob, crypto_node, "fsl,exec-units-mask", &val, 4);
+	if (err < 0)
+		printf("WARNING: could not set crypto property: %s\n",
+		       fdt_strerror(err));
+
+	val = cpu_to_fdt32(sec_rev_prop_list[sec_idx].channel_fifo_len);
+	err = fdt_setprop(blob, crypto_node, "fsl,channel-fifo-len", &val, 4);
+	if (err < 0)
+		printf("WARNING: could not set crypto property: %s\n",
+		       fdt_strerror(err));
+
+	val = 0;
+	while (sec_idx >= 0) {
+		p = compat_strlist + val;
+		val += sprintf(p, "fsl,sec%d.%d",
+			(sec_rev_prop_list[sec_idx].sec_rev & 0xff00) >> 8,
+			sec_rev_prop_list[sec_idx].sec_rev & 0x00ff) + 1;
+		sec_idx--;
+	}
+	err = fdt_setprop(blob, crypto_node, "compatible", &compat_strlist, val);
+	if (err < 0)
+		printf("WARNING: could not set crypto property: %s\n",
+		       fdt_strerror(err));
+}
+#elif CONFIG_SYS_FSL_SEC_COMPAT >= 4  /* SEC4 */
+void fdt_fixup_crypto_node(void *blob, int sec_rev)
+{
+	if (!sec_rev)
+		fdt_del_node_and_alias(blob, "crypto");
+}
+#endif
+
+int fdt_fixup_phy_connection(void *blob, int offset, enum fsl_phy_enet_if phyc)
+{
+	static const char *fsl_phy_enet_if_str[] = {
+		[MII]		= "mii",
+		[RMII]		= "rmii",
+		[GMII]		= "gmii",
+		[RGMII]		= "rgmii",
+		[RGMII_ID]	= "rgmii-id",
+		[RGMII_RXID]	= "rgmii-rxid",
+		[SGMII]		= "sgmii",
+		[TBI]		= "tbi",
+		[RTBI]		= "rtbi",
+		[XAUI]		= "xgmii",
+		[FSL_ETH_IF_NONE] = "",
+	};
+
+	if (phyc > ARRAY_SIZE(fsl_phy_enet_if_str))
+		return fdt_setprop_string(blob, offset, "phy-connection-type", "");
+
+	return fdt_setprop_string(blob, offset, "phy-connection-type",
+					 fsl_phy_enet_if_str[phyc]);
+}
+
+#ifdef CONFIG_SYS_SRIO
+void ft_srio_setup(void *blob)
+{
+#ifdef CONFIG_SRIO1
+	if (!is_serdes_configured(SRIO1)) {
+		fdt_del_node_and_alias(blob, "rio0");
+	}
+#else
+	fdt_del_node_and_alias(blob, "rio0");
+#endif
+#ifdef CONFIG_SRIO2
+	if (!is_serdes_configured(SRIO2)) {
+		fdt_del_node_and_alias(blob, "rio1");
+	}
+#else
+	fdt_del_node_and_alias(blob, "rio1");
+#endif
+}
+#endif
diff --git a/arch/ppc/mach-mpc8xxx/fsl_law.c b/arch/ppc/mach-mpc8xxx/fsl_law.c
new file mode 100644
index 0000000..3d15779
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/fsl_law.c
@@ -0,0 +1,259 @@
+/*
+ * Copyright 2008-2011 Freescale Semiconductor, Inc.
+ *
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/global_data.h>
+#include <asm/fsl_law.h>
+#include <asm/io.h>
+
+DECLARE_GLOBAL_DATA_PTR;
+
+#define FSL_HW_NUM_LAWS CONFIG_SYS_FSL_NUM_LAWS
+
+#ifdef CONFIG_FSL_CORENET
+#define LAW_BASE (CONFIG_SYS_FSL_CORENET_CCM_ADDR)
+#define LAWAR_ADDR(x) (&((ccsr_local_t *)LAW_BASE)->law[x].lawar)
+#define LAWBARH_ADDR(x) (&((ccsr_local_t *)LAW_BASE)->law[x].lawbarh)
+#define LAWBARL_ADDR(x) (&((ccsr_local_t *)LAW_BASE)->law[x].lawbarl)
+#define LAWBAR_SHIFT 0
+#else
+#define LAW_BASE (CONFIG_SYS_IMMR + 0xc08)
+#define LAWAR_ADDR(x) ((u32 *)LAW_BASE + 8 * x + 2)
+#define LAWBAR_ADDR(x) ((u32 *)LAW_BASE + 8 * x)
+#define LAWBAR_SHIFT 12
+#endif
+
+
+static inline phys_addr_t get_law_base_addr(int idx)
+{
+#ifdef CONFIG_FSL_CORENET
+	return (phys_addr_t)
+		((u64)in_be32(LAWBARH_ADDR(idx)) << 32) |
+		in_be32(LAWBARL_ADDR(idx));
+#else
+	return (phys_addr_t)in_be32(LAWBAR_ADDR(idx)) << LAWBAR_SHIFT;
+#endif
+}
+
+static inline void set_law_base_addr(int idx, phys_addr_t addr)
+{
+#ifdef CONFIG_FSL_CORENET
+	out_be32(LAWBARL_ADDR(idx), addr & 0xffffffff);
+	out_be32(LAWBARH_ADDR(idx), (u64)addr >> 32);
+#else
+	out_be32(LAWBAR_ADDR(idx), addr >> LAWBAR_SHIFT);
+#endif
+}
+
+void set_law(u8 idx, phys_addr_t addr, enum law_size sz, enum law_trgt_if id)
+{
+	gd->used_laws |= (1 << idx);
+
+	out_be32(LAWAR_ADDR(idx), 0);
+	set_law_base_addr(idx, addr);
+	out_be32(LAWAR_ADDR(idx), LAW_EN | ((u32)id << 20) | (u32)sz);
+
+	/* Read back so that we sync the writes */
+	in_be32(LAWAR_ADDR(idx));
+}
+
+void disable_law(u8 idx)
+{
+	gd->used_laws &= ~(1 << idx);
+
+	out_be32(LAWAR_ADDR(idx), 0);
+	set_law_base_addr(idx, 0);
+
+	/* Read back so that we sync the writes */
+	in_be32(LAWAR_ADDR(idx));
+
+	return;
+}
+
+#ifndef CONFIG_NAND_SPL
+static int get_law_entry(u8 i, struct law_entry *e)
+{
+	u32 lawar;
+
+	lawar = in_be32(LAWAR_ADDR(i));
+
+	if (!(lawar & LAW_EN))
+		return 0;
+
+	e->addr = get_law_base_addr(i);
+	e->size = lawar & 0x3f;
+	e->trgt_id = (lawar >> 20) & 0xff;
+
+	return 1;
+}
+#endif
+
+int set_next_law(phys_addr_t addr, enum law_size sz, enum law_trgt_if id)
+{
+	u32 idx = ffz(gd->used_laws);
+
+	if (idx >= FSL_HW_NUM_LAWS)
+		return -1;
+
+	set_law(idx, addr, sz, id);
+
+	return idx;
+}
+
+#ifndef CONFIG_NAND_SPL
+int set_last_law(phys_addr_t addr, enum law_size sz, enum law_trgt_if id)
+{
+	u32 idx;
+
+	/* we have no LAWs free */
+	if (gd->used_laws == -1)
+		return -1;
+
+	/* grab the last free law */
+	idx = __ilog2(~(gd->used_laws));
+
+	if (idx >= FSL_HW_NUM_LAWS)
+		return -1;
+
+	set_law(idx, addr, sz, id);
+
+	return idx;
+}
+
+struct law_entry find_law(phys_addr_t addr)
+{
+	struct law_entry entry;
+	int i;
+
+	entry.index = -1;
+	entry.addr = 0;
+	entry.size = 0;
+	entry.trgt_id = 0;
+
+	for (i = 0; i < FSL_HW_NUM_LAWS; i++) {
+		u64 upper;
+
+		if (!get_law_entry(i, &entry))
+			continue;
+
+		upper = entry.addr + (2ull << entry.size);
+		if ((addr >= entry.addr) && (addr < upper)) {
+			entry.index = i;
+			break;
+		}
+	}
+
+	return entry;
+}
+
+void print_laws(void)
+{
+	int i;
+	u32 lawar;
+
+	for (i = 0; i < FSL_HW_NUM_LAWS; i++) {
+		lawar = in_be32(LAWAR_ADDR(i));
+#ifdef CONFIG_FSL_CORENET
+		printf("LAWBARH%02d: 0x%08x LAWBARL%02d: 0x%08x",
+		       i, in_be32(LAWBARH_ADDR(i)),
+		       i, in_be32(LAWBARL_ADDR(i)));
+#else
+		printf("LAWBAR%02d: 0x%08x", i, in_be32(LAWBAR_ADDR(i)));
+#endif
+		printf(" LAWAR0x%02d: 0x%08x\n", i, lawar);
+		printf("\t(EN: %d TGT: 0x%02x SIZE: ",
+		       (lawar & LAW_EN) ? 1 : 0, (lawar >> 20) & 0xff);
+		printf("(%lld)\n", lawar_size(lawar));
+	}
+
+	return;
+}
+
+/* use up to 2 LAWs for DDR, used the last available LAWs */
+int set_ddr_laws(u64 start, u64 sz, enum law_trgt_if id)
+{
+	u64 start_align, law_sz;
+	int law_sz_enc;
+
+	if (start == 0)
+		start_align = 1ull << (LAW_SIZE_32G + 1);
+	else
+		start_align = 1ull << (ffs64(start) - 1);
+	law_sz = min(start_align, sz);
+	law_sz_enc = __ilog2_u64(law_sz) - 1;
+
+	if (set_last_law(start, law_sz_enc, id) < 0)
+		return -1;
+
+	/* recalculate size based on what was actually covered by the law */
+	law_sz = 1ull << __ilog2_u64(law_sz);
+
+	/* do we still have anything to map */
+	sz = sz - law_sz;
+	if (sz) {
+		start += law_sz;
+
+		start_align = 1ull << (ffs64(start) - 1);
+		law_sz = min(start_align, sz);
+		law_sz_enc = __ilog2_u64(law_sz) - 1;
+
+		if (set_last_law(start, law_sz_enc, id) < 0)
+			return -1;
+	} else {
+		return 0;
+	}
+
+	/* do we still have anything to map */
+	sz = sz - law_sz;
+	if (sz)
+		return 1;
+
+	return 0;
+}
+#endif
+
+void init_laws(void)
+{
+	int i;
+
+#if FSL_HW_NUM_LAWS < 32
+	gd->used_laws = ~((1 << FSL_HW_NUM_LAWS) - 1);
+#elif FSL_HW_NUM_LAWS == 32
+	gd->used_laws = 0;
+#else
+#error FSL_HW_NUM_LAWS can not be greater than 32 w/o code changes
+#endif
+
+	for (i = 0; i < num_law_entries; i++) {
+		if (law_table[i].index == -1)
+			set_next_law(law_table[i].addr, law_table[i].size,
+					law_table[i].trgt_id);
+		else
+			set_law(law_table[i].index, law_table[i].addr,
+				law_table[i].size, law_table[i].trgt_id);
+	}
+
+	return ;
+}
diff --git a/arch/ppc/mach-mpc8xxx/fsl_lbc.c b/arch/ppc/mach-mpc8xxx/fsl_lbc.c
new file mode 100644
index 0000000..7598ebf
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/fsl_lbc.c
@@ -0,0 +1,149 @@
+/*
+ * Copyright 2010-2011 Freescale Semiconductor, Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * Version 2 as published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <asm/fsl_lbc.h>
+
+#ifdef CONFIG_MPC85xx
+/* Boards should provide their own version of this if they use lbc sdram */
+void __lbc_sdram_init(void)
+{
+	/* Do nothing */
+}
+void lbc_sdram_init(void) __attribute__((weak, alias("__lbc_sdram_init")));
+#endif
+
+
+void print_lbc_regs(void)
+{
+	int i;
+
+	printf("\nLocal Bus Controller Registers\n");
+	for (i = 0; i < 8; i++) {
+		printf("BR%d\t0x%08X\tOR%d\t0x%08X\n",
+		       i, get_lbc_br(i), i, get_lbc_or(i));
+	}
+}
+
+void init_early_memctl_regs(void)
+{
+	uint init_br1 = 1;
+
+#ifdef CONFIG_SYS_FSL_ERRATUM_ELBC_A001
+	/* Set the local bus monitor timeout value to the maximum */
+	clrsetbits_be32(&(LBC_BASE_ADDR)->lbcr, LBCR_BMT|LBCR_BMTPS, 0xf);
+#endif
+
+#ifdef CONFIG_MPC85xx
+	/* if cs1 is already set via debugger, leave cs0/cs1 alone */
+	if (get_lbc_br(1) & BR_V)
+		init_br1 = 0;
+#endif
+
+	/*
+	 * Map banks 0 (and maybe 1) to the FLASH banks 0 (and 1) at
+	 * preliminary addresses - these have to be modified later
+	 * when FLASH size has been determined
+	 */
+#if defined(CONFIG_SYS_OR0_REMAP)
+	set_lbc_or(0, CONFIG_SYS_OR0_REMAP);
+#endif
+#if defined(CONFIG_SYS_OR1_REMAP)
+	set_lbc_or(1, CONFIG_SYS_OR1_REMAP);
+#endif
+	/* now restrict to preliminary range */
+	if (init_br1) {
+		set_lbc_br(0, CONFIG_SYS_BR0_PRELIM);
+		set_lbc_or(0, CONFIG_SYS_OR0_PRELIM);
+
+#if defined(CONFIG_SYS_BR1_PRELIM) && defined(CONFIG_SYS_OR1_PRELIM)
+		set_lbc_or(1, CONFIG_SYS_OR1_PRELIM);
+		set_lbc_br(1, CONFIG_SYS_BR1_PRELIM);
+#endif
+	}
+
+#if defined(CONFIG_SYS_BR2_PRELIM) && defined(CONFIG_SYS_OR2_PRELIM)
+	set_lbc_or(2, CONFIG_SYS_OR2_PRELIM);
+	set_lbc_br(2, CONFIG_SYS_BR2_PRELIM);
+#endif
+
+#if defined(CONFIG_SYS_BR3_PRELIM) && defined(CONFIG_SYS_OR3_PRELIM)
+	set_lbc_or(3, CONFIG_SYS_OR3_PRELIM);
+	set_lbc_br(3, CONFIG_SYS_BR3_PRELIM);
+#endif
+
+#if defined(CONFIG_SYS_BR4_PRELIM) && defined(CONFIG_SYS_OR4_PRELIM)
+	set_lbc_or(4, CONFIG_SYS_OR4_PRELIM);
+	set_lbc_br(4, CONFIG_SYS_BR4_PRELIM);
+#endif
+
+#if defined(CONFIG_SYS_BR5_PRELIM) && defined(CONFIG_SYS_OR5_PRELIM)
+	set_lbc_or(5, CONFIG_SYS_OR5_PRELIM);
+	set_lbc_br(5, CONFIG_SYS_BR5_PRELIM);
+#endif
+
+#if defined(CONFIG_SYS_BR6_PRELIM) && defined(CONFIG_SYS_OR6_PRELIM)
+	set_lbc_or(6, CONFIG_SYS_OR6_PRELIM);
+	set_lbc_br(6, CONFIG_SYS_BR6_PRELIM);
+#endif
+
+#if defined(CONFIG_SYS_BR7_PRELIM) && defined(CONFIG_SYS_OR7_PRELIM)
+	set_lbc_or(7, CONFIG_SYS_OR7_PRELIM);
+	set_lbc_br(7, CONFIG_SYS_BR7_PRELIM);
+#endif
+}
+
+/*
+ * Configures a UPM. The function requires the respective MxMR to be set
+ * before calling this function. "size" is the number or entries, not a sizeof.
+ */
+void upmconfig(uint upm, uint *table, uint size)
+{
+	fsl_lbc_t *lbc = LBC_BASE_ADDR;
+	int i, mdr, mad, old_mad = 0;
+	u32 mask = (~MxMR_OP_MSK & ~MxMR_MAD_MSK);
+	u32 msel = BR_UPMx_TO_MSEL(upm);
+	u32 *mxmr = &lbc->mamr + upm;
+	volatile u8 *dummy = NULL;
+
+	if (upm < UPMA || upm > UPMC) {
+		printf("Error: %s() Bad UPM index %d\n", __func__, upm);
+		hang();
+	}
+
+	/*
+	 * Find the address for the dummy write - scan all of the BRs until we
+	 * find one matching the UPM and extract the base address bits from it.
+	 */
+	for (i = 0; i < 8; i++) {
+		if ((get_lbc_br(i) & (BR_V | BR_MSEL)) == (BR_V | msel)) {
+			dummy = (volatile u8 *)(get_lbc_br(i) & BR_BA);
+			break;
+		}
+	}
+
+	if (!dummy) {
+		printf("Error: %s() No matching BR\n", __func__);
+		hang();
+	}
+
+	/* Program UPM using steps outlined by the reference manual */
+	for (i = 0; i < size; i++) {
+		out_be32(mxmr, (in_be32(mxmr) & mask) | MxMR_OP_WARR | i);
+		out_be32(&lbc->mdr, table[i]);
+		mdr = in_be32(&lbc->mdr);
+		*dummy = 0;
+		do {
+			mad = in_be32(mxmr) & MxMR_MAD_MSK;
+		} while (mad <= old_mad && !(!mad && i == (size-1)));
+		old_mad = mad;
+	}
+
+	/* Return to normal operation */
+	out_be32(mxmr, (in_be32(mxmr) & mask) | MxMR_OP_NORM);
+}
diff --git a/arch/ppc/mach-mpc8xxx/include/mach/README b/arch/ppc/mach-mpc8xxx/include/mach/README
new file mode 100644
index 0000000..ae3193e
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/include/mach/README
@@ -0,0 +1 @@
+ppc_asm.tmpl should be in include /asm
diff --git a/arch/ppc/mach-mpc8xxx/include/mach/clock_config.h b/arch/ppc/mach-mpc8xxx/include/mach/clock_config.h
new file mode 100644
index 0000000..3e81164
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/include/mach/clock_config.h
@@ -0,0 +1,7 @@
+#ifndef __ASM_ARCH_CLOCK_CONFIG_H
+#define __ASM_ARCH_CLOCK_CONFIG_H
+
+#define CONFIG_CLOCKSOURCE_MASK     64
+#define CONFIG_CLOCKSOURCE_SHIFT    22
+
+#endif /* __ASM_ARCH_CLOCK_CONFIG_H */
diff --git a/arch/ppc/mach-mpc8xxx/include/mach/clocks.h b/arch/ppc/mach-mpc8xxx/include/mach/clocks.h
new file mode 100644
index 0000000..370c05c
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/include/mach/clocks.h
@@ -0,0 +1,8 @@
+#ifndef __ASM_ARCH_CLOCKS_H
+#define __ASM_ARCH_CLOCKS_H
+
+unsigned long get_cpu_clock(void);
+ulong get_ddr_freq (ulong dummy);
+unsigned long get_lbc_clock(void);
+
+#endif /* __ASM_ARCH_CLOCKS_H */
diff --git a/arch/ppc/mach-mpc8xxx/include/mach/early_udelay.h b/arch/ppc/mach-mpc8xxx/include/mach/early_udelay.h
new file mode 100644
index 0000000..472dbdc
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/include/mach/early_udelay.h
@@ -0,0 +1,33 @@
+/*
+ * Copyright (C) 2009 Matthias Kaehlcke <matthias@kaehlcke.net>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+
+/* delay execution before timers are initialized */
+static inline void early_udelay(uint32_t usecs)
+{
+	/* loop takes 4 cycles. */
+	volatile uint32_t loops = usecs * (1000 / 4); /* CPU freq = 1Ghz */
+
+	while(loops)
+		loops--;
+}
diff --git a/arch/ppc/mach-mpc8xxx/include/mach/immap_85xx.h b/arch/ppc/mach-mpc8xxx/include/mach/immap_85xx.h
new file mode 100644
index 0000000..eb98a77
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/include/mach/immap_85xx.h
@@ -0,0 +1,2339 @@
+/*
+ * MPC85xx Internal Memory Map
+ *
+ * Copyright 2007-2011 Freescale Semiconductor, Inc.
+ *
+ * Copyright(c) 2002,2003 Motorola Inc.
+ * Xianghua Xiao (x.xiao@motorola.com)
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __IMMAP_85xx__
+#define __IMMAP_85xx__
+
+#include <asm/types.h>
+#include <asm/fsl_dma.h>
+#include <asm/fsl_i2c.h>
+#include <asm/fsl_lbc.h>
+#include <asm/fsl_fman.h>
+#include <asm/config.h>
+
+typedef struct ccsr_local {
+	u32	ccsrbarh;	/* CCSR Base Addr High */
+	u32	ccsrbarl;	/* CCSR Base Addr Low */
+	u32	ccsrar;		/* CCSR Attr */
+#define CCSRAR_C	0x80000000	/* Commit */
+	u8	res1[4];
+	u32	altcbarh;	/* Alternate Configuration Base Addr High */
+	u32	altcbarl;	/* Alternate Configuration Base Addr Low */
+	u32	altcar;		/* Alternate Configuration Attr */
+	u8	res2[4];
+	u32	bstrh;		/* Boot space translation high */
+	u32	bstrl;		/* Boot space translation Low */
+	u32	bstrar;		/* Boot space translation attributes */
+	u8	res3[0xbd4];
+	struct {
+		u32	lawbarh;	/* LAWn base addr high */
+		u32	lawbarl;	/* LAWn base addr low */
+		u32	lawar;		/* LAWn attributes */
+		u8	res4[4];
+	} law[32];
+	u8	res35[0x204];
+} ccsr_local_t;
+
+/* Local-Access Registers & ECM Registers */
+typedef struct ccsr_local_ecm {
+	u32	ccsrbar;	/* CCSR Base Addr */
+	u8	res1[4];
+	u32	altcbar;	/* Alternate Configuration Base Addr */
+	u8	res2[4];
+	u32	altcar;		/* Alternate Configuration Attr */
+	u8	res3[12];
+	u32	bptr;		/* Boot Page Translation */
+	u8	res4[3044];
+	u32	lawbar0;	/* Local Access Window 0 Base Addr */
+	u8	res5[4];
+	u32	lawar0;		/* Local Access Window 0 Attrs */
+	u8	res6[20];
+	u32	lawbar1;	/* Local Access Window 1 Base Addr */
+	u8	res7[4];
+	u32	lawar1;		/* Local Access Window 1 Attrs */
+	u8	res8[20];
+	u32	lawbar2;	/* Local Access Window 2 Base Addr */
+	u8	res9[4];
+	u32	lawar2;		/* Local Access Window 2 Attrs */
+	u8	res10[20];
+	u32	lawbar3;	/* Local Access Window 3 Base Addr */
+	u8	res11[4];
+	u32	lawar3;		/* Local Access Window 3 Attrs */
+	u8	res12[20];
+	u32	lawbar4;	/* Local Access Window 4 Base Addr */
+	u8	res13[4];
+	u32	lawar4;		/* Local Access Window 4 Attrs */
+	u8	res14[20];
+	u32	lawbar5;	/* Local Access Window 5 Base Addr */
+	u8	res15[4];
+	u32	lawar5;		/* Local Access Window 5 Attrs */
+	u8	res16[20];
+	u32	lawbar6;	/* Local Access Window 6 Base Addr */
+	u8	res17[4];
+	u32	lawar6;		/* Local Access Window 6 Attrs */
+	u8	res18[20];
+	u32	lawbar7;	/* Local Access Window 7 Base Addr */
+	u8	res19[4];
+	u32	lawar7;		/* Local Access Window 7 Attrs */
+	u8	res19_8a[20];
+	u32	lawbar8;	/* Local Access Window 8 Base Addr */
+	u8	res19_8b[4];
+	u32	lawar8;		/* Local Access Window 8 Attrs */
+	u8	res19_9a[20];
+	u32	lawbar9;	/* Local Access Window 9 Base Addr */
+	u8	res19_9b[4];
+	u32	lawar9;		/* Local Access Window 9 Attrs */
+	u8	res19_10a[20];
+	u32	lawbar10;	/* Local Access Window 10 Base Addr */
+	u8	res19_10b[4];
+	u32	lawar10;	/* Local Access Window 10 Attrs */
+	u8	res19_11a[20];
+	u32	lawbar11;	/* Local Access Window 11 Base Addr */
+	u8	res19_11b[4];
+	u32	lawar11;	/* Local Access Window 11 Attrs */
+	u8	res20[652];
+	u32	eebacr;		/* ECM CCB Addr Configuration */
+	u8	res21[12];
+	u32	eebpcr;		/* ECM CCB Port Configuration */
+	u8	res22[3564];
+	u32	eedr;		/* ECM Error Detect */
+	u8	res23[4];
+	u32	eeer;		/* ECM Error Enable */
+	u32	eeatr;		/* ECM Error Attrs Capture */
+	u32	eeadr;		/* ECM Error Addr Capture */
+	u8	res24[492];
+} ccsr_local_ecm_t;
+
+/* DDR memory controller registers */
+typedef struct ccsr_ddr {
+	u32	cs0_bnds;		/* Chip Select 0 Memory Bounds */
+	u8	res1[4];
+	u32	cs1_bnds;		/* Chip Select 1 Memory Bounds */
+	u8	res2[4];
+	u32	cs2_bnds;		/* Chip Select 2 Memory Bounds */
+	u8	res3[4];
+	u32	cs3_bnds;		/* Chip Select 3 Memory Bounds */
+	u8	res4[100];
+	u32	cs0_config;		/* Chip Select Configuration */
+	u32	cs1_config;		/* Chip Select Configuration */
+	u32	cs2_config;		/* Chip Select Configuration */
+	u32	cs3_config;		/* Chip Select Configuration */
+	u8	res4a[48];
+	u32	cs0_config_2;		/* Chip Select Configuration 2 */
+	u32	cs1_config_2;		/* Chip Select Configuration 2 */
+	u32	cs2_config_2;		/* Chip Select Configuration 2 */
+	u32	cs3_config_2;		/* Chip Select Configuration 2 */
+	u8	res5[48];
+	u32	timing_cfg_3;		/* SDRAM Timing Configuration 3 */
+	u32	timing_cfg_0;		/* SDRAM Timing Configuration 0 */
+	u32	timing_cfg_1;		/* SDRAM Timing Configuration 1 */
+	u32	timing_cfg_2;		/* SDRAM Timing Configuration 2 */
+	u32	sdram_cfg;		/* SDRAM Control Configuration */
+	u32	sdram_cfg_2;		/* SDRAM Control Configuration 2 */
+	u32	sdram_mode;		/* SDRAM Mode Configuration */
+	u32	sdram_mode_2;		/* SDRAM Mode Configuration 2 */
+	u32	sdram_md_cntl;		/* SDRAM Mode Control */
+	u32	sdram_interval;		/* SDRAM Interval Configuration */
+	u32	sdram_data_init;	/* SDRAM Data initialization */
+	u8	res6[4];
+	u32	sdram_clk_cntl;		/* SDRAM Clock Control */
+	u8	res7[20];
+	u32	init_addr;		/* training init addr */
+	u32	init_ext_addr;		/* training init extended addr */
+	u8	res8_1[16];
+	u32	timing_cfg_4;		/* SDRAM Timing Configuration 4 */
+	u32	timing_cfg_5;		/* SDRAM Timing Configuration 5 */
+	u8	reg8_1a[8];
+	u32	ddr_zq_cntl;		/* ZQ calibration control*/
+	u32	ddr_wrlvl_cntl;		/* write leveling control*/
+	u8	reg8_1aa[4];
+	u32	ddr_sr_cntr;		/* self refresh counter */
+	u32	ddr_sdram_rcw_1;	/* Control Words 1 */
+	u32	ddr_sdram_rcw_2;	/* Control Words 2 */
+	u8	reg_1ab[8];
+	u32	ddr_wrlvl_cntl_2;	/* write leveling control 2 */
+	u32	ddr_wrlvl_cntl_3;	/* write leveling control 3 */
+	u8	res8_1b[104];
+	u32	sdram_mode_3;		/* SDRAM Mode Configuration 3 */
+	u32	sdram_mode_4;		/* SDRAM Mode Configuration 4 */
+	u32	sdram_mode_5;		/* SDRAM Mode Configuration 5 */
+	u32	sdram_mode_6;		/* SDRAM Mode Configuration 6 */
+	u32	sdram_mode_7;		/* SDRAM Mode Configuration 7 */
+	u32	sdram_mode_8;		/* SDRAM Mode Configuration 8 */
+	u8	res8_1ba[0x908];
+	u32	ddr_dsr1;		/* Debug Status 1 */
+	u32	ddr_dsr2;		/* Debug Status 2 */
+	u32	ddr_cdr1;		/* Control Driver 1 */
+	u32	ddr_cdr2;		/* Control Driver 2 */
+	u8	res8_1c[200];
+	u32	ip_rev1;		/* IP Block Revision 1 */
+	u32	ip_rev2;		/* IP Block Revision 2 */
+	u32	eor;			/* Enhanced Optimization Register */
+	u8	res8_2[252];
+	u32	mtcr;			/* Memory Test Control Register */
+	u8	res8_3[28];
+	u32	mtp1;			/* Memory Test Pattern 1 */
+	u32	mtp2;			/* Memory Test Pattern 2 */
+	u32	mtp3;			/* Memory Test Pattern 3 */
+	u32	mtp4;			/* Memory Test Pattern 4 */
+	u32	mtp5;			/* Memory Test Pattern 5 */
+	u32	mtp6;			/* Memory Test Pattern 6 */
+	u32	mtp7;			/* Memory Test Pattern 7 */
+	u32	mtp8;			/* Memory Test Pattern 8 */
+	u32	mtp9;			/* Memory Test Pattern 9 */
+	u32	mtp10;			/* Memory Test Pattern 10 */
+	u8	res8_4[184];
+	u32	data_err_inject_hi;	/* Data Path Err Injection Mask High */
+	u32	data_err_inject_lo;	/* Data Path Err Injection Mask Low */
+	u32	ecc_err_inject;		/* Data Path Err Injection Mask ECC */
+	u8	res9[20];
+	u32	capture_data_hi;	/* Data Path Read Capture High */
+	u32	capture_data_lo;	/* Data Path Read Capture Low */
+	u32	capture_ecc;		/* Data Path Read Capture ECC */
+	u8	res10[20];
+	u32	err_detect;		/* Error Detect */
+	u32	err_disable;		/* Error Disable */
+	u32	err_int_en;
+	u32	capture_attributes;	/* Error Attrs Capture */
+	u32	capture_address;	/* Error Addr Capture */
+	u32	capture_ext_address;	/* Error Extended Addr Capture */
+	u32	err_sbe;		/* Single-Bit ECC Error Management */
+	u8	res11[164];
+	u32	debug[32];		/* debug_1 to debug_32 */
+	u8	res12[128];
+} ccsr_ddr_t;
+
+#define DDR_EOR_RD_BDW_OPT_DIS	0x80000000 /* Read BDW Opt. disable */
+#define DDR_EOR_ADDR_HASH_EN	0x40000000 /* Address hash enabled */
+
+/* I2C Registers */
+typedef struct ccsr_i2c {
+	struct fsl_i2c	i2c[1];
+	u8	res[4096 - 1 * sizeof(struct fsl_i2c)];
+} ccsr_i2c_t;
+
+#if defined(CONFIG_MPC8540) \
+	|| defined(CONFIG_MPC8541) \
+	|| defined(CONFIG_MPC8548) \
+	|| defined(CONFIG_MPC8555)
+/* DUART Registers */
+typedef struct ccsr_duart {
+	u8	res1[1280];
+/* URBR1, UTHR1, UDLB1 with the same addr */
+	u8	urbr1_uthr1_udlb1;
+/* UIER1, UDMB1 with the same addr01 */
+	u8	uier1_udmb1;
+/* UIIR1, UFCR1, UAFR1 with the same addr */
+	u8	uiir1_ufcr1_uafr1;
+	u8	ulcr1;		/* UART1 Line Control */
+	u8	umcr1;		/* UART1 Modem Control */
+	u8	ulsr1;		/* UART1 Line Status */
+	u8	umsr1;		/* UART1 Modem Status */
+	u8	uscr1;		/* UART1 Scratch */
+	u8	res2[8];
+	u8	udsr1;		/* UART1 DMA Status */
+	u8	res3[239];
+/* URBR2, UTHR2, UDLB2 with the same addr */
+	u8	urbr2_uthr2_udlb2;
+/* UIER2, UDMB2 with the same addr */
+	u8	uier2_udmb2;
+/* UIIR2, UFCR2, UAFR2 with the same addr */
+	u8	uiir2_ufcr2_uafr2;
+	u8	ulcr2;		/* UART2 Line Control */
+	u8	umcr2;		/* UART2 Modem Control */
+	u8	ulsr2;		/* UART2 Line Status */
+	u8	umsr2;		/* UART2 Modem Status */
+	u8	uscr2;		/* UART2 Scratch */
+	u8	res4[8];
+	u8	udsr2;		/* UART2 DMA Status */
+	u8	res5[2543];
+} ccsr_duart_t;
+#else /* MPC8560 uses UART on its CPM */
+typedef struct ccsr_duart {
+	u8 res[4096];
+} ccsr_duart_t;
+#endif
+
+/* eSPI Registers */
+typedef struct ccsr_espi {
+	u32	mode;		/* eSPI mode */
+	u32	event;		/* eSPI event */
+	u32	mask;		/* eSPI mask */
+	u32	com;		/* eSPI command */
+	u32	tx;		/* eSPI transmit FIFO access */
+	u32	rx;		/* eSPI receive FIFO access */
+	u8	res1[8];	/* reserved */
+	u32	csmode[4];	/* 0x2c: sSPI CS0/1/2/3 mode */
+	u8	res2[4048];	/* fill up to 0x1000 */
+} ccsr_espi_t;
+
+/* PCI Registers */
+typedef struct ccsr_pcix {
+	u32	cfg_addr;	/* PCIX Configuration Addr */
+	u32	cfg_data;	/* PCIX Configuration Data */
+	u32	int_ack;	/* PCIX IRQ Acknowledge */
+	u8	res1[3060];
+	u32	potar0;		/* PCIX Outbound Transaction Addr 0 */
+	u32	potear0;	/* PCIX Outbound Translation Extended Addr 0 */
+	u32	powbar0;	/* PCIX Outbound Window Base Addr 0 */
+	u32	powbear0;	/* PCIX Outbound Window Base Extended Addr 0 */
+	u32	powar0;		/* PCIX Outbound Window Attrs 0 */
+	u8	res2[12];
+	u32	potar1;		/* PCIX Outbound Transaction Addr 1 */
+	u32	potear1;	/* PCIX Outbound Translation Extended Addr 1 */
+	u32	powbar1;	/* PCIX Outbound Window Base Addr 1 */
+	u32	powbear1;	/* PCIX Outbound Window Base Extended Addr 1 */
+	u32	powar1;		/* PCIX Outbound Window Attrs 1 */
+	u8	res3[12];
+	u32	potar2;		/* PCIX Outbound Transaction Addr 2 */
+	u32	potear2;	/* PCIX Outbound Translation Extended Addr 2 */
+	u32	powbar2;	/* PCIX Outbound Window Base Addr 2 */
+	u32	powbear2;	/* PCIX Outbound Window Base Extended Addr 2 */
+	u32	powar2;		/* PCIX Outbound Window Attrs 2 */
+	u8	res4[12];
+	u32	potar3;		/* PCIX Outbound Transaction Addr 3 */
+	u32	potear3;	/* PCIX Outbound Translation Extended Addr 3 */
+	u32	powbar3;	/* PCIX Outbound Window Base Addr 3 */
+	u32	powbear3;	/* PCIX Outbound Window Base Extended Addr 3 */
+	u32	powar3;		/* PCIX Outbound Window Attrs 3 */
+	u8	res5[12];
+	u32	potar4;		/* PCIX Outbound Transaction Addr 4 */
+	u32	potear4;	/* PCIX Outbound Translation Extended Addr 4 */
+	u32	powbar4;	/* PCIX Outbound Window Base Addr 4 */
+	u32	powbear4;	/* PCIX Outbound Window Base Extended Addr 4 */
+	u32	powar4;		/* PCIX Outbound Window Attrs 4 */
+	u8	res6[268];
+	u32	pitar3;		/* PCIX Inbound Translation Addr 3 */
+	u32	pitear3;	/* PCIX Inbound Translation Extended Addr 3 */
+	u32	piwbar3;	/* PCIX Inbound Window Base Addr 3 */
+	u32	piwbear3;	/* PCIX Inbound Window Base Extended Addr 3 */
+	u32	piwar3;		/* PCIX Inbound Window Attrs 3 */
+	u8	res7[12];
+	u32	pitar2;		/* PCIX Inbound Translation Addr 2 */
+	u32	pitear2;	/* PCIX Inbound Translation Extended Addr 2 */
+	u32	piwbar2;	/* PCIX Inbound Window Base Addr 2 */
+	u32	piwbear2;	/* PCIX Inbound Window Base Extended Addr 2 */
+	u32	piwar2;		/* PCIX Inbound Window Attrs 2 */
+	u8	res8[12];
+	u32	pitar1;		/* PCIX Inbound Translation Addr 1 */
+	u32	pitear1;	/* PCIX Inbound Translation Extended Addr 1 */
+	u32	piwbar1;	/* PCIX Inbound Window Base Addr 1 */
+	u8	res9[4];
+	u32	piwar1;		/* PCIX Inbound Window Attrs 1 */
+	u8	res10[12];
+	u32	pedr;		/* PCIX Error Detect */
+	u32	pecdr;		/* PCIX Error Capture Disable */
+	u32	peer;		/* PCIX Error Enable */
+	u32	peattrcr;	/* PCIX Error Attrs Capture */
+	u32	peaddrcr;	/* PCIX Error Addr Capture */
+	u32	peextaddrcr;	/* PCIX Error Extended Addr Capture */
+	u32	pedlcr;		/* PCIX Error Data Low Capture */
+	u32	pedhcr;		/* PCIX Error Error Data High Capture */
+	u32	gas_timr;	/* PCIX Gasket Timer */
+	u8	res11[476];
+} ccsr_pcix_t;
+
+#define PCIX_COMMAND	0x62
+#define POWAR_EN	0x80000000
+#define POWAR_IO_READ	0x00080000
+#define POWAR_MEM_READ	0x00040000
+#define POWAR_IO_WRITE	0x00008000
+#define POWAR_MEM_WRITE 0x00004000
+#define POWAR_MEM_512M	0x0000001c
+#define POWAR_IO_1M	0x00000013
+
+#define PIWAR_EN	0x80000000
+#define PIWAR_PF	0x20000000
+#define PIWAR_LOCAL	0x00f00000
+#define PIWAR_READ_SNOOP	0x00050000
+#define PIWAR_WRITE_SNOOP	0x00005000
+#define PIWAR_MEM_2G		0x0000001e
+
+typedef struct ccsr_gpio {
+	u32	gpdir;
+	u32	gpodr;
+	u32	gpdat;
+	u32	gpier;
+	u32	gpimr;
+	u32	gpicr;
+} ccsr_gpio_t;
+
+/* L2 Cache Registers */
+typedef struct ccsr_l2cache {
+	u32	l2ctl;		/* L2 configuration 0 */
+	u8	res1[12];
+	u32	l2cewar0;	/* L2 cache external write addr 0 */
+	u8	res2[4];
+	u32	l2cewcr0;	/* L2 cache external write control 0 */
+	u8	res3[4];
+	u32	l2cewar1;	/* L2 cache external write addr 1 */
+	u8	res4[4];
+	u32	l2cewcr1;	/* L2 cache external write control 1 */
+	u8	res5[4];
+	u32	l2cewar2;	/* L2 cache external write addr 2 */
+	u8	res6[4];
+	u32	l2cewcr2;	/* L2 cache external write control 2 */
+	u8	res7[4];
+	u32	l2cewar3;	/* L2 cache external write addr 3 */
+	u8	res8[4];
+	u32	l2cewcr3;	/* L2 cache external write control 3 */
+	u8	res9[180];
+	u32	l2srbar0;	/* L2 memory-mapped SRAM base addr 0 */
+	u8	res10[4];
+	u32	l2srbar1;	/* L2 memory-mapped SRAM base addr 1 */
+	u8	res11[3316];
+	u32	l2errinjhi;	/* L2 error injection mask high */
+	u32	l2errinjlo;	/* L2 error injection mask low */
+	u32	l2errinjctl;	/* L2 error injection tag/ECC control */
+	u8	res12[20];
+	u32	l2captdatahi;	/* L2 error data high capture */
+	u32	l2captdatalo;	/* L2 error data low capture */
+	u32	l2captecc;	/* L2 error ECC capture */
+	u8	res13[20];
+	u32	l2errdet;	/* L2 error detect */
+	u32	l2errdis;	/* L2 error disable */
+	u32	l2errinten;	/* L2 error interrupt enable */
+	u32	l2errattr;	/* L2 error attributes capture */
+	u32	l2erraddr;	/* L2 error addr capture */
+	u8	res14[4];
+	u32	l2errctl;	/* L2 error control */
+	u8	res15[420];
+} ccsr_l2cache_t;
+
+#define MPC85xx_L2CTL_L2E			0x80000000
+#define MPC85xx_L2CTL_L2SRAM_ENTIRE		0x00010000
+#define MPC85xx_L2ERRDIS_MBECC			0x00000008
+#define MPC85xx_L2ERRDIS_SBECC			0x00000004
+
+/* DMA Registers */
+typedef struct ccsr_dma {
+	u8	res1[256];
+	struct fsl_dma dma[4];
+	u32	dgsr;		/* DMA General Status */
+	u8	res2[11516];
+} ccsr_dma_t;
+
+/* tsec */
+typedef struct ccsr_tsec {
+	u8	res1[16];
+	u32	ievent;		/* IRQ Event */
+	u32	imask;		/* IRQ Mask */
+	u32	edis;		/* Error Disabled */
+	u8	res2[4];
+	u32	ecntrl;		/* Ethernet Control */
+	u32	minflr;		/* Minimum Frame Len */
+	u32	ptv;		/* Pause Time Value */
+	u32	dmactrl;	/* DMA Control */
+	u32	tbipa;		/* TBI PHY Addr */
+	u8	res3[88];
+	u32	fifo_tx_thr;		/* FIFO transmit threshold */
+	u8	res4[8];
+	u32	fifo_tx_starve;		/* FIFO transmit starve */
+	u32	fifo_tx_starve_shutoff;	/* FIFO transmit starve shutoff */
+	u8	res5[96];
+	u32	tctrl;		/* TX Control */
+	u32	tstat;		/* TX Status */
+	u8	res6[4];
+	u32	tbdlen;		/* TX Buffer Desc Data Len */
+	u8	res7[16];
+	u32	ctbptrh;	/* Current TX Buffer Desc Ptr High */
+	u32	ctbptr;		/* Current TX Buffer Desc Ptr */
+	u8	res8[88];
+	u32	tbptrh;		/* TX Buffer Desc Ptr High */
+	u32	tbptr;		/* TX Buffer Desc Ptr Low */
+	u8	res9[120];
+	u32	tbaseh;		/* TX Desc Base Addr High */
+	u32	tbase;		/* TX Desc Base Addr */
+	u8	res10[168];
+	u32	ostbd;		/* Out-of-Sequence(OOS) TX Buffer Desc */
+	u32	ostbdp;		/* OOS TX Data Buffer Ptr */
+	u32	os32tbdp;	/* OOS 32 Bytes TX Data Buffer Ptr Low */
+	u32	os32iptrh;	/* OOS 32 Bytes TX Insert Ptr High */
+	u32	os32iptrl;	/* OOS 32 Bytes TX Insert Ptr Low */
+	u32	os32tbdr;	/* OOS 32 Bytes TX Reserved */
+	u32	os32iil;	/* OOS 32 Bytes TX Insert Idx/Len */
+	u8	res11[52];
+	u32	rctrl;		/* RX Control */
+	u32	rstat;		/* RX Status */
+	u8	res12[4];
+	u32	rbdlen;		/* RxBD Data Len */
+	u8	res13[16];
+	u32	crbptrh;	/* Current RX Buffer Desc Ptr High */
+	u32	crbptr;		/* Current RX Buffer Desc Ptr */
+	u8	res14[24];
+	u32	mrblr;		/* Maximum RX Buffer Len */
+	u32	mrblr2r3;	/* Maximum RX Buffer Len R2R3 */
+	u8	res15[56];
+	u32	rbptrh;		/* RX Buffer Desc Ptr High 0 */
+	u32	rbptr;		/* RX Buffer Desc Ptr */
+	u32	rbptrh1;	/* RX Buffer Desc Ptr High 1 */
+	u32	rbptrl1;	/* RX Buffer Desc Ptr Low 1 */
+	u32	rbptrh2;	/* RX Buffer Desc Ptr High 2 */
+	u32	rbptrl2;	/* RX Buffer Desc Ptr Low 2 */
+	u32	rbptrh3;	/* RX Buffer Desc Ptr High 3 */
+	u32	rbptrl3;	/* RX Buffer Desc Ptr Low 3 */
+	u8	res16[96];
+	u32	rbaseh;		/* RX Desc Base Addr High 0 */
+	u32	rbase;		/* RX Desc Base Addr */
+	u32	rbaseh1;	/* RX Desc Base Addr High 1 */
+	u32	rbasel1;	/* RX Desc Base Addr Low 1 */
+	u32	rbaseh2;	/* RX Desc Base Addr High 2 */
+	u32	rbasel2;	/* RX Desc Base Addr Low 2 */
+	u32	rbaseh3;	/* RX Desc Base Addr High 3 */
+	u32	rbasel3;	/* RX Desc Base Addr Low 3 */
+	u8	res17[224];
+	u32	maccfg1;	/* MAC Configuration 1 */
+	u32	maccfg2;	/* MAC Configuration 2 */
+	u32	ipgifg;		/* Inter Packet Gap/Inter Frame Gap */
+	u32	hafdup;		/* Half Duplex */
+	u32	maxfrm;		/* Maximum Frame Len */
+	u8	res18[12];
+	u32	miimcfg;	/* MII Management Configuration */
+	u32	miimcom;	/* MII Management Cmd */
+	u32	miimadd;	/* MII Management Addr */
+	u32	miimcon;	/* MII Management Control */
+	u32	miimstat;	/* MII Management Status */
+	u32	miimind;	/* MII Management Indicator */
+	u8	res19[4];
+	u32	ifstat;		/* Interface Status */
+	u32	macstnaddr1;	/* Station Addr Part 1 */
+	u32	macstnaddr2;	/* Station Addr Part 2 */
+	u8	res20[312];
+	u32	tr64;		/* TX & RX 64-byte Frame Counter */
+	u32	tr127;		/* TX & RX 65-127 byte Frame Counter */
+	u32	tr255;		/* TX & RX 128-255 byte Frame Counter */
+	u32	tr511;		/* TX & RX 256-511 byte Frame Counter */
+	u32	tr1k;		/* TX & RX 512-1023 byte Frame Counter */
+	u32	trmax;		/* TX & RX 1024-1518 byte Frame Counter */
+	u32	trmgv;		/* TX & RX 1519-1522 byte Good VLAN Frame */
+	u32	rbyt;		/* RX Byte Counter */
+	u32	rpkt;		/* RX Packet Counter */
+	u32	rfcs;		/* RX FCS Error Counter */
+	u32	rmca;		/* RX Multicast Packet Counter */
+	u32	rbca;		/* RX Broadcast Packet Counter */
+	u32	rxcf;		/* RX Control Frame Packet Counter */
+	u32	rxpf;		/* RX Pause Frame Packet Counter */
+	u32	rxuo;		/* RX Unknown OP Code Counter */
+	u32	raln;		/* RX Alignment Error Counter */
+	u32	rflr;		/* RX Frame Len Error Counter */
+	u32	rcde;		/* RX Code Error Counter */
+	u32	rcse;		/* RX Carrier Sense Error Counter */
+	u32	rund;		/* RX Undersize Packet Counter */
+	u32	rovr;		/* RX Oversize Packet Counter */
+	u32	rfrg;		/* RX Fragments Counter */
+	u32	rjbr;		/* RX Jabber Counter */
+	u32	rdrp;		/* RX Drop Counter */
+	u32	tbyt;		/* TX Byte Counter Counter */
+	u32	tpkt;		/* TX Packet Counter */
+	u32	tmca;		/* TX Multicast Packet Counter */
+	u32	tbca;		/* TX Broadcast Packet Counter */
+	u32	txpf;		/* TX Pause Control Frame Counter */
+	u32	tdfr;		/* TX Deferral Packet Counter */
+	u32	tedf;		/* TX Excessive Deferral Packet Counter */
+	u32	tscl;		/* TX Single Collision Packet Counter */
+	u32	tmcl;		/* TX Multiple Collision Packet Counter */
+	u32	tlcl;		/* TX Late Collision Packet Counter */
+	u32	txcl;		/* TX Excessive Collision Packet Counter */
+	u32	tncl;		/* TX Total Collision Counter */
+	u8	res21[4];
+	u32	tdrp;		/* TX Drop Frame Counter */
+	u32	tjbr;		/* TX Jabber Frame Counter */
+	u32	tfcs;		/* TX FCS Error Counter */
+	u32	txcf;		/* TX Control Frame Counter */
+	u32	tovr;		/* TX Oversize Frame Counter */
+	u32	tund;		/* TX Undersize Frame Counter */
+	u32	tfrg;		/* TX Fragments Frame Counter */
+	u32	car1;		/* Carry One */
+	u32	car2;		/* Carry Two */
+	u32	cam1;		/* Carry Mask One */
+	u32	cam2;		/* Carry Mask Two */
+	u8	res22[192];
+	u32	iaddr0;		/* Indivdual addr 0 */
+	u32	iaddr1;		/* Indivdual addr 1 */
+	u32	iaddr2;		/* Indivdual addr 2 */
+	u32	iaddr3;		/* Indivdual addr 3 */
+	u32	iaddr4;		/* Indivdual addr 4 */
+	u32	iaddr5;		/* Indivdual addr 5 */
+	u32	iaddr6;		/* Indivdual addr 6 */
+	u32	iaddr7;		/* Indivdual addr 7 */
+	u8	res23[96];
+	u32	gaddr0;		/* Global addr 0 */
+	u32	gaddr1;		/* Global addr 1 */
+	u32	gaddr2;		/* Global addr 2 */
+	u32	gaddr3;		/* Global addr 3 */
+	u32	gaddr4;		/* Global addr 4 */
+	u32	gaddr5;		/* Global addr 5 */
+	u32	gaddr6;		/* Global addr 6 */
+	u32	gaddr7;		/* Global addr 7 */
+	u8	res24[96];
+	u32	pmd0;		/* Pattern Match Data */
+	u8	res25[4];
+	u32	pmask0;		/* Pattern Mask */
+	u8	res26[4];
+	u32	pcntrl0;	/* Pattern Match Control */
+	u8	res27[4];
+	u32	pattrb0;	/* Pattern Match Attrs */
+	u32	pattrbeli0;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd1;		/* Pattern Match Data */
+	u8	res28[4];
+	u32	pmask1;		/* Pattern Mask */
+	u8	res29[4];
+	u32	pcntrl1;	/* Pattern Match Control */
+	u8	res30[4];
+	u32	pattrb1;	/* Pattern Match Attrs */
+	u32	pattrbeli1;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd2;		/* Pattern Match Data */
+	u8	res31[4];
+	u32	pmask2;		/* Pattern Mask */
+	u8	res32[4];
+	u32	pcntrl2;	/* Pattern Match Control */
+	u8	res33[4];
+	u32	pattrb2;	/* Pattern Match Attrs */
+	u32	pattrbeli2;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd3;		/* Pattern Match Data */
+	u8	res34[4];
+	u32	pmask3;		/* Pattern Mask */
+	u8	res35[4];
+	u32	pcntrl3;	/* Pattern Match Control */
+	u8	res36[4];
+	u32	pattrb3;	/* Pattern Match Attrs */
+	u32	pattrbeli3;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd4;		/* Pattern Match Data */
+	u8	res37[4];
+	u32	pmask4;		/* Pattern Mask */
+	u8	res38[4];
+	u32	pcntrl4;	/* Pattern Match Control */
+	u8	res39[4];
+	u32	pattrb4;	/* Pattern Match Attrs */
+	u32	pattrbeli4;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd5;		/* Pattern Match Data */
+	u8	res40[4];
+	u32	pmask5;		/* Pattern Mask */
+	u8	res41[4];
+	u32	pcntrl5;	/* Pattern Match Control */
+	u8	res42[4];
+	u32	pattrb5;	/* Pattern Match Attrs */
+	u32	pattrbeli5;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd6;		/* Pattern Match Data */
+	u8	res43[4];
+	u32	pmask6;		/* Pattern Mask */
+	u8	res44[4];
+	u32	pcntrl6;	/* Pattern Match Control */
+	u8	res45[4];
+	u32	pattrb6;	/* Pattern Match Attrs */
+	u32	pattrbeli6;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd7;		/* Pattern Match Data */
+	u8	res46[4];
+	u32	pmask7;		/* Pattern Mask */
+	u8	res47[4];
+	u32	pcntrl7;	/* Pattern Match Control */
+	u8	res48[4];
+	u32	pattrb7;	/* Pattern Match Attrs */
+	u32	pattrbeli7;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd8;		/* Pattern Match Data */
+	u8	res49[4];
+	u32	pmask8;		/* Pattern Mask */
+	u8	res50[4];
+	u32	pcntrl8;	/* Pattern Match Control */
+	u8	res51[4];
+	u32	pattrb8;	/* Pattern Match Attrs */
+	u32	pattrbeli8;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd9;		/* Pattern Match Data */
+	u8	res52[4];
+	u32	pmask9;		/* Pattern Mask */
+	u8	res53[4];
+	u32	pcntrl9;	/* Pattern Match Control */
+	u8	res54[4];
+	u32	pattrb9;	/* Pattern Match Attrs */
+	u32	pattrbeli9;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd10;		/* Pattern Match Data */
+	u8	res55[4];
+	u32	pmask10;	/* Pattern Mask */
+	u8	res56[4];
+	u32	pcntrl10;	/* Pattern Match Control */
+	u8	res57[4];
+	u32	pattrb10;	/* Pattern Match Attrs */
+	u32	pattrbeli10;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd11;		/* Pattern Match Data */
+	u8	res58[4];
+	u32	pmask11;	/* Pattern Mask */
+	u8	res59[4];
+	u32	pcntrl11;	/* Pattern Match Control */
+	u8	res60[4];
+	u32	pattrb11;	/* Pattern Match Attrs */
+	u32	pattrbeli11;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd12;		/* Pattern Match Data */
+	u8	res61[4];
+	u32	pmask12;	/* Pattern Mask */
+	u8	res62[4];
+	u32	pcntrl12;	/* Pattern Match Control */
+	u8	res63[4];
+	u32	pattrb12;	/* Pattern Match Attrs */
+	u32	pattrbeli12;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd13;		/* Pattern Match Data */
+	u8	res64[4];
+	u32	pmask13;	/* Pattern Mask */
+	u8	res65[4];
+	u32	pcntrl13;	/* Pattern Match Control */
+	u8	res66[4];
+	u32	pattrb13;	/* Pattern Match Attrs */
+	u32	pattrbeli13;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd14;		/* Pattern Match Data */
+	u8	res67[4];
+	u32	pmask14;	/* Pattern Mask */
+	u8	res68[4];
+	u32	pcntrl14;	/* Pattern Match Control */
+	u8	res69[4];
+	u32	pattrb14;	/* Pattern Match Attrs */
+	u32	pattrbeli14;	/* Pattern Match Attrs Extract Len & Idx */
+	u32	pmd15;		/* Pattern Match Data */
+	u8	res70[4];
+	u32	pmask15;	/* Pattern Mask */
+	u8	res71[4];
+	u32	pcntrl15;	/* Pattern Match Control */
+	u8	res72[4];
+	u32	pattrb15;	/* Pattern Match Attrs */
+	u32	pattrbeli15;	/* Pattern Match Attrs Extract Len & Idx */
+	u8	res73[248];
+	u32	attr;		/* Attrs */
+	u32	attreli;	/* Attrs Extract Len & Idx */
+	u8	res74[1024];
+} ccsr_tsec_t;
+
+/* PIC Registers */
+typedef struct ccsr_pic {
+	u8	res1[64];
+	u32	ipidr0;		/* Interprocessor IRQ Dispatch 0 */
+	u8	res2[12];
+	u32	ipidr1;		/* Interprocessor IRQ Dispatch 1 */
+	u8	res3[12];
+	u32	ipidr2;		/* Interprocessor IRQ Dispatch 2 */
+	u8	res4[12];
+	u32	ipidr3;		/* Interprocessor IRQ Dispatch 3 */
+	u8	res5[12];
+	u32	ctpr;		/* Current Task Priority */
+	u8	res6[12];
+	u32	whoami;		/* Who Am I */
+	u8	res7[12];
+	u32	iack;		/* IRQ Acknowledge */
+	u8	res8[12];
+	u32	eoi;		/* End Of IRQ */
+	u8	res9[3916];
+	u32	frr;		/* Feature Reporting */
+	u8	res10[28];
+	u32	gcr;		/* Global Configuration */
+#define MPC85xx_PICGCR_RST	0x80000000
+#define MPC85xx_PICGCR_M	0x20000000
+	u8	res11[92];
+	u32	vir;		/* Vendor Identification */
+	u8	res12[12];
+	u32	pir;		/* Processor Initialization */
+	u8	res13[12];
+	u32	ipivpr0;	/* IPI Vector/Priority 0 */
+	u8	res14[12];
+	u32	ipivpr1;	/* IPI Vector/Priority 1 */
+	u8	res15[12];
+	u32	ipivpr2;	/* IPI Vector/Priority 2 */
+	u8	res16[12];
+	u32	ipivpr3;	/* IPI Vector/Priority 3 */
+	u8	res17[12];
+	u32	svr;		/* Spurious Vector */
+	u8	res18[12];
+	u32	tfrr;		/* Timer Frequency Reporting */
+	u8	res19[12];
+	u32	gtccr0;		/* Global Timer Current Count 0 */
+	u8	res20[12];
+	u32	gtbcr0;		/* Global Timer Base Count 0 */
+	u8	res21[12];
+	u32	gtvpr0;		/* Global Timer Vector/Priority 0 */
+	u8	res22[12];
+	u32	gtdr0;		/* Global Timer Destination 0 */
+	u8	res23[12];
+	u32	gtccr1;		/* Global Timer Current Count 1 */
+	u8	res24[12];
+	u32	gtbcr1;		/* Global Timer Base Count 1 */
+	u8	res25[12];
+	u32	gtvpr1;		/* Global Timer Vector/Priority 1 */
+	u8	res26[12];
+	u32	gtdr1;		/* Global Timer Destination 1 */
+	u8	res27[12];
+	u32	gtccr2;		/* Global Timer Current Count 2 */
+	u8	res28[12];
+	u32	gtbcr2;		/* Global Timer Base Count 2 */
+	u8	res29[12];
+	u32	gtvpr2;		/* Global Timer Vector/Priority 2 */
+	u8	res30[12];
+	u32	gtdr2;		/* Global Timer Destination 2 */
+	u8	res31[12];
+	u32	gtccr3;		/* Global Timer Current Count 3 */
+	u8	res32[12];
+	u32	gtbcr3;		/* Global Timer Base Count 3 */
+	u8	res33[12];
+	u32	gtvpr3;		/* Global Timer Vector/Priority 3 */
+	u8	res34[12];
+	u32	gtdr3;		/* Global Timer Destination 3 */
+	u8	res35[268];
+	u32	tcr;		/* Timer Control */
+	u8	res36[12];
+	u32	irqsr0;		/* IRQ_OUT Summary 0 */
+	u8	res37[12];
+	u32	irqsr1;		/* IRQ_OUT Summary 1 */
+	u8	res38[12];
+	u32	cisr0;		/* Critical IRQ Summary 0 */
+	u8	res39[12];
+	u32	cisr1;		/* Critical IRQ Summary 1 */
+	u8	res40[188];
+	u32	msgr0;		/* Message 0 */
+	u8	res41[12];
+	u32	msgr1;		/* Message 1 */
+	u8	res42[12];
+	u32	msgr2;		/* Message 2 */
+	u8	res43[12];
+	u32	msgr3;		/* Message 3 */
+	u8	res44[204];
+	u32	mer;		/* Message Enable */
+	u8	res45[12];
+	u32	msr;		/* Message Status */
+	u8	res46[60140];
+	u32	eivpr0;		/* External IRQ Vector/Priority 0 */
+	u8	res47[12];
+	u32	eidr0;		/* External IRQ Destination 0 */
+	u8	res48[12];
+	u32	eivpr1;		/* External IRQ Vector/Priority 1 */
+	u8	res49[12];
+	u32	eidr1;		/* External IRQ Destination 1 */
+	u8	res50[12];
+	u32	eivpr2;		/* External IRQ Vector/Priority 2 */
+	u8	res51[12];
+	u32	eidr2;		/* External IRQ Destination 2 */
+	u8	res52[12];
+	u32	eivpr3;		/* External IRQ Vector/Priority 3 */
+	u8	res53[12];
+	u32	eidr3;		/* External IRQ Destination 3 */
+	u8	res54[12];
+	u32	eivpr4;		/* External IRQ Vector/Priority 4 */
+	u8	res55[12];
+	u32	eidr4;		/* External IRQ Destination 4 */
+	u8	res56[12];
+	u32	eivpr5;		/* External IRQ Vector/Priority 5 */
+	u8	res57[12];
+	u32	eidr5;		/* External IRQ Destination 5 */
+	u8	res58[12];
+	u32	eivpr6;		/* External IRQ Vector/Priority 6 */
+	u8	res59[12];
+	u32	eidr6;		/* External IRQ Destination 6 */
+	u8	res60[12];
+	u32	eivpr7;		/* External IRQ Vector/Priority 7 */
+	u8	res61[12];
+	u32	eidr7;		/* External IRQ Destination 7 */
+	u8	res62[12];
+	u32	eivpr8;		/* External IRQ Vector/Priority 8 */
+	u8	res63[12];
+	u32	eidr8;		/* External IRQ Destination 8 */
+	u8	res64[12];
+	u32	eivpr9;		/* External IRQ Vector/Priority 9 */
+	u8	res65[12];
+	u32	eidr9;		/* External IRQ Destination 9 */
+	u8	res66[12];
+	u32	eivpr10;	/* External IRQ Vector/Priority 10 */
+	u8	res67[12];
+	u32	eidr10;		/* External IRQ Destination 10 */
+	u8	res68[12];
+	u32	eivpr11;	/* External IRQ Vector/Priority 11 */
+	u8	res69[12];
+	u32	eidr11;		/* External IRQ Destination 11 */
+	u8	res70[140];
+	u32	iivpr0;		/* Internal IRQ Vector/Priority 0 */
+	u8	res71[12];
+	u32	iidr0;		/* Internal IRQ Destination 0 */
+	u8	res72[12];
+	u32	iivpr1;		/* Internal IRQ Vector/Priority 1 */
+	u8	res73[12];
+	u32	iidr1;		/* Internal IRQ Destination 1 */
+	u8	res74[12];
+	u32	iivpr2;		/* Internal IRQ Vector/Priority 2 */
+	u8	res75[12];
+	u32	iidr2;		/* Internal IRQ Destination 2 */
+	u8	res76[12];
+	u32	iivpr3;		/* Internal IRQ Vector/Priority 3 */
+	u8	res77[12];
+	u32	iidr3;		/* Internal IRQ Destination 3 */
+	u8	res78[12];
+	u32	iivpr4;		/* Internal IRQ Vector/Priority 4 */
+	u8	res79[12];
+	u32	iidr4;		/* Internal IRQ Destination 4 */
+	u8	res80[12];
+	u32	iivpr5;		/* Internal IRQ Vector/Priority 5 */
+	u8	res81[12];
+	u32	iidr5;		/* Internal IRQ Destination 5 */
+	u8	res82[12];
+	u32	iivpr6;		/* Internal IRQ Vector/Priority 6 */
+	u8	res83[12];
+	u32	iidr6;		/* Internal IRQ Destination 6 */
+	u8	res84[12];
+	u32	iivpr7;		/* Internal IRQ Vector/Priority 7 */
+	u8	res85[12];
+	u32	iidr7;		/* Internal IRQ Destination 7 */
+	u8	res86[12];
+	u32	iivpr8;		/* Internal IRQ Vector/Priority 8 */
+	u8	res87[12];
+	u32	iidr8;		/* Internal IRQ Destination 8 */
+	u8	res88[12];
+	u32	iivpr9;		/* Internal IRQ Vector/Priority 9 */
+	u8	res89[12];
+	u32	iidr9;		/* Internal IRQ Destination 9 */
+	u8	res90[12];
+	u32	iivpr10;	/* Internal IRQ Vector/Priority 10 */
+	u8	res91[12];
+	u32	iidr10;		/* Internal IRQ Destination 10 */
+	u8	res92[12];
+	u32	iivpr11;	/* Internal IRQ Vector/Priority 11 */
+	u8	res93[12];
+	u32	iidr11;		/* Internal IRQ Destination 11 */
+	u8	res94[12];
+	u32	iivpr12;	/* Internal IRQ Vector/Priority 12 */
+	u8	res95[12];
+	u32	iidr12;		/* Internal IRQ Destination 12 */
+	u8	res96[12];
+	u32	iivpr13;	/* Internal IRQ Vector/Priority 13 */
+	u8	res97[12];
+	u32	iidr13;		/* Internal IRQ Destination 13 */
+	u8	res98[12];
+	u32	iivpr14;	/* Internal IRQ Vector/Priority 14 */
+	u8	res99[12];
+	u32	iidr14;		/* Internal IRQ Destination 14 */
+	u8	res100[12];
+	u32	iivpr15;	/* Internal IRQ Vector/Priority 15 */
+	u8	res101[12];
+	u32	iidr15;		/* Internal IRQ Destination 15 */
+	u8	res102[12];
+	u32	iivpr16;	/* Internal IRQ Vector/Priority 16 */
+	u8	res103[12];
+	u32	iidr16;		/* Internal IRQ Destination 16 */
+	u8	res104[12];
+	u32	iivpr17;	/* Internal IRQ Vector/Priority 17 */
+	u8	res105[12];
+	u32	iidr17;		/* Internal IRQ Destination 17 */
+	u8	res106[12];
+	u32	iivpr18;	/* Internal IRQ Vector/Priority 18 */
+	u8	res107[12];
+	u32	iidr18;		/* Internal IRQ Destination 18 */
+	u8	res108[12];
+	u32	iivpr19;	/* Internal IRQ Vector/Priority 19 */
+	u8	res109[12];
+	u32	iidr19;		/* Internal IRQ Destination 19 */
+	u8	res110[12];
+	u32	iivpr20;	/* Internal IRQ Vector/Priority 20 */
+	u8	res111[12];
+	u32	iidr20;		/* Internal IRQ Destination 20 */
+	u8	res112[12];
+	u32	iivpr21;	/* Internal IRQ Vector/Priority 21 */
+	u8	res113[12];
+	u32	iidr21;		/* Internal IRQ Destination 21 */
+	u8	res114[12];
+	u32	iivpr22;	/* Internal IRQ Vector/Priority 22 */
+	u8	res115[12];
+	u32	iidr22;		/* Internal IRQ Destination 22 */
+	u8	res116[12];
+	u32	iivpr23;	/* Internal IRQ Vector/Priority 23 */
+	u8	res117[12];
+	u32	iidr23;		/* Internal IRQ Destination 23 */
+	u8	res118[12];
+	u32	iivpr24;	/* Internal IRQ Vector/Priority 24 */
+	u8	res119[12];
+	u32	iidr24;		/* Internal IRQ Destination 24 */
+	u8	res120[12];
+	u32	iivpr25;	/* Internal IRQ Vector/Priority 25 */
+	u8	res121[12];
+	u32	iidr25;		/* Internal IRQ Destination 25 */
+	u8	res122[12];
+	u32	iivpr26;	/* Internal IRQ Vector/Priority 26 */
+	u8	res123[12];
+	u32	iidr26;		/* Internal IRQ Destination 26 */
+	u8	res124[12];
+	u32	iivpr27;	/* Internal IRQ Vector/Priority 27 */
+	u8	res125[12];
+	u32	iidr27;		/* Internal IRQ Destination 27 */
+	u8	res126[12];
+	u32	iivpr28;	/* Internal IRQ Vector/Priority 28 */
+	u8	res127[12];
+	u32	iidr28;		/* Internal IRQ Destination 28 */
+	u8	res128[12];
+	u32	iivpr29;	/* Internal IRQ Vector/Priority 29 */
+	u8	res129[12];
+	u32	iidr29;		/* Internal IRQ Destination 29 */
+	u8	res130[12];
+	u32	iivpr30;	/* Internal IRQ Vector/Priority 30 */
+	u8	res131[12];
+	u32	iidr30;		/* Internal IRQ Destination 30 */
+	u8	res132[12];
+	u32	iivpr31;	/* Internal IRQ Vector/Priority 31 */
+	u8	res133[12];
+	u32	iidr31;		/* Internal IRQ Destination 31 */
+	u8	res134[4108];
+	u32	mivpr0;		/* Messaging IRQ Vector/Priority 0 */
+	u8	res135[12];
+	u32	midr0;		/* Messaging IRQ Destination 0 */
+	u8	res136[12];
+	u32	mivpr1;		/* Messaging IRQ Vector/Priority 1 */
+	u8	res137[12];
+	u32	midr1;		/* Messaging IRQ Destination 1 */
+	u8	res138[12];
+	u32	mivpr2;		/* Messaging IRQ Vector/Priority 2 */
+	u8	res139[12];
+	u32	midr2;		/* Messaging IRQ Destination 2 */
+	u8	res140[12];
+	u32	mivpr3;		/* Messaging IRQ Vector/Priority 3 */
+	u8	res141[12];
+	u32	midr3;		/* Messaging IRQ Destination 3 */
+	u8	res142[59852];
+	u32	ipi0dr0;	/* Processor 0 Interprocessor IRQ Dispatch 0 */
+	u8	res143[12];
+	u32	ipi0dr1;	/* Processor 0 Interprocessor IRQ Dispatch 1 */
+	u8	res144[12];
+	u32	ipi0dr2;	/* Processor 0 Interprocessor IRQ Dispatch 2 */
+	u8	res145[12];
+	u32	ipi0dr3;	/* Processor 0 Interprocessor IRQ Dispatch 3 */
+	u8	res146[12];
+	u32	ctpr0;		/* Current Task Priority for Processor 0 */
+	u8	res147[12];
+	u32	whoami0;	/* Who Am I for Processor 0 */
+	u8	res148[12];
+	u32	iack0;		/* IRQ Acknowledge for Processor 0 */
+	u8	res149[12];
+	u32	eoi0;		/* End Of IRQ for Processor 0 */
+	u8	res150[130892];
+} ccsr_pic_t;
+
+/* CPM Block */
+#ifndef CONFIG_CPM2
+typedef struct ccsr_cpm {
+	u8 res[262144];
+} ccsr_cpm_t;
+#else
+/*
+ * DPARM
+ * General SIU
+ */
+typedef struct ccsr_cpm_siu {
+	u8	res1[80];
+	u32	smaer;
+	u32	smser;
+	u32	smevr;
+	u8	res2[4];
+	u32	lmaer;
+	u32	lmser;
+	u32	lmevr;
+	u8	res3[2964];
+} ccsr_cpm_siu_t;
+
+/* IRQ Controller */
+typedef struct ccsr_cpm_intctl {
+	u16	sicr;
+	u8	res1[2];
+	u32	sivec;
+	u32	sipnrh;
+	u32	sipnrl;
+	u32	siprr;
+	u32	scprrh;
+	u32	scprrl;
+	u32	simrh;
+	u32	simrl;
+	u32	siexr;
+	u8	res2[88];
+	u32	sccr;
+	u8	res3[124];
+} ccsr_cpm_intctl_t;
+
+/* input/output port */
+typedef struct ccsr_cpm_iop {
+	u32	pdira;
+	u32	ppara;
+	u32	psora;
+	u32	podra;
+	u32	pdata;
+	u8	res1[12];
+	u32	pdirb;
+	u32	pparb;
+	u32	psorb;
+	u32	podrb;
+	u32	pdatb;
+	u8	res2[12];
+	u32	pdirc;
+	u32	pparc;
+	u32	psorc;
+	u32	podrc;
+	u32	pdatc;
+	u8	res3[12];
+	u32	pdird;
+	u32	ppard;
+	u32	psord;
+	u32	podrd;
+	u32	pdatd;
+	u8	res4[12];
+} ccsr_cpm_iop_t;
+
+/* CPM timers */
+typedef struct ccsr_cpm_timer {
+	u8	tgcr1;
+	u8	res1[3];
+	u8	tgcr2;
+	u8	res2[11];
+	u16	tmr1;
+	u16	tmr2;
+	u16	trr1;
+	u16	trr2;
+	u16	tcr1;
+	u16	tcr2;
+	u16	tcn1;
+	u16	tcn2;
+	u16	tmr3;
+	u16	tmr4;
+	u16	trr3;
+	u16	trr4;
+	u16	tcr3;
+	u16	tcr4;
+	u16	tcn3;
+	u16	tcn4;
+	u16	ter1;
+	u16	ter2;
+	u16	ter3;
+	u16	ter4;
+	u8	res3[608];
+} ccsr_cpm_timer_t;
+
+/* SDMA */
+typedef struct ccsr_cpm_sdma {
+	u8	sdsr;
+	u8	res1[3];
+	u8	sdmr;
+	u8	res2[739];
+} ccsr_cpm_sdma_t;
+
+/* FCC1 */
+typedef struct ccsr_cpm_fcc1 {
+	u32	gfmr;
+	u32	fpsmr;
+	u16	ftodr;
+	u8	res1[2];
+	u16	fdsr;
+	u8	res2[2];
+	u16	fcce;
+	u8	res3[2];
+	u16	fccm;
+	u8	res4[2];
+	u8	fccs;
+	u8	res5[3];
+	u8	ftirr_phy[4];
+} ccsr_cpm_fcc1_t;
+
+/* FCC2 */
+typedef struct ccsr_cpm_fcc2 {
+	u32	gfmr;
+	u32	fpsmr;
+	u16	ftodr;
+	u8	res1[2];
+	u16	fdsr;
+	u8	res2[2];
+	u16	fcce;
+	u8	res3[2];
+	u16	fccm;
+	u8	res4[2];
+	u8	fccs;
+	u8	res5[3];
+	u8	ftirr_phy[4];
+} ccsr_cpm_fcc2_t;
+
+/* FCC3 */
+typedef struct ccsr_cpm_fcc3 {
+	u32	gfmr;
+	u32	fpsmr;
+	u16	ftodr;
+	u8	res1[2];
+	u16	fdsr;
+	u8	res2[2];
+	u16	fcce;
+	u8	res3[2];
+	u16	fccm;
+	u8	res4[2];
+	u8	fccs;
+	u8	res5[3];
+	u8	res[36];
+} ccsr_cpm_fcc3_t;
+
+/* FCC1 extended */
+typedef struct ccsr_cpm_fcc1_ext {
+	u32	firper;
+	u32	firer;
+	u32	firsr_h;
+	u32	firsr_l;
+	u8	gfemr;
+	u8	res[15];
+
+} ccsr_cpm_fcc1_ext_t;
+
+/* FCC2 extended */
+typedef struct ccsr_cpm_fcc2_ext {
+	u32	firper;
+	u32	firer;
+	u32	firsr_h;
+	u32	firsr_l;
+	u8	gfemr;
+	u8	res[31];
+} ccsr_cpm_fcc2_ext_t;
+
+/* FCC3 extended */
+typedef struct ccsr_cpm_fcc3_ext {
+	u8	gfemr;
+	u8	res[47];
+} ccsr_cpm_fcc3_ext_t;
+
+/* TC layers */
+typedef struct ccsr_cpm_tmp1 {
+	u8	res[496];
+} ccsr_cpm_tmp1_t;
+
+/* BRGs:5,6,7,8 */
+typedef struct ccsr_cpm_brg2 {
+	u32	brgc5;
+	u32	brgc6;
+	u32	brgc7;
+	u32	brgc8;
+	u8	res[608];
+} ccsr_cpm_brg2_t;
+
+/* I2C */
+typedef struct ccsr_cpm_i2c {
+	u8	i2mod;
+	u8	res1[3];
+	u8	i2add;
+	u8	res2[3];
+	u8	i2brg;
+	u8	res3[3];
+	u8	i2com;
+	u8	res4[3];
+	u8	i2cer;
+	u8	res5[3];
+	u8	i2cmr;
+	u8	res6[331];
+} ccsr_cpm_i2c_t;
+
+/* CPM core */
+typedef struct ccsr_cpm_cp {
+	u32	cpcr;
+	u32	rccr;
+	u8	res1[14];
+	u16	rter;
+	u8	res2[2];
+	u16	rtmr;
+	u16	rtscr;
+	u8	res3[2];
+	u32	rtsr;
+	u8	res4[12];
+} ccsr_cpm_cp_t;
+
+/* BRGs:1,2,3,4 */
+typedef struct ccsr_cpm_brg1 {
+	u32	brgc1;
+	u32	brgc2;
+	u32	brgc3;
+	u32	brgc4;
+} ccsr_cpm_brg1_t;
+
+/* SCC1-SCC4 */
+typedef struct ccsr_cpm_scc {
+	u32	gsmrl;
+	u32	gsmrh;
+	u16	psmr;
+	u8	res1[2];
+	u16	todr;
+	u16	dsr;
+	u16	scce;
+	u8	res2[2];
+	u16	sccm;
+	u8	res3;
+	u8	sccs;
+	u8	res4[8];
+} ccsr_cpm_scc_t;
+
+typedef struct ccsr_cpm_tmp2 {
+	u8	res[32];
+} ccsr_cpm_tmp2_t;
+
+/* SPI */
+typedef struct ccsr_cpm_spi {
+	u16	spmode;
+	u8	res1[4];
+	u8	spie;
+	u8	res2[3];
+	u8	spim;
+	u8	res3[2];
+	u8	spcom;
+	u8	res4[82];
+} ccsr_cpm_spi_t;
+
+/* CPM MUX */
+typedef struct ccsr_cpm_mux {
+	u8	cmxsi1cr;
+	u8	res1;
+	u8	cmxsi2cr;
+	u8	res2;
+	u32	cmxfcr;
+	u32	cmxscr;
+	u8	res3[2];
+	u16	cmxuar;
+	u8	res4[16];
+} ccsr_cpm_mux_t;
+
+/* SI,MCC,etc */
+typedef struct ccsr_cpm_tmp3 {
+	u8 res[58592];
+} ccsr_cpm_tmp3_t;
+
+typedef struct ccsr_cpm_iram {
+	u32	iram[8192];
+	u8	res[98304];
+} ccsr_cpm_iram_t;
+
+typedef struct ccsr_cpm {
+	/* Some references are into the unique & known dpram spaces,
+	 * others are from the generic base.
+	 */
+#define im_dprambase		im_dpram1
+	u8			im_dpram1[16*1024];
+	u8			res1[16*1024];
+	u8			im_dpram2[16*1024];
+	u8			res2[16*1024];
+	ccsr_cpm_siu_t		im_cpm_siu; /* SIU Configuration */
+	ccsr_cpm_intctl_t	im_cpm_intctl; /* IRQ Controller */
+	ccsr_cpm_iop_t		im_cpm_iop; /* IO Port control/status */
+	ccsr_cpm_timer_t	im_cpm_timer; /* CPM timers */
+	ccsr_cpm_sdma_t		im_cpm_sdma; /* SDMA control/status */
+	ccsr_cpm_fcc1_t		im_cpm_fcc1;
+	ccsr_cpm_fcc2_t		im_cpm_fcc2;
+	ccsr_cpm_fcc3_t		im_cpm_fcc3;
+	ccsr_cpm_fcc1_ext_t	im_cpm_fcc1_ext;
+	ccsr_cpm_fcc2_ext_t	im_cpm_fcc2_ext;
+	ccsr_cpm_fcc3_ext_t	im_cpm_fcc3_ext;
+	ccsr_cpm_tmp1_t		im_cpm_tmp1;
+	ccsr_cpm_brg2_t		im_cpm_brg2;
+	ccsr_cpm_i2c_t		im_cpm_i2c;
+	ccsr_cpm_cp_t		im_cpm_cp;
+	ccsr_cpm_brg1_t		im_cpm_brg1;
+	ccsr_cpm_scc_t		im_cpm_scc[4];
+	ccsr_cpm_tmp2_t		im_cpm_tmp2;
+	ccsr_cpm_spi_t		im_cpm_spi;
+	ccsr_cpm_mux_t		im_cpm_mux;
+	ccsr_cpm_tmp3_t		im_cpm_tmp3;
+	ccsr_cpm_iram_t		im_cpm_iram;
+} ccsr_cpm_t;
+#endif
+
+/* RapidIO Registers */
+typedef struct ccsr_rio {
+	u32	didcar;		/* Device Identity Capability */
+	u32	dicar;		/* Device Information Capability */
+	u32	aidcar;		/* Assembly Identity Capability */
+	u32	aicar;		/* Assembly Information Capability */
+	u32	pefcar;		/* Processing Element Features Capability */
+	u32	spicar;		/* Switch Port Information Capability */
+	u32	socar;		/* Source Operations Capability */
+	u32	docar;		/* Destination Operations Capability */
+	u8	res1[32];
+	u32	msr;		/* Mailbox Cmd And Status */
+	u32	pwdcsr;		/* Port-Write & Doorbell Cmd And Status */
+	u8	res2[4];
+	u32	pellccsr;	/* Processing Element Logic Layer CCSR */
+	u8	res3[12];
+	u32	lcsbacsr;	/* Local Cfg Space Base Addr Cmd & Status */
+	u32	bdidcsr;	/* Base Device ID Cmd & Status */
+	u8	res4[4];
+	u32	hbdidlcsr;	/* Host Base Device ID Lock Cmd & Status */
+	u32	ctcsr;		/* Component Tag Cmd & Status */
+	u8	res5[144];
+	u32	pmbh0csr;	/* Port Maint. Block Hdr 0 Cmd & Status */
+	u8	res6[28];
+	u32	pltoccsr;	/* Port Link Time-out Ctrl Cmd & Status */
+	u32	prtoccsr;	/* Port Response Time-out Ctrl Cmd & Status */
+	u8	res7[20];
+	u32	pgccsr;		/* Port General Cmd & Status */
+	u32	plmreqcsr;	/* Port Link Maint. Request Cmd & Status */
+	u32	plmrespcsr;	/* Port Link Maint. Response Cmd & Status */
+	u32	plascsr;	/* Port Local Ackid Status Cmd & Status */
+	u8	res8[12];
+	u32	pescsr;		/* Port Error & Status Cmd & Status */
+	u32	pccsr;		/* Port Control Cmd & Status */
+	u8	res9[65184];
+	u32	cr;		/* Port Control Cmd & Status */
+	u8	res10[12];
+	u32	pcr;		/* Port Configuration */
+	u32	peir;		/* Port Error Injection */
+	u8	res11[3048];
+	u32	rowtar0;	/* RIO Outbound Window Translation Addr 0 */
+	u8	res12[12];
+	u32	rowar0;		/* RIO Outbound Attrs 0 */
+	u8	res13[12];
+	u32	rowtar1;	/* RIO Outbound Window Translation Addr 1 */
+	u8	res14[4];
+	u32	rowbar1;	/* RIO Outbound Window Base Addr 1 */
+	u8	res15[4];
+	u32	rowar1;		/* RIO Outbound Attrs 1 */
+	u8	res16[12];
+	u32	rowtar2;	/* RIO Outbound Window Translation Addr 2 */
+	u8	res17[4];
+	u32	rowbar2;	/* RIO Outbound Window Base Addr 2 */
+	u8	res18[4];
+	u32	rowar2;		/* RIO Outbound Attrs 2 */
+	u8	res19[12];
+	u32	rowtar3;	/* RIO Outbound Window Translation Addr 3 */
+	u8	res20[4];
+	u32	rowbar3;	/* RIO Outbound Window Base Addr 3 */
+	u8	res21[4];
+	u32	rowar3;		/* RIO Outbound Attrs 3 */
+	u8	res22[12];
+	u32	rowtar4;	/* RIO Outbound Window Translation Addr 4 */
+	u8	res23[4];
+	u32	rowbar4;	/* RIO Outbound Window Base Addr 4 */
+	u8	res24[4];
+	u32	rowar4;		/* RIO Outbound Attrs 4 */
+	u8	res25[12];
+	u32	rowtar5;	/* RIO Outbound Window Translation Addr 5 */
+	u8	res26[4];
+	u32	rowbar5;	/* RIO Outbound Window Base Addr 5 */
+	u8	res27[4];
+	u32	rowar5;		/* RIO Outbound Attrs 5 */
+	u8	res28[12];
+	u32	rowtar6;	/* RIO Outbound Window Translation Addr 6 */
+	u8	res29[4];
+	u32	rowbar6;	/* RIO Outbound Window Base Addr 6 */
+	u8	res30[4];
+	u32	rowar6;		/* RIO Outbound Attrs 6 */
+	u8	res31[12];
+	u32	rowtar7;	/* RIO Outbound Window Translation Addr 7 */
+	u8	res32[4];
+	u32	rowbar7;	/* RIO Outbound Window Base Addr 7 */
+	u8	res33[4];
+	u32	rowar7;		/* RIO Outbound Attrs 7 */
+	u8	res34[12];
+	u32	rowtar8;	/* RIO Outbound Window Translation Addr 8 */
+	u8	res35[4];
+	u32	rowbar8;	/* RIO Outbound Window Base Addr 8 */
+	u8	res36[4];
+	u32	rowar8;		/* RIO Outbound Attrs 8 */
+	u8	res37[76];
+	u32	riwtar4;	/* RIO Inbound Window Translation Addr 4 */
+	u8	res38[4];
+	u32	riwbar4;	/* RIO Inbound Window Base Addr 4 */
+	u8	res39[4];
+	u32	riwar4;		/* RIO Inbound Attrs 4 */
+	u8	res40[12];
+	u32	riwtar3;	/* RIO Inbound Window Translation Addr 3 */
+	u8	res41[4];
+	u32	riwbar3;	/* RIO Inbound Window Base Addr 3 */
+	u8	res42[4];
+	u32	riwar3;		/* RIO Inbound Attrs 3 */
+	u8	res43[12];
+	u32	riwtar2;	/* RIO Inbound Window Translation Addr 2 */
+	u8	res44[4];
+	u32	riwbar2;	/* RIO Inbound Window Base Addr 2 */
+	u8	res45[4];
+	u32	riwar2;		/* RIO Inbound Attrs 2 */
+	u8	res46[12];
+	u32	riwtar1;	/* RIO Inbound Window Translation Addr 1 */
+	u8	res47[4];
+	u32	riwbar1;	/* RIO Inbound Window Base Addr 1 */
+	u8	res48[4];
+	u32	riwar1;		/* RIO Inbound Attrs 1 */
+	u8	res49[12];
+	u32	riwtar0;	/* RIO Inbound Window Translation Addr 0 */
+	u8	res50[12];
+	u32	riwar0;		/* RIO Inbound Attrs 0 */
+	u8	res51[12];
+	u32	pnfedr;		/* Port Notification/Fatal Error Detect */
+	u32	pnfedir;	/* Port Notification/Fatal Error Detect */
+	u32	pnfeier;	/* Port Notification/Fatal Error IRQ Enable */
+	u32	pecr;		/* Port Error Control */
+	u32	pepcsr0;	/* Port Error Packet/Control Symbol 0 */
+	u32	pepr1;		/* Port Error Packet 1 */
+	u32	pepr2;		/* Port Error Packet 2 */
+	u8	res52[4];
+	u32	predr;		/* Port Recoverable Error Detect */
+	u8	res53[4];
+	u32	pertr;		/* Port Error Recovery Threshold */
+	u32	prtr;		/* Port Retry Threshold */
+	u8	res54[464];
+	u32	omr;		/* Outbound Mode */
+	u32	osr;		/* Outbound Status */
+	u32	eodqtpar;	/* Extended Outbound Desc Queue Tail Ptr Addr */
+	u32	odqtpar;	/* Outbound Desc Queue Tail Ptr Addr */
+	u32	eosar;		/* Extended Outbound Unit Source Addr */
+	u32	osar;		/* Outbound Unit Source Addr */
+	u32	odpr;		/* Outbound Destination Port */
+	u32	odatr;		/* Outbound Destination Attrs */
+	u32	odcr;		/* Outbound Doubleword Count */
+	u32	eodqhpar;	/* Extended Outbound Desc Queue Head Ptr Addr */
+	u32	odqhpar;	/* Outbound Desc Queue Head Ptr Addr */
+	u8	res55[52];
+	u32	imr;		/* Outbound Mode */
+	u32	isr;		/* Inbound Status */
+	u32	eidqtpar;	/* Extended Inbound Desc Queue Tail Ptr Addr */
+	u32	idqtpar;	/* Inbound Desc Queue Tail Ptr Addr */
+	u32	eifqhpar;	/* Extended Inbound Frame Queue Head Ptr Addr */
+	u32	ifqhpar;	/* Inbound Frame Queue Head Ptr Addr */
+	u8	res56[1000];
+	u32	dmr;		/* Doorbell Mode */
+	u32	dsr;		/* Doorbell Status */
+	u32	edqtpar;	/* Extended Doorbell Queue Tail Ptr Addr */
+	u32	dqtpar;		/* Doorbell Queue Tail Ptr Addr */
+	u32	edqhpar;	/* Extended Doorbell Queue Head Ptr Addr */
+	u32	dqhpar;		/* Doorbell Queue Head Ptr Addr */
+	u8	res57[104];
+	u32	pwmr;		/* Port-Write Mode */
+	u32	pwsr;		/* Port-Write Status */
+	u32	epwqbar;	/* Extended Port-Write Queue Base Addr */
+	u32	pwqbar;		/* Port-Write Queue Base Addr */
+	u8	res58[60176];
+} ccsr_rio_t;
+
+/* Quick Engine Block Pin Muxing Registers */
+typedef struct par_io {
+	u32	cpodr;
+	u32	cpdat;
+	u32	cpdir1;
+	u32	cpdir2;
+	u32	cppar1;
+	u32	cppar2;
+	u8	res[8];
+} par_io_t;
+
+#ifdef CONFIG_SYS_FSL_CPC
+/*
+ * Define a single offset that is the start of all the CPC register
+ * blocks - if there is more than one CPC, we expect these to be
+ * contiguous 4k regions
+ */
+
+typedef struct cpc_corenet {
+	u32 	cpccsr0;	/* Config/status reg */
+	u32	res1;
+	u32	cpccfg0;	/* Configuration register */
+	u32	res2;
+	u32	cpcewcr0;	/* External Write reg 0 */
+	u32	cpcewabr0;	/* External write base reg 0 */
+	u32	res3[2];
+	u32	cpcewcr1;	/* External Write reg 1 */
+	u32	cpcewabr1;	/* External write base reg 1 */
+	u32	res4[54];
+	u32	cpcsrcr1;	/* SRAM control reg 1 */
+	u32	cpcsrcr0;	/* SRAM control reg 0 */
+	u32	res5[62];
+	struct {
+		u32	id;	/* partition ID */
+		u32	res;
+		u32	alloc;	/* partition allocation */
+		u32	way;	/* partition way */
+	} partition_regs[16];
+	u32	res6[704];
+	u32	cpcerrinjhi;	/* Error injection high */
+	u32	cpcerrinjlo;	/* Error injection lo */
+	u32	cpcerrinjctl;	/* Error injection control */
+	u32	res7[5];
+	u32	cpccaptdatahi;	/* capture data high */
+	u32	cpccaptdatalo;	/* capture data low */
+	u32	cpcaptecc;	/* capture ECC */
+	u32	res8[5];
+	u32	cpcerrdet;	/* error detect */
+	u32	cpcerrdis;	/* error disable */
+	u32	cpcerrinten;	/* errir interrupt enable */
+	u32	cpcerrattr;	/* error attribute */
+	u32	cpcerreaddr;	/* error extended address */
+	u32	cpcerraddr;	/* error address */
+	u32	cpcerrctl;	/* error control */
+	u32	res9[41];	/* pad out to 4k */
+	u32	cpchdbcr0;	/* hardware debug control register 0 */
+	u32	res10[63];	/* pad out to 4k */
+} cpc_corenet_t;
+
+#define CPC_CSR0_CE	0x80000000	/* Cache Enable */
+#define CPC_CSR0_PE	0x40000000	/* Enable ECC */
+#define CPC_CSR0_FI	0x00200000	/* Cache Flash Invalidate */
+#define CPC_CSR0_WT	0x00080000	/* Write-through mode */
+#define CPC_CSR0_FL	0x00000800	/* Hardware cache flush */
+#define CPC_CSR0_LFC	0x00000400	/* Cache Lock Flash Clear */
+#define CPC_CFG0_SZ_MASK	0x00003fff
+#define CPC_CFG0_SZ_K(x)	((x & CPC_CFG0_SZ_MASK) << 6)
+#define CPC_CFG0_NUM_WAYS(x)	(((x >> 14) & 0x1f) + 1)
+#define CPC_CFG0_LINE_SZ(x)	((((x >> 23) & 0x3) + 1) * 32)
+#define CPC_SRCR1_SRBARU_MASK	0x0000ffff
+#define CPC_SRCR1_SRBARU(x)	(((unsigned long long)x >> 32) \
+				 & CPC_SRCR1_SRBARU_MASK)
+#define	CPC_SRCR0_SRBARL_MASK	0xffff8000
+#define CPC_SRCR0_SRBARL(x)	(x & CPC_SRCR0_SRBARL_MASK)
+#define CPC_SRCR0_INTLVEN	0x00000100
+#define CPC_SRCR0_SRAMSZ_1_WAY	0x00000000
+#define CPC_SRCR0_SRAMSZ_2_WAY	0x00000002
+#define CPC_SRCR0_SRAMSZ_4_WAY	0x00000004
+#define CPC_SRCR0_SRAMSZ_8_WAY	0x00000006
+#define CPC_SRCR0_SRAMSZ_16_WAY 0x00000008
+#define CPC_SRCR0_SRAMSZ_32_WAY 0x0000000a
+#define CPC_SRCR0_SRAMEN	0x00000001
+#define	CPC_ERRDIS_TMHITDIS  	0x00000080	/* multi-way hit disable */
+#define CPC_HDBCR0_CDQ_SPEC_DIS	0x08000000
+#define CPC_HDBCR0_TAG_ECC_SCRUB_DIS	0x01000000
+#define CPC_HDBCR0_DATA_ECC_SCRUB_DIS	0x00400000
+#endif /* CONFIG_SYS_FSL_CPC */
+
+/* Global Utilities Block */
+#ifdef CONFIG_FSL_CORENET
+typedef struct ccsr_gur {
+	u32	porsr1;		/* POR status */
+	u8	res1[28];
+	u32	gpporcr1;	/* General-purpose POR configuration */
+	u8	res2[12];
+	u32	gpiocr;		/* GPIO control */
+	u8	res3[12];
+	u32	gpoutdr;	/* General-purpose output data */
+	u8	res4[12];
+	u32	gpindr;		/* General-purpose input data */
+	u8	res5[12];
+	u32	alt_pmuxcr;	/* Alt function signal multiplex control */
+	u8	res6[12];
+	u32	devdisr;	/* Device disable control */
+#define FSL_CORENET_DEVDISR_PCIE1	0x80000000
+#define FSL_CORENET_DEVDISR_PCIE2	0x40000000
+#define FSL_CORENET_DEVDISR_PCIE3	0x20000000
+#define FSL_CORENET_DEVDISR_PCIE4	0x10000000
+#define FSL_CORENET_DEVDISR_RMU  	0x08000000
+#define FSL_CORENET_DEVDISR_SRIO1	0x04000000
+#define FSL_CORENET_DEVDISR_SRIO2	0x02000000
+#define FSL_CORENET_DEVDISR_DMA1	0x00400000
+#define FSL_CORENET_DEVDISR_DMA2	0x00200000
+#define FSL_CORENET_DEVDISR_DDR1	0x00100000
+#define FSL_CORENET_DEVDISR_DDR2	0x00080000
+#define FSL_CORENET_DEVDISR_DBG  	0x00010000
+#define FSL_CORENET_DEVDISR_NAL  	0x00008000
+#define FSL_CORENET_DEVDISR_SATA1	0x00004000
+#define FSL_CORENET_DEVDISR_SATA2	0x00002000
+#define FSL_CORENET_DEVDISR_ELBC	0x00001000
+#define FSL_CORENET_DEVDISR_USB1	0x00000800
+#define FSL_CORENET_DEVDISR_USB2	0x00000400
+#define FSL_CORENET_DEVDISR_ESDHC	0x00000100
+#define FSL_CORENET_DEVDISR_GPIO	0x00000080
+#define FSL_CORENET_DEVDISR_ESPI	0x00000040
+#define FSL_CORENET_DEVDISR_I2C1	0x00000020
+#define FSL_CORENET_DEVDISR_I2C2	0x00000010
+#define FSL_CORENET_DEVDISR_DUART1	0x00000002
+#define FSL_CORENET_DEVDISR_DUART2	0x00000001
+	u32	devdisr2;	/* Device disable control 2 */
+#define FSL_CORENET_DEVDISR2_PME	0x80000000
+#define FSL_CORENET_DEVDISR2_SEC	0x40000000
+#define FSL_CORENET_DEVDISR2_QMBM	0x08000000
+#define FSL_CORENET_DEVDISR2_FM1	0x02000000
+#define FSL_CORENET_DEVDISR2_10GEC1	0x01000000
+#define FSL_CORENET_DEVDISR2_DTSEC1_1	0x00800000
+#define FSL_CORENET_DEVDISR2_DTSEC1_2	0x00400000
+#define FSL_CORENET_DEVDISR2_DTSEC1_3	0x00200000
+#define FSL_CORENET_DEVDISR2_DTSEC1_4	0x00100000
+#define FSL_CORENET_DEVDISR2_DTSEC1_5	0x00080000
+#define FSL_CORENET_DEVDISR2_FM2	0x00020000
+#define FSL_CORENET_DEVDISR2_10GEC2	0x00010000
+#define FSL_CORENET_DEVDISR2_DTSEC2_1	0x00008000
+#define FSL_CORENET_DEVDISR2_DTSEC2_2	0x00004000
+#define FSL_CORENET_DEVDISR2_DTSEC2_3	0x00002000
+#define FSL_CORENET_DEVDISR2_DTSEC2_4	0x00001000
+#define FSL_CORENET_NUM_DEVDISR 	2
+	u8	res7[8];
+	u32	powmgtcsr;	/* Power management status & control */
+	u8	res8[12];
+	u32	coredisru;	/* uppper portion for support of 64 cores */
+	u32	coredisrl;	/* lower portion for support of 64 cores */
+	u8	res9[8];
+	u32	pvr;		/* Processor version */
+	u32	svr;		/* System version */
+	u8	res10[8];
+	u32	rstcr;		/* Reset control */
+	u32	rstrqpblsr;	/* Reset request preboot loader status */
+	u8	res11[8];
+	u32	rstrqmr1;	/* Reset request mask */
+	u8	res12[4];
+	u32	rstrqsr1;	/* Reset request status */
+	u8	res13[4];
+	u8	res14[4];
+	u32	rstrqwdtmrl;	/* Reset request WDT mask */
+	u8	res15[4];
+	u32	rstrqwdtsrl;	/* Reset request WDT status */
+	u8	res16[4];
+	u32	brrl;		/* Boot release */
+	u8	res17[24];
+	u32	rcwsr[16];	/* Reset control word status */
+#define FSL_CORENET_RCWSR4_SRDS_PRTCL		0xfc000000
+#define FSL_CORENET_RCWSR5_DDR_SYNC		0x00000080
+#define FSL_CORENET_RCWSR5_DDR_SYNC_SHIFT		 7
+#define FSL_CORENET_RCWSR5_SRDS_EN		0x00002000
+#define FSL_CORENET_RCWSRn_SRDS_LPD_B2		0x3c000000 /* bits 162..165 */
+#define FSL_CORENET_RCWSRn_SRDS_LPD_B3		0x003c0000 /* bits 170..173 */
+#define FSL_CORENET_RCWSR7_MCK_TO_PLAT_RAT	0x00400000
+#define FSL_CORENET_RCWSR8_HOST_AGT_B1		0x00e00000
+#define FSL_CORENET_RCWSR8_HOST_AGT_B2		0x00100000
+#define FSL_CORENET_RCWSR11_EC1 		0x00c00000 /* bits 360..361 */
+#define FSL_CORENET_RCWSR11_EC1_FM1_DTSEC1	0x00000000
+#define FSL_CORENET_RCWSR11_EC1_FM1_USB1	0x00800000
+#define FSL_CORENET_RCWSR11_EC2 		0x001c0000 /* bits 363..365 */
+#define FSL_CORENET_RCWSR11_EC2_FM2_DTSEC1	0x00000000
+#define FSL_CORENET_RCWSR11_EC2_FM1_DTSEC2	0x00080000
+#define FSL_CORENET_RCWSR11_EC2_USB2		0x00100000
+	u8	res18[192];
+	u32	scratchrw[4];	/* Scratch Read/Write */
+	u8	res19[240];
+	u32	scratchw1r[4];	/* Scratch Read (Write once) */
+	u8	res20[240];
+	u32	scrtsr[8];	/* Core reset status */
+	u8	res21[224];
+	u32	pex1liodnr;	/* PCI Express 1 LIODN */
+	u32	pex2liodnr;	/* PCI Express 2 LIODN */
+	u32	pex3liodnr;	/* PCI Express 3 LIODN */
+	u32	pex4liodnr;	/* PCI Express 4 LIODN */
+	u32	rio1liodnr;	/* RIO 1 LIODN */
+	u32	rio2liodnr;	/* RIO 2 LIODN */
+	u32	rio3liodnr;	/* RIO 3 LIODN */
+	u32	rio4liodnr;	/* RIO 4 LIODN */
+	u32	usb1liodnr;	/* USB 1 LIODN */
+	u32	usb2liodnr;	/* USB 2 LIODN */
+	u32	usb3liodnr;	/* USB 3 LIODN */
+	u32	usb4liodnr;	/* USB 4 LIODN */
+	u32	sdmmc1liodnr;	/* SD/MMC 1 LIODN */
+	u32	sdmmc2liodnr;	/* SD/MMC 2 LIODN */
+	u32	sdmmc3liodnr;	/* SD/MMC 3 LIODN */
+	u32	sdmmc4liodnr;	/* SD/MMC 4 LIODN */
+	u32	rio1maintliodnr;/* RIO 1 Maintenance LIODN */
+	u32	rio2maintliodnr;/* RIO 2 Maintenance LIODN */
+	u32	rio3maintliodnr;/* RIO 3 Maintenance LIODN */
+	u32	rio4maintliodnr;/* RIO 4 Maintenance LIODN */
+	u32	sata1liodnr;	/* SATA 1 LIODN */
+	u32	sata2liodnr;	/* SATA 2 LIODN */
+	u32	sata3liodnr;	/* SATA 3 LIODN */
+	u32	sata4liodnr;	/* SATA 4 LIODN */
+	u8	res22[32];
+	u32	dma1liodnr;	/* DMA 1 LIODN */
+	u32	dma2liodnr;	/* DMA 2 LIODN */
+	u32	dma3liodnr;	/* DMA 3 LIODN */
+	u32	dma4liodnr;	/* DMA 4 LIODN */
+	u8	res23[48];
+	u8	res24[64];
+	u32	pblsr;		/* Preboot loader status */
+	u32	pamubypenr;	/* PAMU bypass enable */
+	u32	dmacr1;		/* DMA control */
+	u8	res25[4];
+	u32	gensr1;		/* General status */
+	u8	res26[12];
+	u32	gencr1;		/* General control */
+	u8	res27[12];
+	u8	res28[4];
+	u32	cgensrl;	/* Core general status */
+	u8	res29[8];
+	u8	res30[4];
+	u32	cgencrl;	/* Core general control */
+	u8	res31[184];
+	u32	sriopstecr;	/* SRIO prescaler timer enable control */
+	u8	res32[1788];
+	u32	pmuxcr;		/* Pin multiplexing control */
+	u8	res33[60];
+	u32	iovselsr;	/* I/O voltage selection status */
+	u8	res34[28];
+	u32	ddrclkdr;	/* DDR clock disable */
+	u8	res35;
+	u32	elbcclkdr;	/* eLBC clock disable */
+	u8	res36[20];
+	u32	sdhcpcr;	/* eSDHC polarity configuration */
+	u8	res37[380];
+} ccsr_gur_t;
+
+/*
+ * On p4080 we have an LIODN for msg unit (rmu) but not maintenance
+ * everything after has RMan thus msg unit LIODN is used for maintenance
+ */
+#define rmuliodnr rio1maintliodnr
+
+typedef struct ccsr_clk {
+	u32	clkc0csr;	/* Core 0 Clock control/status */
+	u8	res1[0x1c];
+	u32	clkc1csr;	/* Core 1 Clock control/status */
+	u8	res2[0x1c];
+	u32	clkc2csr;	/* Core 2 Clock control/status */
+	u8	res3[0x1c];
+	u32	clkc3csr;	/* Core 3 Clock control/status */
+	u8	res4[0x1c];
+	u32	clkc4csr;	/* Core 4 Clock control/status */
+	u8	res5[0x1c];
+	u32	clkc5csr;	/* Core 5 Clock control/status */
+	u8	res6[0x1c];
+	u32	clkc6csr;	/* Core 6 Clock control/status */
+	u8	res7[0x1c];
+	u32	clkc7csr;	/* Core 7 Clock control/status */
+	u8	res8[0x71c];
+	u32	pllc1gsr;	/* Cluster PLL 1 General Status */
+	u8	res10[0x1c];
+	u32	pllc2gsr;	/* Cluster PLL 2 General Status */
+	u8	res11[0x1c];
+	u32	pllc3gsr;	/* Cluster PLL 3 General Status */
+	u8	res12[0x1c];
+	u32	pllc4gsr;	/* Cluster PLL 4 General Status */
+	u8	res13[0x39c];
+	u32	pllpgsr;	/* Platform PLL General Status */
+	u8	res14[0x1c];
+	u32	plldgsr;	/* DDR PLL General Status */
+	u8	res15[0x3dc];
+} ccsr_clk_t;
+
+typedef struct ccsr_rcpm {
+	u8	res1[4];
+	u32	cdozsrl;	/* Core Doze Status */
+	u8	res2[4];
+	u32	cdozcrl;	/* Core Doze Control */
+	u8	res3[4];
+	u32	cnapsrl;	/* Core Nap Status */
+	u8	res4[4];
+	u32	cnapcrl;	/* Core Nap Control */
+	u8	res5[4];
+	u32	cdozpsrl;	/* Core Doze Previous Status */
+	u8	res6[4];
+	u32	cdozpcrl;	/* Core Doze Previous Control */
+	u8	res7[4];
+	u32	cwaitsrl;	/* Core Wait Status */
+	u8	res8[8];
+	u32	powmgtcsr;	/* Power Mangement Control & Status */
+	u8	res9[12];
+	u32	ippdexpcr0;	/* IP Powerdown Exception Control 0 */
+	u8	res10[12];
+	u8	res11[4];
+	u32	cpmimrl;	/* Core PM IRQ Masking */
+	u8	res12[4];
+	u32	cpmcimrl;	/* Core PM Critical IRQ Masking */
+	u8	res13[4];
+	u32	cpmmcimrl;	/* Core PM Machine Check IRQ Masking */
+	u8	res14[4];
+	u32	cpmnmimrl;	/* Core PM NMI Masking */
+	u8	res15[4];
+	u32	ctbenrl;	/* Core Time Base Enable */
+	u8	res16[4];
+	u32	ctbclkselrl;	/* Core Time Base Clock Select */
+	u8	res17[4];
+	u32	ctbhltcrl;	/* Core Time Base Halt Control */
+	u8	res18[0xf68];
+} ccsr_rcpm_t;
+
+#else
+typedef struct ccsr_gur {
+	u32	porpllsr;	/* POR PLL ratio status */
+#ifdef CONFIG_MPC8536
+#define MPC85xx_PORPLLSR_DDR_RATIO	0x3e000000
+#define MPC85xx_PORPLLSR_DDR_RATIO_SHIFT	25
+#else
+#define MPC85xx_PORPLLSR_DDR_RATIO	0x00003e00
+#define MPC85xx_PORPLLSR_DDR_RATIO_SHIFT	9
+#endif
+#define MPC85xx_PORPLLSR_QE_RATIO	0x3e000000
+#define MPC85xx_PORPLLSR_QE_RATIO_SHIFT 	25
+#define MPC85xx_PORPLLSR_PLAT_RATIO	0x0000003e
+#define MPC85xx_PORPLLSR_PLAT_RATIO_SHIFT	1
+	u32	porbmsr;	/* POR boot mode status */
+#define MPC85xx_PORBMSR_HA		0x00070000
+#define MPC85xx_PORBMSR_HA_SHIFT	16
+	u32	porimpscr;	/* POR I/O impedance status & control */
+	u32	pordevsr;	/* POR I/O device status regsiter */
+#define MPC85xx_PORDEVSR_SGMII1_DIS	0x20000000
+#define MPC85xx_PORDEVSR_SGMII2_DIS	0x10000000
+#define MPC85xx_PORDEVSR_SGMII3_DIS	0x08000000
+#define MPC85xx_PORDEVSR_SGMII4_DIS	0x04000000
+#define MPC85xx_PORDEVSR_SRDS2_IO_SEL	0x38000000
+#define MPC85xx_PORDEVSR_PCI1		0x00800000
+#if defined(CONFIG_P1013) || defined(CONFIG_P1022) || defined(CONFIG_ATH40G)
+#define MPC85xx_PORDEVSR_IO_SEL 	0x007c0000
+#define MPC85xx_PORDEVSR_IO_SEL_SHIFT	18
+#else
+#define MPC85xx_PORDEVSR_IO_SEL 	0x00780000
+#define MPC85xx_PORDEVSR_IO_SEL_SHIFT	19
+#endif
+#define MPC85xx_PORDEVSR_PCI2_ARB	0x00040000
+#define MPC85xx_PORDEVSR_PCI1_ARB	0x00020000
+#define MPC85xx_PORDEVSR_PCI1_PCI32	0x00010000
+#define MPC85xx_PORDEVSR_PCI1_SPD	0x00008000
+#define MPC85xx_PORDEVSR_PCI2_SPD	0x00004000
+#define MPC85xx_PORDEVSR_DRAM_RTYPE	0x00000060
+#define MPC85xx_PORDEVSR_RIO_CTLS	0x00000008
+#define MPC85xx_PORDEVSR_RIO_DEV_ID	0x00000007
+	u32	pordbgmsr;	/* POR debug mode status */
+	u32	pordevsr2;	/* POR I/O device status 2 */
+/* The 8544 RM says this is bit 26, but it's really bit 24 */
+#define MPC85xx_PORDEVSR2_SEC_CFG	0x00000080
+	u8	res1[8];
+	u32	gpporcr;	/* General-purpose POR configuration */
+	u8	res2[12];
+	u32	gpiocr;		/* GPIO control */
+#define MPC85xx_GPIOCR_GPOUT 0x00000200
+	u8	res3[12];
+#if defined(CONFIG_MPC8569)
+	u32	plppar1;	/* Platform port pin assignment 1 */
+	u32	plppar2;	/* Platform port pin assignment 2 */
+	u32	plpdir1;	/* Platform port pin direction 1 */
+	u32	plpdir2;	/* Platform port pin direction 2 */
+#else
+	u32	gpoutdr;	/* General-purpose output data */
+#define MPC85xx_GPOUTDR_GPIO0 0x80000000
+#define MPC85xx_GPOUTDR_GPIO1 0x40000000
+#define MPC85xx_GPOUTDR_GPIO2 0x20000000
+#define MPC85xx_GPOUTDR_GPIO3 0x10000000
+#define MPC85xx_GPOUTDR_GPIO4 0x08000000
+#define MPC85xx_GPOUTDR_GPIO5 0x04000000
+#define MPC85xx_GPOUTDR_GPIO6 0x02000000
+#define MPC85xx_GPOUTDR_GPIO7 0x01000000
+	u8	res4[12];
+#endif
+	u32	gpindr;		/* General-purpose input data */
+	u8	res5[12];
+	u32	pmuxcr;		/* Alt. function signal multiplex control */
+#define MPC85xx_PMUXCR_SD_DATA		0x80000000
+#define MPC85xx_PMUXCR_SDHC_CD		0x40000000
+#define MPC85xx_PMUXCR_SDHC_WP		0x20000000
+	u32	pmuxcr2;	/* Alt. function signal multiplex control 2 */
+	u8	res6[8];
+	u32	devdisr;	/* Device disable control */
+#define MPC85xx_DEVDISR_PCI1		0x80000000
+#define MPC85xx_DEVDISR_PCI2		0x40000000
+#define MPC85xx_DEVDISR_PCIE		0x20000000
+#define MPC85xx_DEVDISR_LBC		0x08000000
+#define MPC85xx_DEVDISR_PCIE2		0x04000000
+#define MPC85xx_DEVDISR_PCIE3		0x02000000
+#define MPC85xx_DEVDISR_SEC		0x01000000
+#define MPC85xx_DEVDISR_SRIO		0x00080000
+#define MPC85xx_DEVDISR_RMSG		0x00040000
+#define MPC85xx_DEVDISR_DDR		0x00010000
+#define MPC85xx_DEVDISR_CPU		0x00008000
+#define MPC85xx_DEVDISR_CPU0		MPC85xx_DEVDISR_CPU
+#define MPC85xx_DEVDISR_TB		0x00004000
+#define MPC85xx_DEVDISR_TB0		MPC85xx_DEVDISR_TB
+#define MPC85xx_DEVDISR_CPU1		0x00002000
+#define MPC85xx_DEVDISR_TB1		0x00001000
+#define MPC85xx_DEVDISR_DMA		0x00000400
+#define MPC85xx_DEVDISR_TSEC1		0x00000080
+#define MPC85xx_DEVDISR_TSEC2		0x00000040
+#define MPC85xx_DEVDISR_TSEC3		0x00000020
+#define MPC85xx_DEVDISR_TSEC4		0x00000010
+#define MPC85xx_DEVDISR_I2C		0x00000004
+#define MPC85xx_DEVDISR_DUART		0x00000002
+	u8	res7[12];
+	u32	powmgtcsr;	/* Power management status & control */
+	u8	res8[12];
+	u32	mcpsumr;	/* Machine check summary */
+	u8	res9[12];
+	u32	pvr;		/* Processor version */
+	u32	svr;		/* System version */
+	u8	res10a[8];
+	u32	rstcr;		/* Reset control */
+#if defined(CONFIG_MPC8568)||defined(CONFIG_MPC8569)
+	u8	res10b[76];
+	par_io_t qe_par_io[7];
+	u8	res10c[1600];
+#else
+	u8	res10b[1868];
+#endif
+	u32	clkdvdr;	/* Clock Divide register */
+	u8	res10cc[804];
+	u32	ddrclkdr;	/* DDR clock disable register */
+	u8	res10d[724];
+	u32	clkocr;		/* Clock out select */
+	u8	res11[12];
+	u32	ddrdllcr;	/* DDR DLL control */
+	u8	res12[12];
+	u32	lbcdllcr;	/* LBC DLL control */
+	u8	res13[248];
+	u32	lbiuiplldcr0;	/* LBIU PLL Debug Reg 0 */
+	u32	lbiuiplldcr1;	/* LBIU PLL Debug Reg 1 */
+	u32	ddrioovcr;	/* DDR IO Override Control */
+	u32	tsec12ioovcr;	/* eTSEC 1/2 IO override control */
+	u32	tsec34ioovcr;	/* eTSEC 3/4 IO override control */
+	u8	res15[61648];
+} ccsr_gur_t;
+#endif
+
+typedef struct serdes_corenet {
+	struct {
+		u32	rstctl;	/* Reset Control Register */
+#define SRDS_RSTCTL_RST		0x80000000
+#define SRDS_RSTCTL_RSTDONE	0x40000000
+#define SRDS_RSTCTL_RSTERR	0x20000000
+#define SRDS_RSTCTL_SDPD	0x00000020
+		u32	pllcr0; /* PLL Control Register 0 */
+#define SRDS_PLLCR0_RFCK_SEL_MASK	0x30000000
+#define SRDS_PLLCR0_RFCK_SEL_100	0x00000000
+#define SRDS_PLLCR0_RFCK_SEL_125	0x10000000
+#define SRDS_PLLCR0_RFCK_SEL_156_25	0x20000000
+#define SRDS_PLLCR0_FRATE_SEL_MASK	0x00030000
+#define SRDS_PLLCR0_FRATE_SEL_5 	0x00000000
+#define SRDS_PLLCR0_FRATE_SEL_6_25	0x00010000
+		u32	pllcr1; /* PLL Control Register 1 */
+#define SRDS_PLLCR1_PLL_BWSEL	0x08000000
+		u32	res[5];
+	} bank[3];
+	u32	res1[12];
+	u32	srdstcalcr;	/* TX Calibration Control */
+	u32	res2[3];
+	u32	srdsrcalcr;	/* RX Calibration Control */
+	u32	res3[3];
+	u32	srdsgr0;	/* General Register 0 */
+	u32	res4[11];
+	u32	srdspccr0;	/* Protocol Converter Config 0 */
+	u32	srdspccr1;	/* Protocol Converter Config 1 */
+	u32	srdspccr2;	/* Protocol Converter Config 2 */
+#define SRDS_PCCR2_RST_XGMII1		0x00800000
+#define SRDS_PCCR2_RST_XGMII2		0x00400000
+	u32	res5[197];
+	struct {
+		u32	gcr0;	/* General Control Register 0 */
+#define SRDS_GCR0_RRST			0x00400000
+#define SRDS_GCR0_1STLANE		0x00010000
+		u32	gcr1;	/* General Control Register 1 */
+#define SRDS_GCR1_REIDL_CTL_MASK	0x001f0000
+#define SRDS_GCR1_REIDL_CTL_PCIE	0x00100000
+#define SRDS_GCR1_REIDL_CTL_SRIO	0x00000000
+#define SRDS_GCR1_REIDL_CTL_SGMII	0x00040000
+#define SRDS_GCR1_OPAD_CTL		0x04000000
+		u32	res1[4];
+		u32	tecr0;	/* TX Equalization Control Reg 0 */
+#define SRDS_TECR0_TEQ_TYPE_MASK	0x30000000
+#define SRDS_TECR0_TEQ_TYPE_2LVL	0x10000000
+		u32	res3;
+		u32	ttlcr0;	/* Transition Tracking Loop Ctrl 0 */
+		u32	res4[7];
+	} lane[24];
+	u32 res6[384];
+} serdes_corenet_t;
+
+enum {
+	FSL_SRDS_B1_LANE_A = 0,
+	FSL_SRDS_B1_LANE_B = 1,
+	FSL_SRDS_B1_LANE_C = 2,
+	FSL_SRDS_B1_LANE_D = 3,
+	FSL_SRDS_B1_LANE_E = 4,
+	FSL_SRDS_B1_LANE_F = 5,
+	FSL_SRDS_B1_LANE_G = 6,
+	FSL_SRDS_B1_LANE_H = 7,
+	FSL_SRDS_B1_LANE_I = 8,
+	FSL_SRDS_B1_LANE_J = 9,
+	FSL_SRDS_B2_LANE_A = 16,
+	FSL_SRDS_B2_LANE_B = 17,
+	FSL_SRDS_B2_LANE_C = 18,
+	FSL_SRDS_B2_LANE_D = 19,
+	FSL_SRDS_B3_LANE_A = 20,
+	FSL_SRDS_B3_LANE_B = 21,
+	FSL_SRDS_B3_LANE_C = 22,
+	FSL_SRDS_B3_LANE_D = 23,
+};
+
+/* Security Engine Block (MS = Most Sig., LS = Least Sig.) */
+#if CONFIG_SYS_FSL_SEC_COMPAT >= 4
+typedef struct ccsr_sec {
+	u32	res0;
+	u32	mcfgr;		/* Master CFG Register */
+	u8	res1[0x8];
+	struct {
+		u32	ms;	/* Job Ring LIODN Register, MS */
+		u32	ls;	/* Job Ring LIODN Register, LS */
+	} jrliodnr[4];
+	u8	res2[0x30];
+	struct {
+		u32	ms;	/* RTIC LIODN Register, MS */
+		u32	ls;	/* RTIC LIODN Register, LS */
+	} rticliodnr[4];
+	u8	res3[0x1c];
+	u32	decorr;		/* DECO Request Register */
+	struct {
+		u32	ms;	/* DECO LIODN Register, MS */
+		u32	ls;	/* DECO LIODN Register, LS */
+	} decoliodnr[5];
+	u8	res4[0x58];
+	u32	dar;		/* DECO Avail Register */
+	u32	drr;		/* DECO Reset Register */
+	u8	res5[0xe78];
+	u32	crnr_ms;	/* CHA Revision Number Register, MS */
+	u32	crnr_ls;	/* CHA Revision Number Register, LS */
+	u32	ctpr_ms;	/* Compile Time Parameters Register, MS */
+	u32	ctpr_ls;	/* Compile Time Parameters Register, LS */
+	u8	res6[0x10];
+	u32	far_ms;		/* Fault Address Register, MS */
+	u32	far_ls;		/* Fault Address Register, LS */
+	u32	falr;		/* Fault Address LIODN Register */
+	u32	fadr;		/* Fault Address Detail Register */
+	u8	res7[0x4];
+	u32	csta;		/* CAAM Status Register */
+	u8	res8[0x8];
+	u32	rvid;		/* Run Time Integrity Checking Version ID Reg.*/
+	u32	ccbvid;		/* CHA Cluster Block Version ID Register */
+	u32	chavid_ms;	/* CHA Version ID Register, MS */
+	u32	chavid_ls;	/* CHA Version ID Register, LS */
+	u32	chanum_ms;	/* CHA Number Register, MS */
+	u32	chanum_ls;	/* CHA Number Register, LS */
+	u32	secvid_ms;	/* SEC Version ID Register, MS */
+	u32	secvid_ls;	/* SEC Version ID Register, LS */
+	u8	res9[0x6020];
+	u32	qilcr_ms;	/* Queue Interface LIODN CFG Register, MS */
+	u32	qilcr_ls;	/* Queue Interface LIODN CFG Register, LS */
+	u8	res10[0x8fd8];
+} ccsr_sec_t;
+
+#define SEC_CTPR_MS_AXI_LIODN		0x08000000
+#define SEC_CTPR_MS_QI			0x02000000
+#define SEC_RVID_MA			0x0f000000
+#define SEC_CHANUM_MS_JRNUM_MASK	0xf0000000
+#define SEC_CHANUM_MS_JRNUM_SHIFT	28
+#define SEC_CHANUM_MS_DECONUM_MASK	0x0f000000
+#define SEC_CHANUM_MS_DECONUM_SHIFT	24
+#endif
+
+typedef struct ccsr_qman {
+	struct {
+		u32	qcsp_lio_cfg;	/* 0x0 - SW Portal n LIO cfg */
+		u32	qcsp_io_cfg;	/* 0x4 - SW Portal n IO cfg */
+		u32	res;
+		u32	qcsp_dd_cfg;	/* 0xc - SW Portal n Dynamic Debug cfg */
+	} qcsp[32];
+
+	/* Not actually reserved, but irrelevant to u-boot */
+	u8	res[0xbf8 - 0x200];
+	u32	ip_rev_1;
+	u32	ip_rev_2;
+	u32	fqd_bare;	/* FQD Extended Base Addr Register */
+	u32	fqd_bar;	/* FQD Base Addr Register */
+	u8	res1[0x8];
+	u32	fqd_ar;		/* FQD Attributes Register */
+	u8	res2[0xc];
+	u32	pfdr_bare;	/* PFDR Extended Base Addr Register */
+	u32	pfdr_bar;	/* PFDR Base Addr Register */
+	u8	res3[0x8];
+	u32	pfdr_ar;	/* PFDR Attributes Register */
+	u8	res4[0x4c];
+	u32	qcsp_bare;	/* QCSP Extended Base Addr Register */
+	u32	qcsp_bar;	/* QCSP Base Addr Register */
+	u8	res5[0x78];
+	u32	ci_sched_cfg;	/* Initiator Scheduling Configuration */
+	u32	srcidr;		/* Source ID Register */
+	u32	liodnr;		/* LIODN Register */
+	u8	res6[4];
+	u32	ci_rlm_cfg;	/* Initiator Read Latency Monitor Cfg */
+	u32	ci_rlm_avg;	/* Initiator Read Latency Monitor Avg */
+	u8	res7[0x2e8];
+} ccsr_qman_t;
+
+typedef struct ccsr_bman {
+	/* Not actually reserved, but irrelevant to u-boot */
+	u8	res[0xbf8];
+	u32	ip_rev_1;
+	u32	ip_rev_2;
+	u32	fbpr_bare;	/* FBPR Extended Base Addr Register */
+	u32	fbpr_bar;	/* FBPR Base Addr Register */
+	u8	res1[0x8];
+	u32	fbpr_ar;	/* FBPR Attributes Register */
+	u8	res2[0xf0];
+	u32	srcidr;		/* Source ID Register */
+	u32	liodnr;		/* LIODN Register */
+	u8	res7[0x2f4];
+} ccsr_bman_t;
+
+typedef struct ccsr_pme {
+	u8	res0[0x804];
+	u32	liodnbr;	/* LIODN Base Register */
+	u8	res1[0x1f8];
+	u32	srcidr;		/* Source ID Register */
+	u8	res2[8];
+	u32	liodnr;		/* LIODN Register */
+	u8	res3[0x1e8];
+	u32	pm_ip_rev_1;	/* PME IP Block Revision Reg 1*/
+	u32	pm_ip_rev_2;	/* PME IP Block Revision Reg 1*/
+	u8	res4[0x400];
+} ccsr_pme_t;
+
+#ifdef CONFIG_FSL_CORENET
+#define CONFIG_SYS_FSL_CORENET_CCM_OFFSET	0x0000
+#define CONFIG_SYS_MPC85xx_DDR_OFFSET		0x8000
+#define CONFIG_SYS_MPC85xx_DDR2_OFFSET		0x9000
+#define CONFIG_SYS_FSL_CORENET_CLK_OFFSET	0xE1000
+#define CONFIG_SYS_FSL_CORENET_RCPM_OFFSET	0xE2000
+#define CONFIG_SYS_FSL_CORENET_SERDES_OFFSET	0xEA000
+#define CONFIG_SYS_FSL_CPC_OFFSET		0x10000
+#define CONFIG_SYS_MPC85xx_DMA1_OFFSET		0x100000
+#define CONFIG_SYS_MPC85xx_DMA2_OFFSET		0x101000
+#define CONFIG_SYS_MPC85xx_DMA_OFFSET		CONFIG_SYS_MPC85xx_DMA1_OFFSET
+#define CONFIG_SYS_MPC85xx_ESPI_OFFSET		0x110000
+#define CONFIG_SYS_MPC85xx_ESDHC_OFFSET 	0x114000
+#define CONFIG_SYS_MPC85xx_LBC_OFFSET		0x124000
+#define CONFIG_SYS_MPC85xx_GPIO_OFFSET		0x130000
+#define CONFIG_SYS_MPC85xx_PCIE1_OFFSET 	0x200000
+#define CONFIG_SYS_MPC85xx_PCIE2_OFFSET 	0x201000
+#define CONFIG_SYS_MPC85xx_PCIE3_OFFSET 	0x202000
+#define CONFIG_SYS_MPC85xx_PCIE4_OFFSET 	0x203000
+#define CONFIG_SYS_MPC85xx_USB1_OFFSET		0x210000
+#define CONFIG_SYS_MPC85xx_USB2_OFFSET		0x211000
+#define CONFIG_SYS_MPC85xx_USB_OFFSET		CONFIG_SYS_MPC85xx_USB1_OFFSET
+#define CONFIG_SYS_MPC85xx_SATA1_OFFSET 	0x220000
+#define CONFIG_SYS_MPC85xx_SATA2_OFFSET 	0x221000
+#define CONFIG_SYS_FSL_SEC_OFFSET		0x300000
+#define CONFIG_SYS_FSL_CORENET_PME_OFFSET	0x316000
+#define CONFIG_SYS_FSL_CORENET_QMAN_OFFSET	0x318000
+#define CONFIG_SYS_FSL_CORENET_BMAN_OFFSET	0x31a000
+#define CONFIG_SYS_FSL_FM1_OFFSET		0x400000
+#define CONFIG_SYS_FSL_FM1_RX0_1G_OFFSET	0x488000
+#define CONFIG_SYS_FSL_FM1_RX1_1G_OFFSET	0x489000
+#define CONFIG_SYS_FSL_FM1_RX2_1G_OFFSET	0x48a000
+#define CONFIG_SYS_FSL_FM1_RX3_1G_OFFSET	0x48b000
+#define CONFIG_SYS_FSL_FM1_RX4_1G_OFFSET	0x48c000
+#define CONFIG_SYS_FSL_FM1_RX0_10G_OFFSET	0x490000
+#define CONFIG_SYS_FSL_FM1_DTSEC1_OFFSET	0x4e0000
+#define CONFIG_SYS_FSL_FM2_OFFSET		0x500000
+#define CONFIG_SYS_FSL_FM2_RX0_1G_OFFSET	0x588000
+#define CONFIG_SYS_FSL_FM2_RX1_1G_OFFSET	0x589000
+#define CONFIG_SYS_FSL_FM2_RX2_1G_OFFSET	0x58a000
+#define CONFIG_SYS_FSL_FM2_RX3_1G_OFFSET	0x58b000
+#define CONFIG_SYS_FSL_FM2_RX4_1G_OFFSET	0x58c000
+#define CONFIG_SYS_FSL_FM2_RX0_10G_OFFSET	0x590000
+#else
+#define CONFIG_SYS_MPC85xx_ECM_OFFSET		0x0000
+#define CONFIG_SYS_MPC85xx_DDR_OFFSET		0x2000
+#define CONFIG_SYS_MPC85xx_LBC_OFFSET		0x5000
+#define CONFIG_SYS_MPC85xx_DDR2_OFFSET		0x6000
+#define CONFIG_SYS_MPC85xx_ESPI_OFFSET		0x7000
+#define CONFIG_SYS_MPC85xx_PCI1_OFFSET		0x8000
+#define CONFIG_SYS_MPC85xx_PCIX_OFFSET		0x8000
+#define CONFIG_SYS_MPC85xx_PCI2_OFFSET		0x9000
+#define CONFIG_SYS_MPC85xx_PCIX2_OFFSET 	0x9000
+#define CONFIG_SYS_MPC85xx_PCIE1_OFFSET 	0xa000
+#define CONFIG_SYS_MPC85xx_PCIE2_OFFSET 	0x9000
+#if defined(CONFIG_MPC8572) || defined(CONFIG_P2020)
+#define CONFIG_SYS_MPC85xx_PCIE3_OFFSET         0x8000
+#else
+#define CONFIG_SYS_MPC85xx_PCIE3_OFFSET         0xb000
+#endif
+#define CONFIG_SYS_MPC85xx_GPIO_OFFSET		0xF000
+#define CONFIG_SYS_MPC85xx_SATA1_OFFSET 	0x18000
+#define CONFIG_SYS_MPC85xx_SATA2_OFFSET 	0x19000
+#define CONFIG_SYS_MPC85xx_L2_OFFSET		0x20000
+#define CONFIG_SYS_MPC85xx_DMA_OFFSET		0x21000
+#define CONFIG_SYS_MPC85xx_USB_OFFSET		0x22000
+#ifdef CONFIG_TSECV2
+#define CONFIG_SYS_TSEC1_OFFSET 		0xB0000
+#else
+#define CONFIG_SYS_TSEC1_OFFSET 		0x24000
+#endif
+#define CONFIG_SYS_MDIO1_OFFSET			0x24000
+#define CONFIG_SYS_MPC85xx_ESDHC_OFFSET		0x2e000
+#define CONFIG_SYS_MPC85xx_SERDES2_OFFSET	0xE3100
+#define CONFIG_SYS_MPC85xx_SERDES1_OFFSET	0xE3000
+#define CONFIG_SYS_MPC85xx_CPM_OFFSET		0x80000
+#endif
+
+#define CONFIG_SYS_MPC85xx_PIC_OFFSET		0x40000
+#define CONFIG_SYS_MPC85xx_GUTS_OFFSET		0xE0000
+
+#define CONFIG_SYS_FSL_CPC_ADDR	\
+	(CONFIG_SYS_CCSRBAR + CONFIG_SYS_FSL_CPC_OFFSET)
+#define CONFIG_SYS_FSL_CORENET_QMAN_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_CORENET_QMAN_OFFSET)
+#define CONFIG_SYS_FSL_CORENET_BMAN_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_CORENET_BMAN_OFFSET)
+#define CONFIG_SYS_FSL_CORENET_PME_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_CORENET_PME_OFFSET)
+#define CONFIG_SYS_MPC85xx_GUTS_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_GUTS_OFFSET)
+#define CONFIG_SYS_FSL_CORENET_CCM_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_CORENET_CCM_OFFSET)
+#define CONFIG_SYS_FSL_CORENET_CLK_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_CORENET_CLK_OFFSET)
+#define CONFIG_SYS_FSL_CORENET_RCPM_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_CORENET_RCPM_OFFSET)
+#define CONFIG_SYS_MPC85xx_ECM_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_ECM_OFFSET)
+#define CONFIG_SYS_MPC85xx_DDR_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_DDR_OFFSET)
+#define CONFIG_SYS_MPC85xx_DDR2_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_DDR2_OFFSET)
+#define CONFIG_SYS_LBC_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_LBC_OFFSET)
+#define CONFIG_SYS_MPC85xx_ESPI_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_ESPI_OFFSET)
+#define CONFIG_SYS_MPC85xx_PCIX_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_PCIX_OFFSET)
+#define CONFIG_SYS_MPC85xx_PCIX2_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_PCIX2_OFFSET)
+#define CONFIG_SYS_MPC85xx_GPIO_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_GPIO_OFFSET)
+#define CONFIG_SYS_MPC85xx_SATA1_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_SATA1_OFFSET)
+#define CONFIG_SYS_MPC85xx_SATA2_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_SATA2_OFFSET)
+#define CONFIG_SYS_MPC85xx_L2_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_L2_OFFSET)
+#define CONFIG_SYS_MPC85xx_DMA_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_DMA_OFFSET)
+#define CONFIG_SYS_MPC85xx_ESDHC_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_ESDHC_OFFSET)
+#define CONFIG_SYS_MPC8xxx_PIC_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_PIC_OFFSET)
+#define CONFIG_SYS_MPC85xx_CPM_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_CPM_OFFSET)
+#define CONFIG_SYS_MPC85xx_SERDES1_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_SERDES1_OFFSET)
+#define CONFIG_SYS_MPC85xx_SERDES2_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_SERDES2_OFFSET)
+#define CONFIG_SYS_FSL_CORENET_SERDES_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_CORENET_SERDES_OFFSET)
+#define CONFIG_SYS_MPC85xx_USB_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_USB_OFFSET)
+#define CONFIG_SYS_FSL_SEC_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_SEC_OFFSET)
+#define CONFIG_SYS_FSL_FM1_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_FM1_OFFSET)
+#define CONFIG_SYS_FSL_FM1_DTSEC1_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_FM1_DTSEC1_OFFSET)
+#define CONFIG_SYS_FSL_FM2_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_FSL_FM2_OFFSET)
+
+#define CONFIG_SYS_PCI1_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_PCI1_OFFSET)
+#define CONFIG_SYS_PCI2_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_PCI2_OFFSET)
+#define CONFIG_SYS_PCIE1_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_PCIE1_OFFSET)
+#define CONFIG_SYS_PCIE2_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_PCIE2_OFFSET)
+#define CONFIG_SYS_PCIE3_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_PCIE3_OFFSET)
+#define CONFIG_SYS_PCIE4_ADDR \
+	(CONFIG_SYS_IMMR + CONFIG_SYS_MPC85xx_PCIE4_OFFSET)
+
+#define TSEC_BASE_ADDR		(CONFIG_SYS_IMMR + CONFIG_SYS_TSEC1_OFFSET)
+#define MDIO_BASE_ADDR		(CONFIG_SYS_IMMR + CONFIG_SYS_MDIO1_OFFSET)
+
+#endif /*__IMMAP_85xx__*/
diff --git a/arch/ppc/mach-mpc8xxx/include/mach/mpc85xx.h b/arch/ppc/mach-mpc8xxx/include/mach/mpc85xx.h
new file mode 100644
index 0000000..64a3a9a
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/include/mach/mpc85xx.h
@@ -0,0 +1,29 @@
+/*
+ * Copyright 2004, 2007 Freescale Semiconductor.
+ * Copyright(c) 2003 Motorola Inc.
+ */
+
+#ifndef	__MPC85xx_H__
+#define __MPC85xx_H__
+
+/* define for common ppc_asm.tmpl */
+#define EXC_OFF_SYS_RESET	0x100	/* System reset */
+#define _START_OFFSET		0
+
+#if defined(CONFIG_E500)
+#include <asm/e500.h>
+#endif
+
+/*
+ * SCCR - System Clock Control Register, 9-8
+ */
+#define SCCR_CLPD       0x00000004      /* CPM Low Power Disable */
+#define SCCR_DFBRG_MSK  0x00000003      /* Division by BRGCLK Mask */
+#define SCCR_DFBRG_SHIFT 0
+
+#define SCCR_DFBRG00    0x00000000      /* BRGCLK division by 4 */
+#define SCCR_DFBRG01    0x00000001      /* BRGCLK div by 16 (normal) */
+#define SCCR_DFBRG10    0x00000002      /* BRGCLK division by 64 */
+#define SCCR_DFBRG11    0x00000003      /* BRGCLK division by 256 */
+
+#endif	/* __MPC85xx_H__ */
diff --git a/arch/ppc/mach-mpc8xxx/include/mach/nand_upm.h b/arch/ppc/mach-mpc8xxx/include/mach/nand_upm.h
new file mode 100644
index 0000000..b26134d
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/include/mach/nand_upm.h
@@ -0,0 +1,36 @@
+/**
+ * @file
+ * @brief This file contains exported structure for UPM state machine
+ *
+ * FileName: mach-mpc85xx/include/mach/nand_upm.h
+ *
+ * UPM state machine platform data.
+ *
+ */
+/*
+ * (C) Copyright 2011
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+#ifndef __NAND_UPM_H
+#include <asm/fsl_upm.h>
+
+/* Structure for table with supported UPM timings */
+struct upm_freq {
+	ulong freq;
+	const u32 *upm_patt;
+	uchar gpl4_disable;
+	uchar ehtr;
+	uchar ead;
+};
+
+
+struct upm_platform_data {
+	struct upm_freq *upm_freq_table;		/* frequency table */
+	struct fsl_upm_nand *fun;					/* NAND params and UPM regs */
+	void (*upm_setup) (struct upm_platform_data *plat);
+};
+#endif
diff --git a/arch/ppc/mach-mpc8xxx/include/mach/ppc_asm.tmpl b/arch/ppc/mach-mpc8xxx/include/mach/ppc_asm.tmpl
new file mode 100644
index 0000000..c7f0237
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/include/mach/ppc_asm.tmpl
@@ -0,0 +1,299 @@
+/*
+ * (C) Copyright 2000-2002
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/*
+ * This file contains all the macros and symbols which define
+ * a PowerPC assembly language environment.
+ */
+#ifndef	__PPC_ASM_TMPL__
+#define __PPC_ASM_TMPL__
+
+/***************************************************************************
+ *
+ * These definitions simplify the ugly declarations necessary for GOT
+ * definitions.
+ *
+ * Stolen from prepboot/bootldr.h, (C) 1998 Gabriel Paubert, paubert@iram.es
+ *
+ * Uses r12 to access the GOT
+ */
+
+#define START_GOT			\
+	.section	".got2","aw";	\
+.LCTOC1 = .+32768
+
+#define END_GOT				\
+	.text
+
+#define GET_GOT				\
+	bl	1f		;	\
+	.text	2		;	\
+0:	.long	.LCTOC1-1f	;	\
+	.text			;	\
+1:	mflr	r12		;	\
+	lwz	r0,0b-1b(r12)	;	\
+	add	r12,r0,r12	;
+
+#define GOT_ENTRY(NAME)		.L_ ## NAME = . - .LCTOC1 ; .long NAME
+
+#define GOT(NAME)		.L_ ## NAME (r12)
+
+
+/***************************************************************************
+ * Register names
+ */
+#define	r0	0
+#define	r1	1
+#define	r2	2
+#define	r3	3
+#define	r4	4
+#define	r5	5
+#define	r6	6
+#define	r7	7
+#define	r8	8
+#define	r9	9
+#define	r10	10
+#define	r11	11
+#define	r12	12
+#define	r13	13
+#define	r14	14
+#define	r15	15
+#define	r16	16
+#define	r17	17
+#define	r18	18
+#define	r19	19
+#define	r20	20
+#define	r21	21
+#define	r22	22
+#define	r23	23
+#define	r24	24
+#define	r25	25
+#define	r26	26
+#define	r27	27
+#define	r28	28
+#define	r29	29
+#define	r30	30
+#define	r31	31
+
+
+#if defined(CONFIG_8xx) || defined(CONFIG_MPC824X)
+
+/* Some special registers */
+
+#define ICR	148	/* Interrupt Cause Register (37-44) */
+#define DER	149
+#define COUNTA	150	/* Breakpoint Counter	    (37-44) */
+#define COUNTB	151	/* Breakpoint Counter	    (37-44) */
+#define LCTRL1	156	/* Load/Store Support	    (37-40) */
+#define LCTRL2	157	/* Load/Store Support	    (37-41) */
+#define ICTRL	158
+
+#endif	/* CONFIG_8xx, CONFIG_MPC824X */
+
+
+#if  defined(CONFIG_5xx)
+/* Some special purpose registers */
+#define DER	149		/* Debug Enable Register		*/
+#define COUNTA	150		/* Breakpoint Counter			*/
+#define COUNTB	151		/* Breakpoint Counter			*/
+#define LCTRL1	156		/* Load/Store Support			*/
+#define LCTRL2	157		/* Load/Store Support			*/
+#define ICTRL	158		/* I-Bus Support Control Register	*/
+#define EID	81
+#endif	/* CONFIG_5xx */
+
+#if defined(CONFIG_8xx)
+
+/* Registers in the processor's internal memory map that we use.
+*/
+#define SYPCR	0x00000004
+#define BR0	0x00000100
+#define OR0	0x00000104
+#define BR1	0x00000108
+#define OR1	0x0000010c
+#define BR2	0x00000110
+#define OR2	0x00000114
+#define BR3	0x00000118
+#define OR3	0x0000011c
+#define BR4	0x00000120
+#define OR4	0x00000124
+
+#define MAR	0x00000164
+#define MCR	0x00000168
+#define MAMR	0x00000170
+#define MBMR	0x00000174
+#define MSTAT	0x00000178
+#define MPTPR	0x0000017a
+#define MDR	0x0000017c
+
+#define TBSCR	0x00000200
+#define TBREFF0 0x00000204
+
+#define PLPRCR	0x00000284
+
+#elif defined(CONFIG_8260)
+
+#define HID2		1011
+
+#define HID0_IFEM	(1<<7)
+
+#define HID0_ICE_BITPOS	16
+#define HID0_DCE_BITPOS	17
+
+#define IM_REGBASE	0x10000
+#define IM_SYPCR	(IM_REGBASE+0x0004)
+#define IM_SWSR 	(IM_REGBASE+0x000e)
+#define IM_BR0		(IM_REGBASE+0x0100)
+#define IM_OR0		(IM_REGBASE+0x0104)
+#define IM_BR1		(IM_REGBASE+0x0108)
+#define IM_OR1		(IM_REGBASE+0x010c)
+#define IM_BR2		(IM_REGBASE+0x0110)
+#define IM_OR2		(IM_REGBASE+0x0114)
+#define IM_MPTPR	(IM_REGBASE+0x0184)
+#define IM_PSDMR	(IM_REGBASE+0x0190)
+#define IM_PSRT 	(IM_REGBASE+0x019c)
+#define IM_IMMR 	(IM_REGBASE+0x01a8)
+#define IM_SCCR 	(IM_REGBASE+0x0c80)
+
+#elif defined(CONFIG_MPC5xxx) || defined(CONFIG_MPC8220)
+
+#define HID0_ICE_BITPOS	16
+#define HID0_DCE_BITPOS	17
+
+#endif
+
+#define curptr r2
+
+#define SYNC \
+	sync; \
+	isync
+
+/*
+ * Macros for storing registers into and loading registers from
+ * exception frames.
+ */
+#define SAVE_GPR(n, base)	stw	n,GPR0+4*(n)(base)
+#define SAVE_2GPRS(n, base)	SAVE_GPR(n, base); SAVE_GPR(n+1, base)
+#define SAVE_4GPRS(n, base)	SAVE_2GPRS(n, base); SAVE_2GPRS(n+2, base)
+#define SAVE_8GPRS(n, base)	SAVE_4GPRS(n, base); SAVE_4GPRS(n+4, base)
+#define SAVE_10GPRS(n, base)	SAVE_8GPRS(n, base); SAVE_2GPRS(n+8, base)
+#define REST_GPR(n, base)	lwz	n,GPR0+4*(n)(base)
+#define REST_2GPRS(n, base)	REST_GPR(n, base); REST_GPR(n+1, base)
+#define REST_4GPRS(n, base)	REST_2GPRS(n, base); REST_2GPRS(n+2, base)
+#define REST_8GPRS(n, base)	REST_4GPRS(n, base); REST_4GPRS(n+4, base)
+#define REST_10GPRS(n, base)	REST_8GPRS(n, base); REST_2GPRS(n+8, base)
+
+/*
+ * GCC sometimes accesses words at negative offsets from the stack
+ * pointer, although the SysV ABI says it shouldn't.  To cope with
+ * this, we leave this much untouched space on the stack on exception
+ * entry.
+ */
+#define STACK_UNDERHEAD	64
+
+/*
+ * Exception entry code.  This code runs with address translation
+ * turned off, i.e. using physical addresses.
+ * We assume sprg3 has the physical address of the current
+ * task's thread_struct.
+ */
+#define EXCEPTION_PROLOG(reg1, reg2)	\
+	mtspr	SPRG0,r20;	\
+	mtspr	SPRG1,r21;	\
+	mfcr	r20;		\
+	subi	r21,r1,INT_FRAME_SIZE+STACK_UNDERHEAD;	/* alloc exc. frame */\
+	stw	r20,_CCR(r21);		/* save registers */ \
+	stw	r22,GPR22(r21);	\
+	stw	r23,GPR23(r21);	\
+	mfspr	r20,SPRG0;	\
+	stw	r20,GPR20(r21);	\
+	mfspr	r22,SPRG1;	\
+	stw	r22,GPR21(r21);	\
+	mflr	r20;		\
+	stw	r20,_LINK(r21);	\
+	mfctr	r22;		\
+	stw	r22,_CTR(r21);	\
+	mfspr	r20,XER;	\
+	stw	r20,_XER(r21);	\
+	mfspr	r20, DAR_DEAR;	\
+	stw	r20,_DAR(r21);	\
+	mfspr	r22,reg1;	\
+	mfspr	r23,reg2;	\
+	stw	r0,GPR0(r21);	\
+	stw	r1,GPR1(r21);	\
+	stw	r2,GPR2(r21);	\
+	stw	r1,0(r21);	\
+	mr	r1,r21;			/* set new kernel sp */	\
+	SAVE_4GPRS(3, r21);
+/*
+ * Note: code which follows this uses cr0.eq (set if from kernel),
+ * r21, r22 (SRR0), and r23 (SRR1).
+ */
+
+/*
+ * Exception vectors.
+ *
+ * The data words for `hdlr' and `int_return' are initialized with
+ * OFFSET values only; they must be relocated first before they can
+ * be used!
+ */
+#define COPY_EE(d, s)		rlwimi d,s,0,16,16
+#define NOCOPY(d, s)
+#define EXC_XFER_TEMPLATE(label, hdlr, msr, copyee)	\
+	bl	1f;					\
+1:	mflr    r20;					\
+	lwz	r20,(.L_ ## label)-1b+8(r20);		\
+	mtlr	r20;					\
+	li	r20,msr;				\
+	copyee(r20,r23);				\
+	rlwimi	r20,r23,0,25,25;			\
+	blrl;						\
+.L_ ## label :						\
+	.long	hdlr - _start + _START_OFFSET;		\
+	.long	int_return - _start + _START_OFFSET;	\
+	.long	transfer_to_handler - _start + _START_OFFSET
+
+#define STD_EXCEPTION(n, label, hdlr)				\
+	. = n;							\
+label:								\
+	EXCEPTION_PROLOG(SRR0, SRR1);				\
+	addi	r3,r1,STACK_FRAME_OVERHEAD;			\
+	EXC_XFER_TEMPLATE(label, hdlr, MSR_KERNEL, NOCOPY)	\
+
+#define CRIT_EXCEPTION(n, label, hdlr)				\
+	. = n;							\
+label:								\
+	EXCEPTION_PROLOG(CSRR0, CSRR1);				\
+	addi	r3,r1,STACK_FRAME_OVERHEAD;			\
+	EXC_XFER_TEMPLATE(label, hdlr,				\
+	MSR_KERNEL & ~(MSR_ME|MSR_DE|MSR_CE), NOCOPY)		\
+
+#define MCK_EXCEPTION(n, label, hdlr)				\
+	. = n;							\
+label:								\
+	EXCEPTION_PROLOG(MCSRR0, MCSRR1);			\
+	addi	r3,r1,STACK_FRAME_OVERHEAD;			\
+	EXC_XFER_TEMPLATE(label, hdlr,				\
+	MSR_KERNEL & ~(MSR_ME|MSR_DE|MSR_CE), NOCOPY)		\
+
+#endif	/* __PPC_ASM_TMPL__ */
diff --git a/arch/ppc/mach-mpc8xxx/include/mach/tsec.h b/arch/ppc/mach-mpc8xxx/include/mach/tsec.h
new file mode 100644
index 0000000..17b5483
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/include/mach/tsec.h
@@ -0,0 +1,664 @@
+/*
+ *  tsec.h
+ *
+ *  Driver for the Motorola Triple Speed Ethernet Controller
+ *
+ *  This software may be used and distributed according to the
+ *  terms of the GNU Public License, Version 2, incorporated
+ *  herein by reference.
+ *
+ * Copyright 2004, 2007, 2009  Freescale Semiconductor, Inc.
+ * (C) Copyright 2003, Motorola, Inc.
+ * maintained by Xianghua Xiao (x.xiao@motorola.com)
+ * author Andy Fleming
+ *
+ */
+
+#ifndef __TSEC_H
+#define __TSEC_H
+
+#include <net.h>
+#include <config.h>
+
+#define TSEC_SIZE 		0x01000
+#define TSEC_MDIO_OFFSET	0x01000
+
+#define STD_TSEC_INFO(num) \
+{			\
+	.regs = (tsec_t *)(TSEC_BASE_ADDR + ((num - 1) * TSEC_SIZE)), \
+	.miiregs = (tsec_mdio_t *)(MDIO_BASE_ADDR), \
+	.miiregs_sgmii = (tsec_mdio_t *)(MDIO_BASE_ADDR \
+					 + (num - 1) * TSEC_MDIO_OFFSET), \
+	.devname = CONFIG_TSEC##num##_NAME, \
+	.phyaddr = TSEC##num##_PHY_ADDR, \
+	.flags = TSEC##num##_FLAGS \
+}
+
+#define SET_STD_TSEC_INFO(x, num) \
+{			\
+	x.regs = (tsec_t *)(TSEC_BASE_ADDR + ((num - 1) * TSEC_SIZE)); \
+	x.miiregs = (tsec_mdio_t *)(MDIO_BASE_ADDR); \
+	x.miiregs_sgmii = (tsec_mdio_t *)(MDIO_BASE_ADDR \
+					  + (num - 1) * TSEC_MDIO_OFFSET); \
+	x.devname = CONFIG_TSEC##num##_NAME; \
+	x.phyaddr = TSEC##num##_PHY_ADDR; \
+	x.flags = TSEC##num##_FLAGS;\
+}
+
+#define MAC_ADDR_LEN 6
+
+/* #define TSEC_TIMEOUT	1000000 */
+#define TSEC_TIMEOUT 1000
+#define TOUT_LOOP	1000000
+
+#define PHY_AUTONEGOTIATE_TIMEOUT	5000 /* in ms */
+
+/* TBI register addresses */
+#define TBI_CR			0x00
+#define TBI_SR			0x01
+#define TBI_ANA 		0x04
+#define TBI_ANLPBPA		0x05
+#define TBI_ANEX		0x06
+#define TBI_TBICON		0x11
+
+/* TBI MDIO register bit fields*/
+#define TBICON_CLK_SELECT	0x0020
+#define TBIANA_ASYMMETRIC_PAUSE 0x0100
+#define TBIANA_SYMMETRIC_PAUSE  0x0080
+#define TBIANA_HALF_DUPLEX	0x0040
+#define TBIANA_FULL_DUPLEX	0x0020
+/* The two reserved magic bits below are used in AN3869 to enable SGMII. */
+#define TBIANA_RESERVED1	0x4000
+#define TBIANA_RESERVED15	0x0001
+#define TBICR_PHY_RESET 	0x8000
+#define TBICR_ANEG_ENABLE	0x1000
+#define TBICR_RESTART_ANEG	0x0200
+#define TBICR_FULL_DUPLEX	0x0100
+#define TBICR_SPEED1_SET	0x0040
+
+
+/* MAC register bits */
+#define MACCFG1_SOFT_RESET	0x80000000
+#define MACCFG1_RESET_RX_MC	0x00080000
+#define MACCFG1_RESET_TX_MC	0x00040000
+#define MACCFG1_RESET_RX_FUN	0x00020000
+#define MACCFG1_RESET_TX_FUN	0x00010000
+#define MACCFG1_LOOPBACK	0x00000100
+#define MACCFG1_RX_FLOW 	0x00000020
+#define MACCFG1_TX_FLOW 	0x00000010
+#define MACCFG1_SYNCD_RX_EN	0x00000008
+#define MACCFG1_RX_EN		0x00000004
+#define MACCFG1_SYNCD_TX_EN	0x00000002
+#define MACCFG1_TX_EN		0x00000001
+
+#define MACCFG2_INIT_SETTINGS	0x00007205
+#define MACCFG2_FULL_DUPLEX	0x00000001
+#define MACCFG2_IF		0x00000300
+#define MACCFG2_GMII		0x00000200
+#define MACCFG2_MII		0x00000100
+
+#define ECNTRL_INIT_SETTINGS	0x00001000
+#define ECNTRL_TBI_MODE 	0x00000020
+#define ECNTRL_R100		0x00000008
+#define ECNTRL_SGMII_MODE	0x00000002
+
+#define miim_end  -2
+#define miim_read -1
+
+#ifndef CONFIG_SYS_TBIPA_VALUE
+    #define CONFIG_SYS_TBIPA_VALUE	0x1f
+#endif
+#define MIIMCFG_INIT_VALUE	0x00000003
+#define MIIMCFG_RESET		0x80000000
+
+#define MIIMIND_BUSY		0x00000001
+#define MIIMIND_NOTVALID	0x00000004
+
+#define MIIM_CONTROL		0x00
+#define MIIM_CONTROL_RESET	0x00009140
+#define MIIM_CONTROL_INIT	0x00001140
+#define MIIM_CONTROL_RESTART	0x00001340
+#define MIIM_ANEN		0x00001000
+
+#define MIIM_CR 		0x00
+#define MIIM_CR_RST		0x00008000
+#define MIIM_CR_INIT		0x00001000
+
+#define MIIM_STATUS		0x1
+#define MIIM_STATUS_AN_DONE	0x00000020
+#define MIIM_STATUS_LINK	0x0004
+
+#define MIIM_PHYIR1		0x2
+#define MIIM_PHYIR2		0x3
+
+#define MIIM_ANAR		0x4
+#define MIIM_ANAR_INIT		0x1e1
+
+#define MIIM_TBI_ANLPBPA	0x5
+#define MIIM_TBI_ANLPBPA_HALF	0x00000040
+#define MIIM_TBI_ANLPBPA_FULL	0x00000020
+
+#define MIIM_TBI_ANEX		0x6
+#define MIIM_TBI_ANEX_NP	0x00000004
+#define MIIM_TBI_ANEX_PRX	0x00000002
+
+#define MIIM_GBIT_CONTROL	0x9
+#define MIIM_GBIT_CONTROL_INIT	0xe00
+
+#define MIIM_EXT_PAGE_ACCESS	0x1f
+
+/* Broadcom BCM54xx -- taken from linux sungem_phy */
+#define MIIM_BCM54xx_AUXCNTL			0x18
+#define MIIM_BCM54xx_AUXCNTL_ENCODE(val)	((val & 0x7) << 12)|(val & 0x7)
+#define MIIM_BCM54xx_AUXSTATUS			0x19
+#define MIIM_BCM54xx_AUXSTATUS_LINKMODE_MASK	0x0700
+#define MIIM_BCM54xx_AUXSTATUS_LINKMODE_SHIFT	8
+
+#define MIIM_BCM54XX_SHD	0x1c	/* 0x1c shadow registers */
+#define MIIM_BCM54XX_SHD_WRITE	0x8000
+#define MIIM_BCM54XX_SHD_VAL(x)	((x & 0x1f) << 10)
+#define MIIM_BCM54XX_SHD_DATA(x)	((x & 0x3ff) << 0)
+#define MIIM_BCM54XX_SHD_WR_ENCODE(val, data)	\
+	(MIIM_BCM54XX_SHD_WRITE | MIIM_BCM54XX_SHD_VAL(val) | \
+	 MIIM_BCM54XX_SHD_DATA(data))
+
+#define MIIM_BCM54XX_EXP_DATA	0x15	/* Expansion register data */
+#define MIIM_BCM54XX_EXP_SEL	0x17	/* Expansion register select */
+#define MIIM_BCM54XX_EXP_SEL_SSD	0x0e00	/* Secondary SerDes select */
+#define MIIM_BCM54XX_EXP_SEL_ER	0x0f00	/* Expansion register select */
+
+/* Cicada Auxiliary Control/Status Register */
+#define MIIM_CIS8201_AUX_CONSTAT	0x1c
+#define MIIM_CIS8201_AUXCONSTAT_INIT	0x0004
+#define MIIM_CIS8201_AUXCONSTAT_DUPLEX	0x0020
+#define MIIM_CIS8201_AUXCONSTAT_SPEED	0x0018
+#define MIIM_CIS8201_AUXCONSTAT_GBIT	0x0010
+#define MIIM_CIS8201_AUXCONSTAT_100	0x0008
+
+/* Cicada Extended Control Register 1 */
+#define MIIM_CIS8201_EXT_CON1		0x17
+#define MIIM_CIS8201_EXTCON1_INIT	0x0000
+
+/* Cicada 8204 Extended PHY Control Register 1 */
+#define MIIM_CIS8204_EPHY_CON		0x17
+#define MIIM_CIS8204_EPHYCON_INIT	0x0006
+#define MIIM_CIS8204_EPHYCON_RGMII	0x1100
+
+/* Cicada 8204 Serial LED Control Register */
+#define MIIM_CIS8204_SLED_CON		0x1b
+#define MIIM_CIS8204_SLEDCON_INIT	0x1115
+
+#define MIIM_GBIT_CON		0x09
+#define MIIM_GBIT_CON_ADVERT	0x0e00
+
+/* Entry for Vitesse VSC8244 regs starts here */
+/* Vitesse VSC8244 Auxiliary Control/Status Register */
+#define MIIM_VSC8244_AUX_CONSTAT	0x1c
+#define MIIM_VSC8244_AUXCONSTAT_INIT	0x0000
+#define MIIM_VSC8244_AUXCONSTAT_DUPLEX	0x0020
+#define MIIM_VSC8244_AUXCONSTAT_SPEED	0x0018
+#define MIIM_VSC8244_AUXCONSTAT_GBIT	0x0010
+#define MIIM_VSC8244_AUXCONSTAT_100	0x0008
+#define MIIM_CONTROL_INIT_LOOPBACK	0x4000
+
+/* Vitesse VSC8244 Extended PHY Control Register 1 */
+#define MIIM_VSC8244_EPHY_CON		0x17
+#define MIIM_VSC8244_EPHYCON_INIT	0x0006
+
+/* Vitesse VSC8244 Serial LED Control Register */
+#define MIIM_VSC8244_LED_CON		0x1b
+#define MIIM_VSC8244_LEDCON_INIT	0xF011
+
+/* Entry for Vitesse VSC8601 regs starts here (Not complete) */
+/* Vitesse VSC8601 Extended PHY Control Register 1 */
+#define MIIM_VSC8601_EPHY_CON		0x17
+#define MIIM_VSC8601_EPHY_CON_INIT_SKEW	0x1120
+#define MIIM_VSC8601_SKEW_CTRL		0x1c
+
+/* 88E1011 PHY Status Register */
+#define MIIM_88E1011_PHY_STATUS		0x11
+#define MIIM_88E1011_PHYSTAT_SPEED	0xc000
+#define MIIM_88E1011_PHYSTAT_GBIT	0x8000
+#define MIIM_88E1011_PHYSTAT_100	0x4000
+#define MIIM_88E1011_PHYSTAT_DUPLEX	0x2000
+#define MIIM_88E1011_PHYSTAT_SPDDONE	0x0800
+#define MIIM_88E1011_PHYSTAT_LINK	0x0400
+
+#define MIIM_88E1011_PHY_SCR		0x10
+#define MIIM_88E1011_PHY_MDI_X_AUTO	0x0060
+
+/* 88E1111 PHY LED Control Register */
+#define MIIM_88E1111_PHY_LED_CONTROL	24
+#define MIIM_88E1111_PHY_LED_DIRECT	0x4100
+#define MIIM_88E1111_PHY_LED_COMBINE	0x411C
+
+/* 88E1121 PHY LED Control Register */
+#define MIIM_88E1121_PHY_LED_CTRL	16
+#define MIIM_88E1121_PHY_LED_PAGE	3
+#define MIIM_88E1121_PHY_LED_DEF	0x0030
+
+/* 88E1121 PHY IRQ Enable/Status Register */
+#define MIIM_88E1121_PHY_IRQ_EN 	18
+#define MIIM_88E1121_PHY_IRQ_STATUS	19
+
+#define MIIM_88E1121_PHY_PAGE		22
+
+/* 88E1145 Extended PHY Specific Control Register */
+#define MIIM_88E1145_PHY_EXT_CR 20
+#define MIIM_M88E1145_RGMII_RX_DELAY	0x0080
+#define MIIM_M88E1145_RGMII_TX_DELAY	0x0002
+
+#define MIIM_88E1145_PHY_PAGE	29
+#define MIIM_88E1145_PHY_CAL_OV 30
+
+/* RTL8211B PHY Status Register */
+#define MIIM_RTL8211B_PHY_STATUS	0x11
+#define MIIM_RTL8211B_PHYSTAT_SPEED	0xc000
+#define MIIM_RTL8211B_PHYSTAT_GBIT	0x8000
+#define MIIM_RTL8211B_PHYSTAT_100	0x4000
+#define MIIM_RTL8211B_PHYSTAT_DUPLEX	0x2000
+#define MIIM_RTL8211B_PHYSTAT_SPDDONE	0x0800
+#define MIIM_RTL8211B_PHYSTAT_LINK	0x0400
+
+/* DM9161 Control register values */
+#define MIIM_DM9161_CR_STOP	0x0400
+#define MIIM_DM9161_CR_RSTAN	0x1200
+
+#define MIIM_DM9161_SCR 	0x10
+#define MIIM_DM9161_SCR_INIT	0x0610
+
+/* DM9161 Specified Configuration and Status Register */
+#define MIIM_DM9161_SCSR 	0x11
+#define MIIM_DM9161_SCSR_100F	0x8000
+#define MIIM_DM9161_SCSR_100H	0x4000
+#define MIIM_DM9161_SCSR_10F	0x2000
+#define MIIM_DM9161_SCSR_10H	0x1000
+
+/* DM9161 10BT Configuration/Status */
+#define MIIM_DM9161_10BTCSR	0x12
+#define MIIM_DM9161_10BTCSR_INIT	0x7800
+
+/* LXT971 Status 2 registers */
+#define MIIM_LXT971_SR2		     0x11  /* Status Register 2  */
+#define MIIM_LXT971_SR2_SPEED_MASK 0x4200
+#define MIIM_LXT971_SR2_10HDX	   0x0000  /*  10 Mbit half duplex selected */
+#define MIIM_LXT971_SR2_10FDX	   0x0200  /*  10 Mbit full duplex selected */
+#define MIIM_LXT971_SR2_100HDX	   0x4000  /* 100 Mbit half duplex selected */
+#define MIIM_LXT971_SR2_100FDX	   0x4200  /* 100 Mbit full duplex selected */
+
+/* DP83865 Control register values */
+#define MIIM_DP83865_CR_INIT	0x9200
+
+/* DP83865 Link and Auto-Neg Status Register */
+#define MIIM_DP83865_LANR	0x11
+#define MIIM_DP83865_SPD_MASK	0x0018
+#define MIIM_DP83865_SPD_1000	0x0010
+#define MIIM_DP83865_SPD_100	0x0008
+#define MIIM_DP83865_DPX_FULL	0x0002
+
+#define MIIM_READ_COMMAND	0x00000001
+
+#define MRBLR_INIT_SETTINGS	PKTSIZE_ALIGN
+
+#define MINFLR_INIT_SETTINGS	0x00000040
+
+#define DMACTRL_INIT_SETTINGS	0x000000c3
+#define DMACTRL_GRS		0x00000010
+#define DMACTRL_GTS		0x00000008
+
+#define TSTAT_CLEAR_THALT	0x80000000
+#define RSTAT_CLEAR_RHALT	0x00800000
+
+
+#define IEVENT_INIT_CLEAR	0xffffffff
+#define IEVENT_BABR		0x80000000
+#define IEVENT_RXC		0x40000000
+#define IEVENT_BSY		0x20000000
+#define IEVENT_EBERR		0x10000000
+#define IEVENT_MSRO		0x04000000
+#define IEVENT_GTSC		0x02000000
+#define IEVENT_BABT		0x01000000
+#define IEVENT_TXC		0x00800000
+#define IEVENT_TXE		0x00400000
+#define IEVENT_TXB		0x00200000
+#define IEVENT_TXF		0x00100000
+#define IEVENT_IE		0x00080000
+#define IEVENT_LC		0x00040000
+#define IEVENT_CRL		0x00020000
+#define IEVENT_XFUN		0x00010000
+#define IEVENT_RXB0		0x00008000
+#define IEVENT_GRSC		0x00000100
+#define IEVENT_RXF0		0x00000080
+
+#define IMASK_INIT_CLEAR	0x00000000
+#define IMASK_TXEEN		0x00400000
+#define IMASK_TXBEN		0x00200000
+#define IMASK_TXFEN		0x00100000
+#define IMASK_RXFEN0		0x00000080
+
+
+/* Default Attribute fields */
+#define ATTR_INIT_SETTINGS     0x000000c0
+#define ATTRELI_INIT_SETTINGS  0x00000000
+
+
+/* TxBD status field bits */
+#define TXBD_READY		0x8000
+#define TXBD_PADCRC		0x4000
+#define TXBD_WRAP		0x2000
+#define TXBD_INTERRUPT		0x1000
+#define TXBD_LAST		0x0800
+#define TXBD_CRC		0x0400
+#define TXBD_DEF		0x0200
+#define TXBD_HUGEFRAME		0x0080
+#define TXBD_LATECOLLISION	0x0080
+#define TXBD_RETRYLIMIT 	0x0040
+#define TXBD_RETRYCOUNTMASK	0x003c
+#define TXBD_UNDERRUN		0x0002
+#define TXBD_STATS		0x03ff
+
+/* RxBD status field bits */
+#define RXBD_EMPTY		0x8000
+#define RXBD_RO1		0x4000
+#define RXBD_WRAP		0x2000
+#define RXBD_INTERRUPT		0x1000
+#define RXBD_LAST		0x0800
+#define RXBD_FIRST		0x0400
+#define RXBD_MISS		0x0100
+#define RXBD_BROADCAST		0x0080
+#define RXBD_MULTICAST		0x0040
+#define RXBD_LARGE		0x0020
+#define RXBD_NONOCTET		0x0010
+#define RXBD_SHORT		0x0008
+#define RXBD_CRCERR		0x0004
+#define RXBD_OVERRUN		0x0002
+#define RXBD_TRUNCATED		0x0001
+#define RXBD_STATS		0x003f
+
+typedef struct txbd8
+{
+	ushort	     status;	     /* Status Fields */
+	ushort	     length;	     /* Buffer length */
+	uint	     bufPtr;	     /* Buffer Pointer */
+} txbd8_t;
+
+typedef struct rxbd8
+{
+	ushort	     status;	     /* Status Fields */
+	ushort	     length;	     /* Buffer Length */
+	uint	     bufPtr;	     /* Buffer Pointer */
+} rxbd8_t;
+
+typedef struct rmon_mib
+{
+	/* Transmit and Receive Counters */
+	uint	tr64;		/* Transmit and Receive 64-byte Frame Counter */
+	uint	tr127;		/* Transmit and Receive 65-127 byte Frame Counter */
+	uint	tr255;		/* Transmit and Receive 128-255 byte Frame Counter */
+	uint	tr511;		/* Transmit and Receive 256-511 byte Frame Counter */
+	uint	tr1k;		/* Transmit and Receive 512-1023 byte Frame Counter */
+	uint	trmax;		/* Transmit and Receive 1024-1518 byte Frame Counter */
+	uint	trmgv;		/* Transmit and Receive 1519-1522 byte Good VLAN Frame */
+	/* Receive Counters */
+	uint	rbyt;		/* Receive Byte Counter */
+	uint	rpkt;		/* Receive Packet Counter */
+	uint	rfcs;		/* Receive FCS Error Counter */
+	uint	rmca;		/* Receive Multicast Packet (Counter) */
+	uint	rbca;		/* Receive Broadcast Packet */
+	uint	rxcf;		/* Receive Control Frame Packet */
+	uint	rxpf;		/* Receive Pause Frame Packet */
+	uint	rxuo;		/* Receive Unknown OP Code */
+	uint	raln;		/* Receive Alignment Error */
+	uint	rflr;		/* Receive Frame Length Error */
+	uint	rcde;		/* Receive Code Error */
+	uint	rcse;		/* Receive Carrier Sense Error */
+	uint	rund;		/* Receive Undersize Packet */
+	uint	rovr;		/* Receive Oversize Packet */
+	uint	rfrg;		/* Receive Fragments */
+	uint	rjbr;		/* Receive Jabber */
+	uint	rdrp;		/* Receive Drop */
+	/* Transmit Counters */
+	uint	tbyt;		/* Transmit Byte Counter */
+	uint	tpkt;		/* Transmit Packet */
+	uint	tmca;		/* Transmit Multicast Packet */
+	uint	tbca;		/* Transmit Broadcast Packet */
+	uint	txpf;		/* Transmit Pause Control Frame */
+	uint	tdfr;		/* Transmit Deferral Packet */
+	uint	tedf;		/* Transmit Excessive Deferral Packet */
+	uint	tscl;		/* Transmit Single Collision Packet */
+	/* (0x2_n700) */
+	uint	tmcl;		/* Transmit Multiple Collision Packet */
+	uint	tlcl;		/* Transmit Late Collision Packet */
+	uint	txcl;		/* Transmit Excessive Collision Packet */
+	uint	tncl;		/* Transmit Total Collision */
+
+	uint	res2;
+
+	uint	tdrp;		/* Transmit Drop Frame */
+	uint	tjbr;		/* Transmit Jabber Frame */
+	uint	tfcs;		/* Transmit FCS Error */
+	uint	txcf;		/* Transmit Control Frame */
+	uint	tovr;		/* Transmit Oversize Frame */
+	uint	tund;		/* Transmit Undersize Frame */
+	uint	tfrg;		/* Transmit Fragments Frame */
+	/* General Registers */
+	uint	car1;		/* Carry Register One */
+	uint	car2;		/* Carry Register Two */
+	uint	cam1;		/* Carry Register One Mask */
+	uint	cam2;		/* Carry Register Two Mask */
+} rmon_mib_t;
+
+typedef struct tsec_hash_regs
+{
+	uint	iaddr0;		/* Individual Address Register 0 */
+	uint	iaddr1;		/* Individual Address Register 1 */
+	uint	iaddr2;		/* Individual Address Register 2 */
+	uint	iaddr3;		/* Individual Address Register 3 */
+	uint	iaddr4;		/* Individual Address Register 4 */
+	uint	iaddr5;		/* Individual Address Register 5 */
+	uint	iaddr6;		/* Individual Address Register 6 */
+	uint	iaddr7;		/* Individual Address Register 7 */
+	uint	res1[24];
+	uint	gaddr0;		/* Group Address Register 0 */
+	uint	gaddr1;		/* Group Address Register 1 */
+	uint	gaddr2;		/* Group Address Register 2 */
+	uint	gaddr3;		/* Group Address Register 3 */
+	uint	gaddr4;		/* Group Address Register 4 */
+	uint	gaddr5;		/* Group Address Register 5 */
+	uint	gaddr6;		/* Group Address Register 6 */
+	uint	gaddr7;		/* Group Address Register 7 */
+	uint	res2[24];
+} tsec_hash_t;
+
+typedef struct tsec_mdio {
+	uint	res1[4];
+	uint	ieventm;
+	uint	imaskm;
+	uint	res2;
+	uint	emapm;
+	uint	res3[320];
+	uint	miimcfg;	/* MII Management: Configuration */
+	uint	miimcom;	/* MII Management: Command */
+	uint	miimadd;	/* MII Management: Address */
+	uint	miimcon;	/* MII Management: Control */
+	uint	miimstat;	/* MII Management: Status */
+	uint	miimind;	/* MII Management: Indicators */
+	uint	res4[690];
+} tsec_mdio_t;
+
+typedef struct tsec
+{
+	/* General Control and Status Registers (0x2_n000) */
+	uint	res000[4];
+
+	uint	ievent;		/* Interrupt Event */
+	uint	imask;		/* Interrupt Mask */
+	uint	edis;		/* Error Disabled */
+	uint	res01c;
+	uint	ecntrl;		/* Ethernet Control */
+	uint	minflr;		/* Minimum Frame Length */
+	uint	ptv;		/* Pause Time Value */
+	uint	dmactrl;	/* DMA Control */
+	uint	tbipa;		/* TBI PHY Address */
+
+	uint	res034[3];
+	uint	res040[48];
+
+	/* Transmit Control and Status Registers (0x2_n100) */
+	uint	tctrl;		/* Transmit Control */
+	uint	tstat;		/* Transmit Status */
+	uint	res108;
+	uint	tbdlen;		/* Tx BD Data Length */
+	uint	res110[5];
+	uint	ctbptr;		/* Current TxBD Pointer */
+	uint	res128[23];
+	uint	tbptr;		/* TxBD Pointer */
+	uint	res188[30];
+	/* (0x2_n200) */
+	uint	res200;
+	uint	tbase;		/* TxBD Base Address */
+	uint	res208[42];
+	uint	ostbd;		/* Out of Sequence TxBD */
+	uint	ostbdp;		/* Out of Sequence Tx Data Buffer Pointer */
+	uint	res2b8[18];
+
+	/* Receive Control and Status Registers (0x2_n300) */
+	uint	rctrl;		/* Receive Control */
+	uint	rstat;		/* Receive Status */
+	uint	res308;
+	uint	rbdlen;		/* RxBD Data Length */
+	uint	res310[4];
+	uint	res320;
+	uint	crbptr;	/* Current Receive Buffer Pointer */
+	uint	res328[6];
+	uint	mrblr;	/* Maximum Receive Buffer Length */
+	uint	res344[16];
+	uint	rbptr;	/* RxBD Pointer */
+	uint	res388[30];
+	/* (0x2_n400) */
+	uint	res400;
+	uint	rbase;	/* RxBD Base Address */
+	uint	res408[62];
+
+	/* MAC Registers (0x2_n500) */
+	uint	maccfg1;	/* MAC Configuration #1 */
+	uint	maccfg2;	/* MAC Configuration #2 */
+	uint	ipgifg;		/* Inter Packet Gap/Inter Frame Gap */
+	uint	hafdup;		/* Half-duplex */
+	uint	maxfrm;		/* Maximum Frame */
+	uint	res514;
+	uint	res518;
+
+	uint	res51c;
+
+	uint	resmdio[6];
+
+	uint	res538;
+
+	uint	ifstat;		/* Interface Status */
+	uint	macstnaddr1;	/* Station Address, part 1 */
+	uint	macstnaddr2;	/* Station Address, part 2 */
+	uint	res548[46];
+
+	/* (0x2_n600) */
+	uint	res600[32];
+
+	/* RMON MIB Registers (0x2_n680-0x2_n73c) */
+	rmon_mib_t	rmon;
+	uint	res740[48];
+
+	/* Hash Function Registers (0x2_n800) */
+	tsec_hash_t	hash;
+
+	uint	res900[128];
+
+	/* Pattern Registers (0x2_nb00) */
+	uint	resb00[62];
+	uint	attr;	   /* Default Attribute Register */
+	uint	attreli;	   /* Default Attribute Extract Length and Index */
+
+	/* TSEC Future Expansion Space (0x2_nc00-0x2_nffc) */
+	uint	resc00[256];
+} tsec_t;
+
+#define TSEC_GIGABIT (1)
+
+/* This flag currently only has
+ * meaning if we're using the eTSEC */
+#define TSEC_REDUCED	(1 << 1)	/* MAC-PHY interface uses RGMII */
+#define TSEC_SGMII	(1 << 2)	/* MAC-PHY interface uses SGMII */
+#define TSEC_FIBER	(1 << 3)	/* PHY uses fiber, eg 1000 Base-X */
+
+struct tsec_private {
+	volatile tsec_t *regs;
+	volatile tsec_mdio_t *phyregs;
+	volatile tsec_mdio_t *phyregs_sgmii;
+	struct phy_info *phyinfo;
+	struct mii_device miidev;
+	uint phyaddr;
+	u32 flags;
+	uint link;
+	uint duplexity;
+	uint speed;
+};
+
+
+/*
+ * struct phy_cmd:  A command for reading or writing a PHY register
+ *
+ * mii_reg:  The register to read or write
+ *
+ * mii_data:  For writes, the value to put in the register.
+ *	A value of -1 indicates this is a read.
+ *
+ * funct: A function pointer which is invoked for each command.
+ *	For reads, this function will be passed the value read
+ *	from the PHY, and process it.
+ *	For writes, the result of this function will be written
+ *	to the PHY register
+ */
+struct phy_cmd {
+	uint mii_reg;
+	uint mii_data;
+	uint (*funct) (uint mii_reg, struct tsec_private * priv);
+};
+
+/* struct phy_info: a structure which defines attributes for a PHY
+ *
+ * id will contain a number which represents the PHY.  During
+ * startup, the driver will poll the PHY to find out what its
+ * UID--as defined by registers 2 and 3--is.  The 32-bit result
+ * gotten from the PHY will be shifted right by "shift" bits to
+ * discard any bits which may change based on revision numbers
+ * unimportant to functionality
+ *
+ * The struct phy_cmd entries represent pointers to an arrays of
+ * commands which tell the driver what to do to the PHY.
+ */
+struct phy_info {
+	uint id;
+	char *name;
+	uint shift;
+	/* Called to configure the PHY, and modify the controller
+	 * based on the results */
+	struct phy_cmd *config;
+
+	/* Called when starting up the controller */
+	struct phy_cmd *startup;
+
+	/* Called when bringing down the controller */
+	struct phy_cmd *shutdown;
+};
+
+struct tsec_info_struct {
+	tsec_t *regs;
+	tsec_mdio_t *miiregs;
+	tsec_mdio_t *miiregs_sgmii;
+	char *devname;
+	unsigned int phyaddr;
+	u32 flags;
+};
+
+int tsec_standard_init(bd_t *bis);
+
+#endif /* __TSEC_H */
diff --git a/arch/ppc/mach-mpc8xxx/include/mach/uart.h b/arch/ppc/mach-mpc8xxx/include/mach/uart.h
new file mode 100644
index 0000000..90e8a18
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/include/mach/uart.h
@@ -0,0 +1,38 @@
+/**
+ * @file
+ * @brief These Apis are MPC8xxx independent support functions
+ *
+ * FileName: arch/ppc/mach-mpc85xx/include/mach/uart.h
+ *
+ * Implemented by arch/ppc/mach-mpc85xx/uart.c
+ *
+ */
+/*
+ * (C) Copyright 2004-2008
+ * Texas Instruments, <www.ti.com>
+ * Richard Woodruff <r-woodruff2@ti.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#ifndef __ASM_ARCH_PPC_UART_H_
+#define __ASM_ARCH_PPC_UART_H_
+#include <asm/io.h>
+
+/** All architectures need to implement these */
+void mpc85xx_uart_write(unsigned int val, unsigned long base,
+		     unsigned char reg_idx);
+unsigned int mpc85xx_uart_read(unsigned long base, unsigned char reg_idx);
+#endif /* __ASM_ARCH_PPC_UART_H_ */
diff --git a/arch/ppc/mach-mpc8xxx/io.S b/arch/ppc/mach-mpc8xxx/io.S
new file mode 100644
index 0000000..7190ae9
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/io.S
@@ -0,0 +1,128 @@
+/*
+ *  Copyright (C) 1998	Dan Malek <dmalek@jlc.net>
+ *  Copyright (C) 1999	Magnus Damm <kieraypc01.p.y.kie.era.ericsson.se>
+ *  Copyright (C) 2001	Sysgo Real-Time Solutions, GmbH <www.elinos.com>
+ *			Andreas Heppel <aheppel@sysgo.de>
+ *  Copyright (C) 2003	Wolfgang Denk <wd@denx.de>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <asm/ppc_asm.tmpl>
+
+/* ------------------------------------------------------------------------------- */
+/*  Function:     in8 */
+/*  Description:  Input 8 bits */
+/* ------------------------------------------------------------------------------- */
+	.globl  in8
+in8:
+	lbz     r3,0(r3)
+	sync
+	blr
+
+/* ------------------------------------------------------------------------------- */
+/*  Function:     in16 */
+/*  Description:  Input 16 bits */
+/* ------------------------------------------------------------------------------- */
+	.globl  in16
+in16:
+	lhz     r3,0(r3)
+	sync
+	blr
+
+/* ------------------------------------------------------------------------------- */
+/*  Function:     in16r */
+/*  Description:  Input 16 bits and byte reverse */
+/* ------------------------------------------------------------------------------- */
+	.globl  in16r
+in16r:
+	lhbrx   r3,0,r3
+	sync
+	blr
+
+/* ------------------------------------------------------------------------------- */
+/*  Function:     in32 */
+/*  Description:  Input 32 bits */
+/* ------------------------------------------------------------------------------- */
+	.globl  in32
+in32:
+	lwz     3,0(3)
+	sync
+	blr
+
+/* ------------------------------------------------------------------------------- */
+/*  Function:     in32r */
+/*  Description:  Input 32 bits and byte reverse */
+/* ------------------------------------------------------------------------------- */
+    .globl  in32r
+in32r:
+	lwbrx   r3,0,r3
+	sync
+	blr
+
+/* ------------------------------------------------------------------------------- */
+/*  Function:     out8 */
+/*  Description:  Output 8 bits */
+/* ------------------------------------------------------------------------------- */
+	.globl  out8
+out8:
+	stb     r4,0(r3)
+	sync
+	blr
+
+/* ------------------------------------------------------------------------------- */
+/*  Function:     out16 */
+/*  Description:  Output 16 bits */
+/* ------------------------------------------------------------------------------- */
+	.globl  out16
+out16:
+	sth     r4,0(r3)
+	sync
+	blr
+
+/* ------------------------------------------------------------------------------- */
+/*  Function:     out16r */
+/*  Description:  Byte reverse and output 16 bits */
+/* ------------------------------------------------------------------------------- */
+	.globl  out16r
+out16r:
+	sthbrx  r4,0,r3
+	sync
+	blr
+
+/* ------------------------------------------------------------------------------- */
+/*  Function:     out32 */
+/*  Description:  Output 32 bits */
+/* ------------------------------------------------------------------------------- */
+	.globl  out32
+out32:
+	stw     r4,0(r3)
+	sync
+	blr
+
+/* ------------------------------------------------------------------------------- */
+/*  Function:     out32r */
+/*  Description:  Byte reverse and output 32 bits */
+/* ------------------------------------------------------------------------------- */
+	.globl  out32r
+out32r:
+	stwbrx  r4,0,r3
+	sync
+	blr
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/Makefile b/arch/ppc/mach-mpc8xxx/mpc85xx/Makefile
new file mode 100644
index 0000000..3aa48e3
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/Makefile
@@ -0,0 +1,14 @@
+obj-y 				+= cpu.o
+obj-y				+= cpu_init.o
+obj-y				+= cpu_init_early.o
+obj-y				+= tlb.o
+obj-y				+= speed.o
+obj-y				+= traps.o
+extra-y				+= start.o
+extra-y				+= resetvec.o
+obj-$(CONFIG_OF_FLAT_TREE)	+= fdt.o
+obj-$(CONFIG_USE_IRQ)	+= interrupts.o
+obj-$(CONFIG_MPC8544)	+= mpc8544_serdes.o
+obj-$(CONFIG_P2020)		+= p2020_serdes.o
+obj-$(CONFIG_MP)		+= mp.o
+obj-$(CONFIG_MP)		+= release.o
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/cpu.c b/arch/ppc/mach-mpc8xxx/mpc85xx/cpu.c
new file mode 100644
index 0000000..18a0b6a
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/cpu.c
@@ -0,0 +1,347 @@
+/*
+ * Copyright 2004,2007-2011 Freescale Semiconductor, Inc.
+ * (C) Copyright 2002, 2003 Motorola Inc.
+ * Xianghua Xiao (X.Xiao@motorola.com)
+ *
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <common.h>
+#include <command.h>
+#include <asm/processor.h>
+#include <asm/config_mpc85xx.h>
+#include <asm/e500.h>
+#include <asm/common.h>
+#include <asm/config.h>
+#include <asm/global_data.h>
+#include <asm/cache.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <asm/fsl_law.h>
+#include <asm/fsl_lbc.h>
+#include <asm/fsl_ddr_sdram.h>
+#include <mach/immap_85xx.h>
+
+
+/*DECLARE_GLOBAL_DATA_PTR; */
+
+
+int checkcpu (void)
+{
+	sys_info_t sysinfo;
+	uint pvr, svr;
+	uint fam;
+	uint ver;
+	uint major, minor;
+	struct cpu_type *cpu;
+	char buf1[32], buf2[32];
+#if defined(CONFIG_DDR_CLK_FREQ) || defined(CONFIG_FSL_CORENET)
+	volatile ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+#endif /* CONFIG_FSL_CORENET */
+#ifdef CONFIG_DDR_CLK_FREQ
+	u32 ddr_ratio = ((gur->porpllsr) & MPC85xx_PORPLLSR_DDR_RATIO)
+		>> MPC85xx_PORPLLSR_DDR_RATIO_SHIFT;
+#else
+#ifdef CONFIG_FSL_CORENET
+	u32 ddr_sync = ((gur->rcwsr[5]) & FSL_CORENET_RCWSR5_DDR_SYNC)
+		>> FSL_CORENET_RCWSR5_DDR_SYNC_SHIFT;
+#else
+	u32 ddr_ratio = 0;
+#endif /* CONFIG_FSL_CORENET */
+#endif /* CONFIG_DDR_CLK_FREQ */
+	int i;
+
+	svr = get_svr();
+	major = SVR_MAJ(svr);
+	minor = SVR_MIN(svr);
+
+	if (cpu_numcores() > 1) {
+#ifndef CONFIG_MP
+		puts("Unicore software on multiprocessor system!!\n"
+		     "To enable mutlticore build define CONFIG_MP\n");
+#endif
+		volatile ccsr_pic_t *pic = (void *)(CONFIG_SYS_MPC8xxx_PIC_ADDR);
+		printf("CPU%d:  ", pic->whoami);
+	} else {
+		puts("CPU:   ");
+	}
+
+
+	ver = SVR_SOC_VER(svr);
+    cpu = identify_cpu(ver);
+
+	puts(cpu->name);
+	if (IS_E_PROCESSOR(svr))
+		puts("E");
+
+	printf(", Version: %d.%d, (0x%08x)\n", major, minor, svr);
+
+	pvr = get_pvr();
+	fam = PVR_FAM(pvr);
+	ver = PVR_VER(pvr);
+	major = PVR_MAJ(pvr);
+	minor = PVR_MIN(pvr);
+
+	printf("Core:  ");
+	if (PVR_FAM(PVR_85xx)) {
+		switch(PVR_MEM(pvr)) {
+		case 0x1:
+		case 0x2:
+			puts("E500");
+			break;
+		case 0x3:
+			puts("E500MC");
+			break;
+		case 0x4:
+			puts("E5500");
+			break;
+		default:
+			puts("Unknown");
+			break;
+		}
+	} else {
+		puts("Unknown");
+	}
+
+	printf(", Version: %d.%d, (0x%08x)\n", major, minor, pvr);
+
+
+	get_sys_info(&sysinfo);
+
+	puts("Clock Configuration:");
+	for (i = 0; i < cpu_numcores(); i++) {
+		if (!(i & 3))
+			printf ("\n       ");
+		printf("CPU%d:%-4s MHz, ",
+				i,strmhz(buf1, sysinfo.freqProcessor[i]));
+	}
+	printf("\n       CCB:%-4s MHz,\n", strmhz(buf1, sysinfo.freqSystemBus));
+
+
+#ifdef CONFIG_FSL_CORENET
+	if (ddr_sync == 1) {
+		printf("       DDR:%-4s MHz (%s MT/s data rate) "
+			"(Synchronous), ",
+			strmhz(buf1, sysinfo.freqDDRBus/2),
+			strmhz(buf2, sysinfo.freqDDRBus));
+	} else {
+		printf("       DDR:%-4s MHz (%s MT/s data rate) "
+			"(Asynchronous), ",
+			strmhz(buf1, sysinfo.freqDDRBus/2),
+			strmhz(buf2, sysinfo.freqDDRBus));
+	}
+#else
+
+	switch (ddr_ratio) {
+	case 0x0:
+		printf("       DDR:%-4s MHz (%s MT/s data rate), ",
+			strmhz(buf1, sysinfo.freqDDRBus/2),
+			strmhz(buf2, sysinfo.freqDDRBus));
+		break;
+	case 0x7:
+		printf("       DDR:%-4s MHz (%s MT/s data rate) "
+			"(Synchronous), ",
+			strmhz(buf1, sysinfo.freqDDRBus/2),
+			strmhz(buf2, sysinfo.freqDDRBus));
+		break;
+	default:
+		printf("       DDR:%-4s MHz (%s MT/s data rate) "
+			"(Asynchronous), ",
+			strmhz(buf1, sysinfo.freqDDRBus/2),
+			strmhz(buf2, sysinfo.freqDDRBus));
+		break;
+	}
+#endif
+
+#if defined(CONFIG_FSL_LBC)
+	if (sysinfo.freqLocalBus > LCRR_CLKDIV) {
+		printf("LBC:%-4s MHz\n", strmhz(buf1, sysinfo.freqLocalBus));
+	} else {
+		printf("LBC: unknown (LCRR[CLKDIV] = 0x%02lx)\n",
+		       sysinfo.freqLocalBus);
+	}
+#endif
+
+	puts("L1:    D-cache 32 kB enabled\n       I-cache 32 kB enabled\n");
+
+	return 0;
+}
+
+int cpu_init_board_data(bd_t *bd)
+{
+	sys_info_t sysinfo;
+
+	get_sys_info(&sysinfo);
+	bd->bi_intfreq = sysinfo.freqProcessor[0];	/* This is only CPU 0. */
+#if 0
+	bd->bi_pcifreq = get_pci_clock();
+#endif
+	bd->bi_busfreq = sysinfo.freqSystemBus;;	/* Bus Freq,      in Hz */
+
+	bd->bi_memsize = get_effective_memsize();
+	return 0;
+}
+
+/* ------------------------------------------------------------------------- */
+
+void __noreturn reset_cpu(unsigned long addr)
+{
+/* Everything after the first generation of PQ3 parts has RSTCR */
+#if defined(CONFIG_MPC8540) || defined(CONFIG_MPC8541) || \
+    defined(CONFIG_MPC8555) || defined(CONFIG_MPC8560)
+	unsigned long val, msr;
+
+	/*
+	 * Initiate hard reset in debug control register DBCR0
+	 * Make sure MSR[DE] = 1.  This only resets the core.
+	 */
+	msr = mfmsr ();
+	msr |= MSR_DE;
+	mtmsr (msr);
+
+	val = mfspr(DBCR0);
+	val |= 0x70000000;
+	mtspr(DBCR0,val);
+#else
+	volatile ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+	out_be32(&gur->rstcr, 0x2);	/* HRESET_REQ */
+	udelay(100);
+#endif
+
+	while(1);
+}
+
+/*
+ * Get timebase clock frequency
+ */
+unsigned long get_timebase_clock (void)
+{
+	sys_info_t sys_info;
+
+	get_sys_info (&sys_info);
+
+#ifdef CONFIG_FSL_CORENET
+	return (sys_info.freqSystemBus + 8) / 16;
+#else
+	return (sys_info.freqSystemBus + 4UL)/8UL;
+#endif
+}
+
+
+#if defined(CONFIG_WATCHDOG)
+void
+reset_85xx_watchdog(void)
+{
+	/*
+	 * Clear TSR(WIS) bit by writing 1
+	 */
+	unsigned long val;
+	val = mfspr(SPRN_TSR);
+	val |= TSR_WIS;
+    val |= TSR_ENW;
+	mtspr(SPRN_TSR, val);
+}
+
+void
+watchdog_reset(void)
+{
+	int re_enable = disable_interrupts();
+	reset_85xx_watchdog();
+	if (re_enable) enable_interrupts();
+}
+
+#endif	/* CONFIG_WATCHDOG */
+
+/*
+ * Initializes on-chip MMC controllers.
+ * to override, implement board_mmc_init()
+ */
+int cpu_mmc_init(bd_t *bis)
+{
+#ifdef CONFIG_FSL_ESDHC
+	return fsl_esdhc_mmc_init(bis);
+#else
+	return 0;
+#endif
+}
+
+/*
+ * Print out the state of various machine registers.
+ * Currently prints out LAWs, BR0/OR0, and TLBs
+ */
+void mpc85xx_reginfo(void)
+{
+	/* RENAUD print_tlbcam(); */
+	print_laws();
+#if defined(CONFIG_FSL_LBC)
+	print_lbc_regs();
+#endif
+
+}
+
+/* Common ddr init for non-corenet fsl 85xx platforms */
+#ifndef CONFIG_FSL_CORENET
+long int initdram(int board_type)
+{
+	phys_size_t dram_size = 0;
+
+#if defined(CONFIG_SYS_FSL_ERRATUM_DDR_MSYNC_IN)
+	{
+		ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+		unsigned int x = 10;
+		unsigned int i;
+
+		/*
+		 * Work around to stabilize DDR DLL
+		 */
+		out_be32(&gur->ddrdllcr, 0x81000000);
+		asm("sync;isync;msync");
+		udelay(200);
+		while (in_be32(&gur->ddrdllcr) != 0x81000100) {
+			setbits_be32(&gur->devdisr, 0x00010000);
+			for (i = 0; i < x; i++)
+				;
+			clrbits_be32(&gur->devdisr, 0x00010000);
+			x++;
+		}
+	}
+#endif
+
+#if defined(CONFIG_SPD_EEPROM) || defined(CONFIG_DDR_SPD)
+	dram_size = fsl_ddr_sdram(); /* Maybe some day */
+#else
+	dram_size = fixed_sdram();
+#endif
+	dram_size = setup_ddr_tlbs(dram_size / 0x100000);
+	dram_size *= 0x100000;
+
+#if defined(CONFIG_DDR_ECC) && !defined(CONFIG_ECC_INIT_VIA_DDRCONTROLLER)
+	/*
+	 * Initialize and enable DDR ECC.
+	 */
+	ddr_enable_ecc(dram_size);
+#endif
+
+	return dram_size;
+}
+#endif
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init.c b/arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init.c
new file mode 100644
index 0000000..57dee7a
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init.c
@@ -0,0 +1,263 @@
+/*
+ * Copyright 2007-2011 Freescale Semiconductor, Inc.
+ *
+ * (C) Copyright 2003 Motorola Inc.
+ * Modified by Xianghua Xiao, X.Xiao@motorola.com
+ *
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/processor.h>
+#include <asm/global_data.h>
+#include <ioports.h>
+#include <asm/io.h>
+#include <asm/cache.h>
+#include <asm/mmu.h>
+#include <asm/fsl_law.h>
+#include <asm/fsl_serdes.h>
+#include <mach/immap_85xx.h>
+
+#include "mp.h"
+
+extern void early_init (void);
+
+void cpu_init_f (void)
+{
+	disable_tlb(14);
+	disable_tlb(15);
+
+	init_early_memctl_regs();
+
+#if defined(CONFIG_FSL_DMA)
+	dma_init();
+#endif
+	init_used_tlb_cams();
+
+#ifdef CONFIG_HAS_EARLY_INIT
+	early_init();
+#endif
+}
+
+/* Implement a dummy function for those platforms w/o SERDES */
+static void __fsl_serdes__init(void)
+{
+	return ;
+}
+__attribute__((weak, alias("__fsl_serdes__init"))) void fsl_serdes_init(void);
+
+/*
+ * Initialize L2 as cache.
+ *
+ * The newer 8548, etc, parts have twice as much cache, but
+ * use the same bit-encoding as the older 8555, etc, parts.
+ *
+ */
+int cpu_init_r(void)
+{
+#ifdef CONFIG_SYS_LBC_LCRR
+	volatile fsl_lbc_t *lbc = LBC_BASE_ADDR;
+#endif
+
+#if defined(CONFIG_L2_CACHE)
+	volatile ccsr_l2cache_t *l2cache = (void *)CONFIG_SYS_MPC85xx_L2_ADDR;
+	volatile uint cache_ctl;
+	uint svr, ver;
+	uint l2srbar;
+	u32 l2siz_field;
+#endif
+
+	/*puts ("L2:    "); */
+
+#if defined(CONFIG_L2_CACHE)
+	svr = get_svr();
+	ver = SVR_SOC_VER(svr);
+
+	asm("msync;isync");
+	cache_ctl = l2cache->l2ctl;
+
+#if defined(CONFIG_SYS_RAMBOOT) && defined(CONFIG_SYS_INIT_L2_ADDR)
+	if (cache_ctl & MPC85xx_L2CTL_L2E) {
+		/* Clear L2 SRAM memory-mapped base address */
+		out_be32(&l2cache->l2srbar0, 0x0);
+		out_be32(&l2cache->l2srbar1, 0x0);
+
+		/* set MBECCDIS=0, SBECCDIS=0 */
+		clrbits_be32(&l2cache->l2errdis,
+				(MPC85xx_L2ERRDIS_MBECC |
+				 MPC85xx_L2ERRDIS_SBECC));
+
+		/* set L2E=0, L2SRAM=0 */
+		clrbits_be32(&l2cache->l2ctl,
+				(MPC85xx_L2CTL_L2E |
+				 MPC85xx_L2CTL_L2SRAM_ENTIRE));
+	}
+#endif
+
+	l2siz_field = (cache_ctl >> 28) & 0x3;
+
+	switch (l2siz_field) {
+	case 0x0:
+		/*printf(" unknown size (0x%08x)\n", cache_ctl); */
+		return -1;
+		break;
+	case 0x1:
+		if (ver == SVR_8540 || ver == SVR_8560   ||
+		    ver == SVR_8541 || ver == SVR_8541_E ||
+		    ver == SVR_8555 || ver == SVR_8555_E) {
+			/*puts("128 KB "); */
+			/* set L2E=1, L2I=1, & L2BLKSZ=1 (128 Kbyte) */
+			cache_ctl = 0xc4000000;
+		} else {
+			/*puts("256 KB "); */
+			cache_ctl = 0xc0000000; /* set L2E=1, L2I=1, & L2SRAM=0 */
+		}
+		break;
+	case 0x2:
+		if (ver == SVR_8540 || ver == SVR_8560   ||
+		    ver == SVR_8541 || ver == SVR_8541_E ||
+		    ver == SVR_8555 || ver == SVR_8555_E) {
+			/* puts("256 KB "); */
+			/* set L2E=1, L2I=1, & L2BLKSZ=2 (256 Kbyte) */
+			cache_ctl = 0xc8000000;
+		} else {
+			/* puts ("512 KB "); */
+			/* set L2E=1, L2I=1, & L2SRAM=0 */
+			cache_ctl = 0xc0000000;
+		}
+		break;
+	case 0x3:
+		/*puts("1024 KB ");*/
+		/* set L2E=1, L2I=1, & L2SRAM=0 */
+		cache_ctl = 0xc0000000;
+		break;
+	}
+
+	if (l2cache->l2ctl & MPC85xx_L2CTL_L2E) {
+		/*puts("already enabled");*/
+		l2srbar = l2cache->l2srbar0;
+#if defined(CONFIG_SYS_INIT_L2_ADDR) && defined(CONFIG_SYS_FLASH_BASE)
+		if (l2cache->l2ctl & MPC85xx_L2CTL_L2SRAM_ENTIRE
+				&& l2srbar >= CONFIG_SYS_FLASH_BASE) {
+			l2srbar = CONFIG_SYS_INIT_L2_ADDR;
+			l2cache->l2srbar0 = l2srbar;
+			/*printf("moving to 0x%08x", CONFIG_SYS_INIT_L2_ADDR); */
+		}
+#endif /* CONFIG_SYS_INIT_L2_ADDR */
+		/*puts("\n"); */
+	} else {
+		asm("msync;isync");
+		l2cache->l2ctl = cache_ctl; /* invalidate & enable */
+		asm("msync;isync");
+	/*	puts("enabled\n"); */
+	}
+#elif defined(CONFIG_BACKSIDE_L2_CACHE)
+	u32 l2cfg0 = mfspr(SPRN_L2CFG0);
+
+	/* invalidate the L2 cache */
+	mtspr(SPRN_L2CSR0, (L2CSR0_L2FI|L2CSR0_L2LFC));
+	while (mfspr(SPRN_L2CSR0) & (L2CSR0_L2FI|L2CSR0_L2LFC))
+		;
+
+#ifdef CONFIG_SYS_CACHE_STASHING
+	/* set stash id to (coreID) * 2 + 32 + L2 (1) */
+	mtspr(SPRN_L2CSR1, (32 + 1));
+#endif
+
+	/* enable the cache */
+	mtspr(SPRN_L2CSR0, CONFIG_SYS_INIT_L2CSR0);
+
+	if (CONFIG_SYS_INIT_L2CSR0 & L2CSR0_L2E) {
+		while (!(mfspr(SPRN_L2CSR0) & L2CSR0_L2E))
+			;
+		/*printf("%d KB enabled\n", (l2cfg0 & 0x3fff) * 64); */
+	}
+#else
+	/*puts("disabled\n"); */
+#endif
+
+
+#ifdef CONFIG_QE
+	uint qe_base = CONFIG_SYS_IMMR + 0x00080000; /* QE immr base */
+	qe_init(qe_base);
+	qe_reset();
+#endif
+
+	/* needs to be in ram since code uses global static vars */
+	fsl_serdes_init();
+
+#ifdef CONFIG_SYS_SRIO
+	    srio_init();
+#endif
+
+#if defined(CONFIG_MP)
+	    setup_mp();
+#endif
+
+#ifdef CONFIG_SYS_FSL_ERRATUM_ESDHC136
+	{
+		void *p;
+		p = (void *)CONFIG_SYS_DCSRBAR + 0x20520;
+		setbits_be32(p, 1 << (31 - 14));
+	}
+#endif
+
+#ifdef CONFIG_SYS_LBC_LCRR
+	/*
+	 * Modify the CLKDIV field of LCRR register to improve the writing
+	 * speed for NOR flash.
+	 */
+	clrsetbits_be32(&lbc->lcrr, LCRR_CLKDIV, CONFIG_SYS_LBC_LCRR);
+	__raw_readl(&lbc->lcrr);
+	isync();
+#endif
+
+	return 0;
+}
+
+extern void setup_ivors(void);
+
+void arch_preboot_os(void)
+{
+	u32 msr;
+
+	/*
+	 * We are changing interrupt offsets and are about to boot the OS so
+	 * we need to make sure we disable all async interrupts. EE is already
+	 * disabled by the time we get called.
+	 */
+	msr = mfmsr();
+	msr &= ~(MSR_ME|MSR_CE|MSR_DE);
+	mtmsr(msr);
+
+	setup_ivors();
+}
+
+#if defined(CONFIG_CMD_SATA) && defined(CONFIG_FSL_SATA)
+int sata_initialize(void)
+{
+	if (is_serdes_configured(SATA1) || is_serdes_configured(SATA2))
+		return __sata_initialize();
+
+	return 1;
+}
+#endif
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init_early.c b/arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init_early.c
new file mode 100644
index 0000000..4bae217
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/cpu_init_early.c
@@ -0,0 +1,80 @@
+/*
+ * Copyright 2009 Freescale Semiconductor, Inc
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/processor.h>
+#include <asm/global_data.h>
+#include <asm/mmu.h>
+#include <asm/fsl_law.h>
+
+DECLARE_GLOBAL_DATA_PTR;
+
+#if (CONFIG_SYS_CCSRBAR_DEFAULT != CONFIG_SYS_CCSRBAR_PHYS)
+static void setup_ccsrbar(void)
+{
+	u32 temp;
+	volatile u32 *ccsr_virt = (volatile u32 *)(CONFIG_SYS_CCSRBAR + 0x1000);
+
+	temp = in_be32(ccsr_virt);
+	out_be32(ccsr_virt, CONFIG_SYS_CCSRBAR_PHYS >> 12);
+	temp = in_be32((volatile u32 *)CONFIG_SYS_CCSRBAR);
+}
+#endif
+
+/* We run cpu_init_early_f in AS = 1 */
+void cpu_init_early_f(void)
+{
+	u32 mas0, mas1, mas2, mas3, mas7;
+	int i;
+
+	/* Pointer is writable since we allocated a register for it */
+	gd = (gd_t *) (CFG_INIT_RAM_ADDR + CONFIG_SYS_GBL_DATA_OFFSET);
+
+	/*
+	 * Clear initial global data
+	 *   we don't use memset so we can share this code with NAND_SPL
+	 */
+	for (i = 0; i < sizeof(gd_t); i++)
+		((char *)gd)[i] = 0;
+
+	mas0 = MAS0_TLBSEL(0) | MAS0_ESEL(0);
+	mas1 = MAS1_VALID | MAS1_TID(0) | MAS1_TS | MAS1_TSIZE(BOOKE_PAGESZ_4K);
+	mas2 = FSL_BOOKE_MAS2(CONFIG_SYS_CCSRBAR, MAS2_I|MAS2_G);
+	mas3 = FSL_BOOKE_MAS3(CONFIG_SYS_CCSRBAR_PHYS, 0, MAS3_SW|MAS3_SR);
+	mas7 = FSL_BOOKE_MAS7(CONFIG_SYS_CCSRBAR_PHYS);
+
+	write_tlb(mas0, mas1, mas2, mas3, mas7);
+
+	/* set up CCSR if we want it moved */
+#if (CONFIG_SYS_CCSRBAR_DEFAULT != CONFIG_SYS_CCSRBAR_PHYS)
+	mas0 = MAS0_TLBSEL(0) | MAS0_ESEL(1);
+	/* mas1 is the same as above */
+	mas2 = FSL_BOOKE_MAS2(CONFIG_SYS_CCSRBAR + 0x1000, MAS2_I|MAS2_G);
+	mas3 = FSL_BOOKE_MAS3(CONFIG_SYS_CCSRBAR_DEFAULT, 0, MAS3_SW|MAS3_SR);
+	mas7 = FSL_BOOKE_MAS7(CONFIG_SYS_CCSRBAR_DEFAULT);
+
+	write_tlb(mas0, mas1, mas2, mas3, mas7);
+
+	setup_ccsrbar();
+#endif
+
+	init_laws();
+	invalidate_tlb(0);
+	init_tlbs();
+}
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/fdt.c b/arch/ppc/mach-mpc8xxx/mpc85xx/fdt.c
new file mode 100644
index 0000000..6efa104
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/fdt.c
@@ -0,0 +1,490 @@
+/*
+ * Copyright 2007-2011 Freescale Semiconductor, Inc.
+ *
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <libfdt.h>
+#include <fdt_support.h>
+#include <asm/processor.h>
+#include <linux/ctype.h>
+#include <asm/global_data.h>
+#include <asm/io.h>
+#include <asm/fsl_portals.h>
+#ifdef CONFIG_FSL_ESDHC
+#include <fsl_esdhc.h>
+#endif
+
+extern void ft_qe_setup(void *blob);
+extern void ft_fixup_num_cores(void *blob);
+extern void ft_srio_setup(void *blob);
+
+#ifdef CONFIG_MP
+#include "mp.h"
+
+void ft_fixup_cpu(void *blob, u64 memory_limit)
+{
+	int off;
+	ulong spin_tbl_addr = get_spin_phys_addr();
+	u32 bootpg = determine_mp_bootpg();
+	u32 id = get_my_id();
+	const char *enable_method;
+
+	off = fdt_node_offset_by_prop_value(blob, -1, "device_type", "cpu", 4);
+	while (off > 0) {
+		u32 *reg = (u32 *)fdt_getprop(blob, off, "reg", 0);
+
+		if (reg) {
+			u64 val = *reg * SIZE_BOOT_ENTRY + spin_tbl_addr;
+			val = cpu_to_fdt32(val);
+			if (*reg == id) {
+				fdt_setprop_string(blob, off, "status",
+								"okay");
+			} else {
+				fdt_setprop_string(blob, off, "status",
+								"disabled");
+			}
+
+			if (hold_cores_in_reset(0)) {
+#ifdef CONFIG_FSL_CORENET
+				/* Cores held in reset, use BRR to release */
+				enable_method = "fsl,brr-holdoff";
+#else
+				/* Cores held in reset, use EEBPCR to release */
+				enable_method = "fsl,eebpcr-holdoff";
+#endif
+			} else {
+				/* Cores out of reset and in a spin-loop */
+				enable_method = "spin-table";
+
+				fdt_setprop(blob, off, "cpu-release-addr",
+						&val, sizeof(val));
+			}
+
+			fdt_setprop_string(blob, off, "enable-method",
+							enable_method);
+		} else {
+			printf ("cpu NULL\n");
+		}
+		off = fdt_node_offset_by_prop_value(blob, off,
+				"device_type", "cpu", 4);
+	}
+
+	/* Reserve the boot page so OSes dont use it */
+	if ((u64)bootpg < memory_limit) {
+		off = fdt_add_mem_rsv(blob, bootpg, (u64)4096);
+		if (off < 0)
+			printf("%s: %s\n", __FUNCTION__, fdt_strerror(off));
+	}
+}
+#endif
+
+#ifdef CONFIG_SYS_FSL_CPC
+static inline void ft_fixup_l3cache(void *blob, int off)
+{
+	u32 line_size, num_ways, size, num_sets;
+	cpc_corenet_t *cpc = (void *)CONFIG_SYS_FSL_CPC_ADDR;
+	u32 cfg0 = in_be32(&cpc->cpccfg0);
+
+	size = CPC_CFG0_SZ_K(cfg0) * 1024 * CONFIG_SYS_NUM_CPC;
+	num_ways = CPC_CFG0_NUM_WAYS(cfg0);
+	line_size = CPC_CFG0_LINE_SZ(cfg0);
+	num_sets = size / (line_size * num_ways);
+
+	fdt_setprop(blob, off, "cache-unified", NULL, 0);
+	fdt_setprop_cell(blob, off, "cache-block-size", line_size);
+	fdt_setprop_cell(blob, off, "cache-size", size);
+	fdt_setprop_cell(blob, off, "cache-sets", num_sets);
+	fdt_setprop_cell(blob, off, "cache-level", 3);
+#ifdef CONFIG_SYS_CACHE_STASHING
+	fdt_setprop_cell(blob, off, "cache-stash-id", 1);
+#endif
+}
+#else
+#define ft_fixup_l3cache(x, y)
+#endif
+
+#if defined(CONFIG_L2_CACHE)
+/* return size in kilobytes */
+static inline u32 l2cache_size(void)
+{
+	volatile ccsr_l2cache_t *l2cache = (void *)CONFIG_SYS_MPC85xx_L2_ADDR;
+	volatile u32 l2siz_field = (l2cache->l2ctl >> 28) & 0x3;
+	u32 ver = SVR_SOC_VER(get_svr());
+
+	switch (l2siz_field) {
+	case 0x0:
+		break;
+	case 0x1:
+		if (ver == SVR_8540 || ver == SVR_8560   ||
+		    ver == SVR_8541 || ver == SVR_8541_E ||
+		    ver == SVR_8555 || ver == SVR_8555_E)
+			return 128;
+		else
+			return 256;
+		break;
+	case 0x2:
+		if (ver == SVR_8540 || ver == SVR_8560   ||
+		    ver == SVR_8541 || ver == SVR_8541_E ||
+		    ver == SVR_8555 || ver == SVR_8555_E)
+			return 256;
+		else
+			return 512;
+		break;
+	case 0x3:
+		return 1024;
+		break;
+	}
+
+	return 0;
+}
+
+static inline void ft_fixup_l2cache(void *blob)
+{
+	int len, off;
+	u32 *ph;
+	struct cpu_type *cpu = identify_cpu(SVR_SOC_VER(get_svr()));
+	char compat_buf[38];
+
+	const u32 line_size = 32;
+	const u32 num_ways = 8;
+	const u32 size = l2cache_size() * 1024;
+	const u32 num_sets = size / (line_size * num_ways);
+
+	off = fdt_node_offset_by_prop_value(blob, -1, "device_type", "cpu", 4);
+	if (off < 0) {
+		debug("no cpu node fount\n");
+		return;
+	}
+
+	ph = (u32 *)fdt_getprop(blob, off, "next-level-cache", 0);
+
+	if (ph == NULL) {
+		debug("no next-level-cache property\n");
+		return ;
+	}
+
+	off = fdt_node_offset_by_phandle(blob, *ph);
+	if (off < 0) {
+		printf("%s: %s\n", __func__, fdt_strerror(off));
+		return ;
+	}
+
+	if (cpu) {
+		if (isdigit(cpu->name[0]))
+			len = sprintf(compat_buf,
+				"fsl,mpc%s-l2-cache-controller", cpu->name);
+		else
+			len = sprintf(compat_buf,
+				"fsl,%c%s-l2-cache-controller",
+				tolower(cpu->name[0]), cpu->name + 1);
+
+		sprintf(&compat_buf[len + 1], "cache");
+	}
+	fdt_setprop(blob, off, "cache-unified", NULL, 0);
+	fdt_setprop_cell(blob, off, "cache-block-size", line_size);
+	fdt_setprop_cell(blob, off, "cache-size", size);
+	fdt_setprop_cell(blob, off, "cache-sets", num_sets);
+	fdt_setprop_cell(blob, off, "cache-level", 2);
+	fdt_setprop(blob, off, "compatible", compat_buf, sizeof(compat_buf));
+
+	/* we dont bother w/L3 since no platform of this type has one */
+}
+#elif defined(CONFIG_BACKSIDE_L2_CACHE)
+static inline void ft_fixup_l2cache(void *blob)
+{
+	int off, l2_off, l3_off = -1;
+	u32 *ph;
+	u32 l2cfg0 = mfspr(SPRN_L2CFG0);
+	u32 size, line_size, num_ways, num_sets;
+
+	size = (l2cfg0 & 0x3fff) * 64 * 1024;
+	num_ways = ((l2cfg0 >> 14) & 0x1f) + 1;
+	line_size = (((l2cfg0 >> 23) & 0x3) + 1) * 32;
+	num_sets = size / (line_size * num_ways);
+
+	off = fdt_node_offset_by_prop_value(blob, -1, "device_type", "cpu", 4);
+
+	while (off > 0) {
+		ph = (u32 *)fdt_getprop(blob, off, "next-level-cache", 0);
+
+		if (ph == NULL) {
+			debug("no next-level-cache property\n");
+			goto next;
+		}
+
+		l2_off = fdt_node_offset_by_phandle(blob, *ph);
+		if (l2_off < 0) {
+			printf("%s: %s\n", __func__, fdt_strerror(off));
+			goto next;
+		}
+
+#ifdef CONFIG_SYS_CACHE_STASHING
+		{
+			u32 *reg = (u32 *)fdt_getprop(blob, off, "reg", 0);
+			if (reg)
+				fdt_setprop_cell(blob, l2_off, "cache-stash-id",
+					 (*reg * 2) + 32 + 1);
+		}
+#endif
+
+		fdt_setprop(blob, l2_off, "cache-unified", NULL, 0);
+		fdt_setprop_cell(blob, l2_off, "cache-block-size", line_size);
+		fdt_setprop_cell(blob, l2_off, "cache-size", size);
+		fdt_setprop_cell(blob, l2_off, "cache-sets", num_sets);
+		fdt_setprop_cell(blob, l2_off, "cache-level", 2);
+		fdt_setprop(blob, l2_off, "compatible", "cache", 6);
+
+		if (l3_off < 0) {
+			ph = (u32 *)fdt_getprop(blob, l2_off, "next-level-cache", 0);
+
+			if (ph == NULL) {
+				debug("no next-level-cache property\n");
+				goto next;
+			}
+			l3_off = *ph;
+		}
+next:
+		off = fdt_node_offset_by_prop_value(blob, off,
+				"device_type", "cpu", 4);
+	}
+	if (l3_off > 0) {
+		l3_off = fdt_node_offset_by_phandle(blob, l3_off);
+		if (l3_off < 0) {
+			printf("%s: %s\n", __func__, fdt_strerror(off));
+			return ;
+		}
+		ft_fixup_l3cache(blob, l3_off);
+	}
+}
+#else
+#define ft_fixup_l2cache(x)
+#endif
+
+static inline void ft_fixup_cache(void *blob)
+{
+	int off;
+
+	off = fdt_node_offset_by_prop_value(blob, -1, "device_type", "cpu", 4);
+
+	while (off > 0) {
+		u32 l1cfg0 = mfspr(SPRN_L1CFG0);
+		u32 l1cfg1 = mfspr(SPRN_L1CFG1);
+		u32 isize, iline_size, inum_sets, inum_ways;
+		u32 dsize, dline_size, dnum_sets, dnum_ways;
+
+		/* d-side config */
+		dsize = (l1cfg0 & 0x7ff) * 1024;
+		dnum_ways = ((l1cfg0 >> 11) & 0xff) + 1;
+		dline_size = (((l1cfg0 >> 23) & 0x3) + 1) * 32;
+		dnum_sets = dsize / (dline_size * dnum_ways);
+
+		fdt_setprop_cell(blob, off, "d-cache-block-size", dline_size);
+		fdt_setprop_cell(blob, off, "d-cache-size", dsize);
+		fdt_setprop_cell(blob, off, "d-cache-sets", dnum_sets);
+
+#ifdef CONFIG_SYS_CACHE_STASHING
+		{
+			u32 *reg = (u32 *)fdt_getprop(blob, off, "reg", 0);
+			if (reg)
+				fdt_setprop_cell(blob, off, "cache-stash-id",
+					 (*reg * 2) + 32 + 0);
+		}
+#endif
+
+		/* i-side config */
+		isize = (l1cfg1 & 0x7ff) * 1024;
+		inum_ways = ((l1cfg1 >> 11) & 0xff) + 1;
+		iline_size = (((l1cfg1 >> 23) & 0x3) + 1) * 32;
+		inum_sets = isize / (iline_size * inum_ways);
+
+		fdt_setprop_cell(blob, off, "i-cache-block-size", iline_size);
+		fdt_setprop_cell(blob, off, "i-cache-size", isize);
+		fdt_setprop_cell(blob, off, "i-cache-sets", inum_sets);
+
+		off = fdt_node_offset_by_prop_value(blob, off,
+				"device_type", "cpu", 4);
+	}
+
+	ft_fixup_l2cache(blob);
+}
+
+
+void fdt_add_enet_stashing(void *fdt)
+{
+	do_fixup_by_compat(fdt, "gianfar", "bd-stash", NULL, 0, 1);
+
+	do_fixup_by_compat_u32(fdt, "gianfar", "rx-stash-len", 96, 1);
+
+	do_fixup_by_compat_u32(fdt, "gianfar", "rx-stash-idx", 0, 1);
+}
+
+#if defined(CONFIG_SYS_DPAA_FMAN) || defined(CONFIG_SYS_DPAA_PME)
+static void ft_fixup_clks(void *blob, const char *compat, u32 offset,
+			  unsigned long freq)
+{
+	phys_addr_t phys = offset + CONFIG_SYS_CCSRBAR_PHYS;
+	int off = fdt_node_offset_by_compat_reg(blob, compat, phys);
+
+	if (off >= 0) {
+		off = fdt_setprop_cell(blob, off, "clock-frequency", freq);
+		if (off > 0)
+			printf("WARNING enable to set clock-frequency "
+				"for %s: %s\n", compat, fdt_strerror(off));
+	}
+}
+
+static void ft_fixup_dpaa_clks(void *blob)
+{
+	sys_info_t sysinfo;
+
+	get_sys_info(&sysinfo);
+	ft_fixup_clks(blob, "fsl,fman", CONFIG_SYS_FSL_FM1_OFFSET,
+			sysinfo.freqFMan[0]);
+
+#if (CONFIG_SYS_NUM_FMAN == 2)
+	ft_fixup_clks(blob, "fsl,fman", CONFIG_SYS_FSL_FM2_OFFSET,
+			sysinfo.freqFMan[1]);
+#endif
+
+#ifdef CONFIG_SYS_DPAA_PME
+	do_fixup_by_compat_u32(blob, "fsl,pme",
+		"clock-frequency", sysinfo.freqPME, 1);
+#endif
+}
+#else
+#define ft_fixup_dpaa_clks(x)
+#endif
+
+#ifdef CONFIG_QE
+static void ft_fixup_qe_snum(void *blob)
+{
+	unsigned int svr;
+
+	svr = mfspr(SPRN_SVR);
+	if (SVR_SOC_VER(svr) == SVR_8569_E) {
+		if(IS_SVR_REV(svr, 1, 0))
+			do_fixup_by_compat_u32(blob, "fsl,qe",
+				"fsl,qe-num-snums", 46, 1);
+		else
+			do_fixup_by_compat_u32(blob, "fsl,qe",
+				"fsl,qe-num-snums", 76, 1);
+	}
+}
+#endif
+
+void ft_cpu_setup(void *blob, bd_t *bd)
+{
+	int off;
+	int val;
+	u32 *p;
+	int len;
+	sys_info_t sysinfo;
+
+	/* delete crypto node if not on an E-processor */
+	if (!IS_E_PROCESSOR(get_svr()))
+		fdt_fixup_crypto_node(blob, 0);
+
+	fdt_fixup_ethernet(blob);
+
+	fdt_add_enet_stashing(blob);
+
+	get_sys_info(&sysinfo);
+
+	/* Use global data  */
+	do_fixup_by_prop_u32(blob, "device_type", "cpu", 4,
+		"timebase-frequency", get_timebase_clock(), 1);
+	do_fixup_by_prop_u32(blob, "device_type", "cpu", 4,
+		"bus-frequency", bd->bi_busfreq, 1);
+
+	off = fdt_node_offset_by_prop_value(blob, -1, "device_type", "cpu", 4);
+
+	while (off > 0) {
+		u32 *reg = (u32 *)fdt_getprop(blob, off, "reg", 0);
+		val = cpu_to_fdt32(sysinfo.freqProcessor[*reg]);
+		fdt_setprop(blob, off, "clock-frequency", &val, 4);
+		off = fdt_node_offset_by_prop_value(blob, off, "device_type", "cpu", 4);
+	}
+	do_fixup_by_prop_u32(blob, "device_type", "soc", 4,
+		"bus-frequency", bd->bi_busfreq, 1);
+
+	do_fixup_by_compat_u32(blob, "fsl,pq3-localbus",
+		"bus-frequency", sysinfo.freqLocalBus, 1);
+	do_fixup_by_compat_u32(blob, "fsl,elbc",
+		"bus-frequency", sysinfo.freqLocalBus, 1);
+#ifdef CONFIG_QE
+	ft_qe_setup(blob);
+	ft_fixup_qe_snum(blob);
+#endif
+
+#ifdef CONFIG_DRIVER_SERIAL_NS16550
+	do_fixup_by_compat_u32(blob, "ns16550",
+		"clock-frequency", CONFIG_SYS_NS16550_CLK, 1);
+#endif
+
+#ifdef CONFIG_CPM2
+	do_fixup_by_compat_u32(blob, "fsl,cpm2-scc-uart",
+		"current-speed", bd->bi_baudrate, 1);
+
+	do_fixup_by_compat_u32(blob, "fsl,cpm2-brg",
+		"clock-frequency", bd->bi_brgfreq, 1);
+#endif
+
+#ifdef CONFIG_FSL_CORENET
+	do_fixup_by_compat_u32(blob, "fsl,qoriq-clockgen-1.0",
+		"clock-frequency", CONFIG_SYS_CLK_FREQ, 1);
+#endif
+
+	fdt_fixup_memory(blob, (u64)bd->bi_memstart, (u64)bd->bi_memsize);
+
+#ifdef CONFIG_MP
+	ft_fixup_cpu(blob, (u64)bd->bi_memstart + (u64)bd->bi_memsize);
+	ft_fixup_num_cores(blob);
+#endif
+
+	ft_fixup_cache(blob);
+
+#if defined(CONFIG_FSL_ESDHC)
+	fdt_fixup_esdhc(blob, bd);
+#endif
+
+	ft_fixup_dpaa_clks(blob);
+
+#if defined(CONFIG_SYS_BMAN_MEM_PHYS)
+	fdt_portal(blob, "fsl,bman-portal", "bman-portals",
+			(u64)CONFIG_SYS_BMAN_MEM_PHYS,
+			CONFIG_SYS_BMAN_MEM_SIZE);
+#endif
+
+#if defined(CONFIG_SYS_QMAN_MEM_PHYS)
+	fdt_portal(blob, "fsl,qman-portal", "qman-portals",
+			(u64)CONFIG_SYS_QMAN_MEM_PHYS,
+			CONFIG_SYS_QMAN_MEM_SIZE);
+
+	fdt_fixup_qportals(blob);
+#endif
+
+#ifdef CONFIG_SYS_SRIO
+	ft_srio_setup(blob);
+#endif
+}
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/fixed_ivor.S b/arch/ppc/mach-mpc8xxx/mpc85xx/fixed_ivor.S
new file mode 100644
index 0000000..320cae3
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/fixed_ivor.S
@@ -0,0 +1,79 @@
+/*
+ * Copyright 2009 Freescale Semiconductor, Inc.
+ *
+ * Kumar Gala <kumar.gala@freescale.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/* This file is intended to be included by other asm code since
+ * we will want to execute this on both the primary core when
+ * it does a bootm and the secondary core's that get released
+ * out of the spin table */
+
+#define SET_IVOR(vector_number, vector_offset)	\
+	li	r3,vector_offset@l; 		\
+	mtspr	SPRN_IVOR##vector_number,r3;
+
+#define SET_GIVOR(vector_number, vector_offset)	\
+	li	r3,vector_offset@l; 		\
+	mtspr	SPRN_GIVOR##vector_number,r3;
+
+	SET_IVOR(0, 0x020) /* Critical Input */
+	SET_IVOR(1, 0x000) /* Machine Check */
+	SET_IVOR(2, 0x060) /* Data Storage */
+	SET_IVOR(3, 0x080) /* Instruction Storage */
+	SET_IVOR(4, 0x0a0) /* External Input */
+	SET_IVOR(5, 0x0c0) /* Alignment */
+	SET_IVOR(6, 0x0e0) /* Program */
+	SET_IVOR(7, 0x100) /* FP Unavailable */
+	SET_IVOR(8, 0x120) /* System Call */
+	SET_IVOR(9, 0x140) /* Auxiliary Processor Unavailable */
+	SET_IVOR(10, 0x160) /* Decrementer */
+	SET_IVOR(11, 0x180) /* Fixed Interval Timer */
+	SET_IVOR(12, 0x1a0) /* Watchdog Timer */
+	SET_IVOR(13, 0x1c0) /* Data TLB Error */
+	SET_IVOR(14, 0x1e0) /* Instruction TLB Error */
+	SET_IVOR(15, 0x040) /* Debug */
+
+/* e500v1 & e500v2 only */
+#ifndef CONFIG_E500MC
+	SET_IVOR(32, 0x200) /* SPE Unavailable */
+	SET_IVOR(33, 0x220) /* Embedded FP Data */
+	SET_IVOR(34, 0x240) /* Embedded FP Round */
+#endif
+
+	SET_IVOR(35, 0x260) /* Performance monitor */
+
+/* e500mc only */
+#ifdef CONFIG_E500MC
+	SET_IVOR(36, 0x280) /* Processor doorbell */
+	SET_IVOR(37, 0x2a0) /* Processor doorbell critical */
+	SET_IVOR(38, 0x2c0) /* Guest Processor doorbell */
+	SET_IVOR(39, 0x2e0) /* Guest Processor critical & machine check */
+	SET_IVOR(40, 0x300) /* Hypervisor system call */
+	SET_IVOR(41, 0x320) /* Hypervisor Priviledge */
+
+	SET_GIVOR(2, 0x060) /* Guest Data Storage */
+	SET_GIVOR(3, 0x080) /* Guest Instruction Storage */
+	SET_GIVOR(4, 0x0a0) /* Guest External Input */
+	SET_GIVOR(8, 0x120) /* Guest System Call */
+	SET_GIVOR(13, 0x1c0) /* Guest Data TLB Error */
+	SET_GIVOR(14, 0x1e0) /* Guest Instruction TLB Error */
+#endif
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/interrupts.c b/arch/ppc/mach-mpc8xxx/mpc85xx/interrupts.c
new file mode 100644
index 0000000..c6edd7d
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/interrupts.c
@@ -0,0 +1,113 @@
+/*
+ * (C) Copyright 2000-2002
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * (C) Copyright 2002 (440 port)
+ * Scott McNutt, Artesyn Communication Producs, smcnutt@artsyncp.com
+ *
+ * (C) Copyright 2003 Motorola Inc. (MPC85xx port)
+ * Xianghua Xiao (X.Xiao@motorola.com)
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <watchdog.h>
+#include <command.h>
+#include <asm/processor.h>
+#include <asm/io.h>
+
+int interrupt_init_cpu(unsigned int *decrementer_count)
+{
+	ccsr_pic_t __iomem *pic = (void *)CONFIG_SYS_MPC8xxx_PIC_ADDR;
+	unsigned int val;
+
+	out_be32(&pic->gcr, MPC85xx_PICGCR_RST);
+	while (in_be32(&pic->gcr) & MPC85xx_PICGCR_RST)
+		;
+	out_be32(&pic->gcr, MPC85xx_PICGCR_M);
+	in_be32(&pic->gcr);
+
+	*decrementer_count = get_timebase_clock() / CONFIG_SYS_HZ;
+
+	/* PIE is same as DIE, dec interrupt enable */
+	val = mfspr(SPRN_TCR);
+	val |= TCR_PIE;
+	mtspr(SPRN_TCR,val);
+
+#ifdef CONFIG_INTERRUPTS
+	pic->iivpr1 = 0x810001;	/* 50220 enable ecm interrupts */
+	debug("iivpr1@%x = %x\n", (uint)&pic->iivpr1, pic->iivpr1);
+
+	pic->iivpr2 = 0x810002;	/* 50240 enable ddr interrupts */
+	debug("iivpr2@%x = %x\n", (uint)&pic->iivpr2, pic->iivpr2);
+
+	pic->iivpr3 = 0x810003;	/* 50260 enable lbc interrupts */
+	debug("iivpr3@%x = %x\n", (uint)&pic->iivpr3, pic->iivpr3);
+
+#ifdef CONFIG_PCI1
+	pic->iivpr8 = 0x810008;	/* enable pci1 interrupts */
+	debug("iivpr8@%x = %x\n", (uint)&pic->iivpr8, pic->iivpr8);
+#endif
+#if defined(CONFIG_PCI2) || defined(CONFIG_PCIE2)
+	pic->iivpr9 = 0x810009;	/* enable pci1 interrupts */
+	debug("iivpr9@%x = %x\n", (uint)&pic->iivpr9, pic->iivpr9);
+#endif
+#ifdef CONFIG_PCIE1
+	pic->iivpr10 = 0x81000a;	/* enable pcie1 interrupts */
+	debug("iivpr10@%x = %x\n", (uint)&pic->iivpr10, pic->iivpr10);
+#endif
+#ifdef CONFIG_PCIE3
+	pic->iivpr11 = 0x81000b;	/* enable pcie3 interrupts */
+	debug("iivpr11@%x = %x\n", (uint)&pic->iivpr11, pic->iivpr11);
+#endif
+
+	pic->ctpr=0;		/* 40080 clear current task priority register */
+#endif
+
+	return (0);
+}
+
+/* Install and free a interrupt handler. Not implemented yet. */
+
+void
+irq_install_handler(int vec, interrupt_handler_t *handler, void *arg)
+{
+	return;
+}
+
+void
+irq_free_handler(int vec)
+{
+	return;
+}
+
+void timer_interrupt_cpu(struct pt_regs *regs)
+{
+	/* PIS is same as DIS, dec interrupt status */
+	mtspr(SPRN_TSR, TSR_PIS);
+}
+
+#if defined(CONFIG_CMD_IRQ)
+/* irqinfo - print information about PCI devices,not implemented. */
+int do_irqinfo(cmd_tbl_t *cmdtp, int flag, int argc, char * const argv[])
+{
+	return 0;
+}
+#endif
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/mp.c b/arch/ppc/mach-mpc8xxx/mpc85xx/mp.c
new file mode 100644
index 0000000..8a8e571
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/mp.c
@@ -0,0 +1,408 @@
+/*
+ * Copyright 2008-2010 Freescale Semiconductor, Inc.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <common.h>
+#include <asm/processor.h>
+#include <ioports.h>
+#include <lmb.h>
+#include <asm/io.h>
+#include <asm/mmu.h>
+#include <asm/fsl_law.h>
+#include <mach/early_udelay.h>
+#include "mp.h"
+
+DECLARE_GLOBAL_DATA_PTR;
+
+u32 get_my_id()
+{
+	return mfspr(SPRN_PIR);
+}
+
+/*
+ * Determine if U-Boot should keep secondary cores in reset, or let them out
+ * of reset and hold them in a spinloop
+ */
+int hold_cores_in_reset(int verbose)
+{
+	/*const char *s = getenv("mp_holdoff"); */
+	const char *s = NULL;
+
+	/* Default to no, overriden by 'y', 'yes', 'Y', 'Yes', or '1' */
+	if (s && (*s == 'y' || *s == 'Y' || *s == '1')) {
+		if (verbose) {
+			puts("Secondary cores are being held in reset.\n");
+			puts("See 'mp_holdoff' environment variable\n");
+		}
+
+		return 1;
+	}
+
+	return 0;
+}
+
+int cpu_reset(int nr)
+{
+	volatile ccsr_pic_t *pic = (void *)(CONFIG_SYS_MPC8xxx_PIC_ADDR);
+	out_be32(&pic->pir, 1 << nr);
+	/* the dummy read works around an errata on early 85xx MP PICs */
+	(void)in_be32(&pic->pir);
+	out_be32(&pic->pir, 0x0);
+
+	return 0;
+}
+
+int cpu_status(int nr)
+{
+	u32 *table, id = get_my_id();
+
+	if (hold_cores_in_reset(1))
+		return 0;
+
+	if (nr == id) {
+		table = (u32 *)get_spin_virt_addr();
+		printf("table base @ 0x%p\n", table);
+	} else {
+		table = (u32 *)get_spin_virt_addr() + nr * NUM_BOOT_ENTRY;
+		printf("Running on cpu %d\n", id);
+		printf("\n");
+		printf("table @ 0x%p\n", table);
+		printf("   addr - 0x%08x\n", table[BOOT_ENTRY_ADDR_LOWER]);
+		printf("   pir  - 0x%08x\n", table[BOOT_ENTRY_PIR]);
+		printf("   r3   - 0x%08x\n", table[BOOT_ENTRY_R3_LOWER]);
+		printf("   r6   - 0x%08x\n", table[BOOT_ENTRY_R6_LOWER]);
+	}
+
+	return 0;
+}
+
+#ifdef CONFIG_FSL_CORENET
+int cpu_disable(int nr)
+{
+	volatile ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+
+	setbits_be32(&gur->coredisrl, 1 << nr);
+
+	return 0;
+}
+
+int is_core_disabled(int nr) {
+	ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+	u32 coredisrl = in_be32(&gur->coredisrl);
+
+	return (coredisrl & (1 << nr));
+}
+#else
+int cpu_disable(int nr)
+{
+	volatile ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+
+	switch (nr) {
+	case 0:
+		setbits_be32(&gur->devdisr, MPC85xx_DEVDISR_CPU0);
+		break;
+	case 1:
+		setbits_be32(&gur->devdisr, MPC85xx_DEVDISR_CPU1);
+		break;
+	default:
+		printf("Invalid cpu number for disable %d\n", nr);
+		return 1;
+	}
+
+	return 0;
+}
+
+int is_core_disabled(int nr) {
+	ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+	u32 devdisr = in_be32(&gur->devdisr);
+
+	switch (nr) {
+	case 0:
+		return (devdisr & MPC85xx_DEVDISR_CPU0);
+	case 1:
+		return (devdisr & MPC85xx_DEVDISR_CPU1);
+	default:
+		printf("Invalid cpu number for disable %d\n", nr);
+	}
+
+	return 0;
+}
+#endif
+
+static u8 boot_entry_map[4] = {
+	0,
+	BOOT_ENTRY_PIR,
+	BOOT_ENTRY_R3_LOWER,
+	BOOT_ENTRY_R6_LOWER,
+};
+
+int cpu_release(int nr, int argc, char * const argv[])
+{
+	u32 i, val, *table = (u32 *)get_spin_virt_addr() + nr * NUM_BOOT_ENTRY;
+	u64 boot_addr;
+
+	if (hold_cores_in_reset(1))
+		return 0;
+
+	if (nr == get_my_id()) {
+		printf("Invalid to release the boot core.\n\n");
+		return 1;
+	}
+
+	if (argc != 4) {
+		printf("Invalid number of arguments to release.\n\n");
+		return 1;
+	}
+
+	boot_addr = simple_strtoull(argv[0], NULL, 16);
+
+	/* handle pir, r3, r6 */
+	for (i = 1; i < 4; i++) {
+		if (argv[i][0] != '-') {
+			u8 entry = boot_entry_map[i];
+			val = simple_strtoul(argv[i], NULL, 16);
+			table[entry] = val;
+		}
+	}
+
+	table[BOOT_ENTRY_ADDR_UPPER] = (u32)(boot_addr >> 32);
+
+	/* ensure all table updates complete before final address write */
+	eieio();
+
+	table[BOOT_ENTRY_ADDR_LOWER] = (u32)(boot_addr & 0xffffffff);
+
+	return 0;
+}
+
+u32 determine_mp_bootpg(void)
+{
+	/* if we have 4G or more of memory, put the boot page at 4Gb-4k */
+	/*if ((u64)gd->ram_size > 0xfffff000) */
+	if ((u64)get_effective_memsize() > 0xfffff000)
+		return (0xfffff000);
+
+	return (get_effective_memsize() - 4096);
+	/*return (gd->ram_size - 4096);*/
+}
+
+ulong get_spin_phys_addr(void)
+{
+	extern ulong __secondary_start_page;
+	extern ulong __spin_table;
+
+	return (determine_mp_bootpg() +
+		(ulong)&__spin_table - (ulong)&__secondary_start_page);
+}
+
+ulong get_spin_virt_addr(void)
+{
+	extern ulong __secondary_start_page;
+	extern ulong __spin_table;
+
+	return (CONFIG_BPTR_VIRT_ADDR +
+		(ulong)&__spin_table - (ulong)&__secondary_start_page);
+}
+
+#ifdef CONFIG_FSL_CORENET
+static void plat_mp_up(unsigned long bootpg)
+{
+	u32 up, cpu_up_mask, whoami;
+	u32 *table = (u32 *)get_spin_virt_addr();
+	volatile ccsr_gur_t *gur;
+	volatile ccsr_local_t *ccm;
+	volatile ccsr_rcpm_t *rcpm;
+	volatile ccsr_pic_t *pic;
+	int timeout = 10;
+	u32 nr_cpus;
+	struct law_entry e;
+
+	gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+	ccm = (void *)(CONFIG_SYS_FSL_CORENET_CCM_ADDR);
+	rcpm = (void *)(CONFIG_SYS_FSL_CORENET_RCPM_ADDR);
+	pic = (void *)(CONFIG_SYS_MPC8xxx_PIC_ADDR);
+
+	nr_cpus = ((in_be32(&pic->frr) >> 8) & 0xff) + 1;
+
+	whoami = in_be32(&pic->whoami);
+	cpu_up_mask = 1 << whoami;
+	out_be32(&ccm->bstrl, bootpg);
+
+	e = find_law(bootpg);
+	out_be32(&ccm->bstrar, LAW_EN | e.trgt_id << 20 | LAW_SIZE_4K);
+
+	/* readback to sync write */
+	in_be32(&ccm->bstrar);
+
+	/* disable time base at the platform */
+	out_be32(&rcpm->ctbenrl, cpu_up_mask);
+
+	/* release the hounds */
+	up = ((1 << nr_cpus) - 1);
+	out_be32(&gur->brrl, up);
+
+	/* wait for everyone */
+	while (timeout) {
+		int i;
+		for (i = 0; i < nr_cpus; i++) {
+			if (table[i * NUM_BOOT_ENTRY + BOOT_ENTRY_ADDR_LOWER])
+				cpu_up_mask |= (1 << i);
+		};
+
+		if ((cpu_up_mask & up) == up)
+			break;
+
+		early_udelay(100);
+		timeout--;
+	}
+
+	if (timeout == 0)
+		printf("CPU up timeout. CPU up mask is %x should be %x\n",
+			cpu_up_mask, up);
+
+	/* enable time base at the platform */
+	out_be32(&rcpm->ctbenrl, 0);
+	mtspr(SPRN_TBWU, 0);
+	mtspr(SPRN_TBWL, 0);
+	out_be32(&rcpm->ctbenrl, (1 << nr_cpus) - 1);
+
+#ifdef CONFIG_MPC8xxx_DISABLE_BPTR
+	/*
+	 * Disabling Boot Page Translation allows the memory region 0xfffff000
+	 * to 0xffffffff to be used normally.  Leaving Boot Page Translation
+	 * enabled remaps 0xfffff000 to SDRAM which makes that memory region
+	 * unusable for normal operation but it does allow OSes to easily
+	 * reset a processor core to put it back into U-Boot's spinloop.
+	 */
+	clrbits_be32(&ecm->bptr, 0x80000000);
+#endif
+}
+#else
+static void plat_mp_up(unsigned long bootpg)
+{
+	u32 up, cpu_up_mask, whoami;
+	u32 *table = (u32 *)get_spin_virt_addr();
+	volatile u32 bpcr;
+	volatile ccsr_local_ecm_t *ecm = (void *)(CONFIG_SYS_MPC85xx_ECM_ADDR);
+	volatile ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+	volatile ccsr_pic_t *pic = (void *)(CONFIG_SYS_MPC8xxx_PIC_ADDR);
+	u32 devdisr;
+	int timeout = 10;
+
+	whoami = in_be32(&pic->whoami);
+	out_be32(&ecm->bptr, 0x80000000 | (bootpg >> 12));
+
+	/* disable time base at the platform */
+	devdisr = in_be32(&gur->devdisr);
+	if (whoami)
+		devdisr |= MPC85xx_DEVDISR_TB0;
+	else
+		devdisr |= MPC85xx_DEVDISR_TB1;
+	out_be32(&gur->devdisr, devdisr);
+
+	/* release the hounds */
+	up = ((1 << cpu_numcores()) - 1);
+	bpcr = in_be32(&ecm->eebpcr);
+	bpcr |= (up << 24);
+	out_be32(&ecm->eebpcr, bpcr);
+	asm("sync; isync; msync");
+
+	cpu_up_mask = 1 << whoami;
+	/* wait for everyone */
+	while (timeout) {
+		int i;
+		for (i = 0; i < cpu_numcores(); i++) {
+			if (table[i * NUM_BOOT_ENTRY + BOOT_ENTRY_ADDR_LOWER])
+				cpu_up_mask |= (1 << i);
+		};
+
+		if ((cpu_up_mask & up) == up)
+			break;
+
+		/*udelay(100);*/
+		early_udelay(100);
+		timeout--;
+	}
+
+	/*if (timeout == 0)
+		printf("CPU up timeout. CPU up mask is %x should be %x\n",
+			cpu_up_mask, up); */
+
+	/* enable time base at the platform */
+	if (whoami)
+		devdisr |= MPC85xx_DEVDISR_TB1;
+	else
+		devdisr |= MPC85xx_DEVDISR_TB0;
+	out_be32(&gur->devdisr, devdisr);
+	mtspr(SPRN_TBWU, 0);
+	mtspr(SPRN_TBWL, 0);
+
+	devdisr &= ~(MPC85xx_DEVDISR_TB0 | MPC85xx_DEVDISR_TB1);
+	out_be32(&gur->devdisr, devdisr);
+
+#ifdef CONFIG_MPC8xxx_DISABLE_BPTR
+	/*
+	 * Disabling Boot Page Translation allows the memory region 0xfffff000
+	 * to 0xffffffff to be used normally.  Leaving Boot Page Translation
+	 * enabled remaps 0xfffff000 to SDRAM which makes that memory region
+	 * unusable for normal operation but it does allow OSes to easily
+	 * reset a processor core to put it back into U-Boot's spinloop.
+	 */
+	clrbits_be32(&ecm->bptr, 0x80000000);
+#endif
+}
+#endif
+
+void setup_mp(void)
+{
+	extern ulong __secondary_start_page;
+	extern ulong __bootpg_addr;
+	ulong fixup = (ulong)&__secondary_start_page;
+	u32 bootpg = determine_mp_bootpg();
+
+	/* Some OSes expect secondary cores to be held in reset */
+	if (hold_cores_in_reset(0))
+		return;
+
+	/* Store the bootpg's SDRAM address for use by secondary CPU cores */
+	__bootpg_addr = bootpg;
+
+	/* look for the tlb covering the reset page, there better be one */
+	int i = find_tlb_idx((void *)CONFIG_BPTR_VIRT_ADDR, 1);
+
+	/* we found a match */
+	if (i != -1) {
+		/* map reset page to bootpg so we can copy code there */
+		disable_tlb(i);
+
+		set_tlb(1, CONFIG_BPTR_VIRT_ADDR, bootpg, /* tlb, epn, rpn */
+			MAS3_SX|MAS3_SW|MAS3_SR, MAS2_I|MAS2_G, /* perms, wimge */
+			0, i, BOOKE_PAGESZ_4K, 1); /* ts, esel, tsize, iprot */
+
+		memcpy((void *)CONFIG_BPTR_VIRT_ADDR, (void *)fixup, 4096);
+
+		plat_mp_up(bootpg);
+	} else {
+		puts("WARNING: No reset page TLB. "
+			"Skipping secondary core setup\n");
+	}
+}
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/mp.h b/arch/ppc/mach-mpc8xxx/mpc85xx/mp.h
new file mode 100644
index 0000000..87bac37
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/mp.h
@@ -0,0 +1,22 @@
+#ifndef __MPC85XX_MP_H_
+#define __MPC85XX_MP_H_
+
+#include <asm/mp.h>
+
+ulong get_spin_phys_addr(void);
+ulong get_spin_virt_addr(void);
+u32 get_my_id(void);
+int hold_cores_in_reset(int verbose);
+
+#define BOOT_ENTRY_ADDR_UPPER	0
+#define BOOT_ENTRY_ADDR_LOWER	1
+#define BOOT_ENTRY_R3_UPPER	2
+#define BOOT_ENTRY_R3_LOWER	3
+#define BOOT_ENTRY_RESV		4
+#define BOOT_ENTRY_PIR		5
+#define BOOT_ENTRY_R6_UPPER	6
+#define BOOT_ENTRY_R6_LOWER	7
+#define NUM_BOOT_ENTRY		8
+#define SIZE_BOOT_ENTRY		(NUM_BOOT_ENTRY * sizeof(u32))
+
+#endif
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/mpc8544_serdes.c b/arch/ppc/mach-mpc8xxx/mpc85xx/mpc8544_serdes.c
new file mode 100644
index 0000000..cd8aec4
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/mpc8544_serdes.c
@@ -0,0 +1,95 @@
+/*
+ * Copyright 2010 Freescale Semiconductor, Inc.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <common.h>
+#include <asm/io.h>
+#include <mach/immap_85xx.h>
+#include <asm/fsl_serdes.h>
+
+#define SRDS1_MAX_LANES		8
+#define SRDS2_MAX_LANES		4
+
+static u32 serdes1_prtcl_map, serdes2_prtcl_map;
+
+static u8 serdes1_cfg_tbl[][SRDS1_MAX_LANES] = {
+	[0x2] = {PCIE1, PCIE1, PCIE1, PCIE1, NONE, NONE, NONE, NONE},
+	[0x3] = {PCIE1, PCIE1, PCIE1, PCIE1, NONE, NONE, NONE, NONE},
+	[0x4] = {PCIE1, PCIE1, PCIE1, PCIE1, PCIE2, PCIE2, PCIE2, PCIE2},
+	[0x5] = {PCIE1, PCIE1, PCIE1, PCIE1, PCIE2, PCIE2, PCIE2, PCIE2},
+	[0x6] = {PCIE1, PCIE1, PCIE1, PCIE1, PCIE2, PCIE2, PCIE2, PCIE2},
+	[0x7] = {PCIE1, PCIE1, PCIE1, PCIE1, PCIE2, PCIE2, PCIE2, PCIE2},
+};
+
+static u8 serdes2_cfg_tbl[][SRDS2_MAX_LANES] = {
+	[0x1] = {NONE, NONE, SGMII_TSEC1, SGMII_TSEC3},
+	[0x3] = {NONE, NONE, SGMII_TSEC1, SGMII_TSEC3},
+	[0x5] = {NONE, NONE, SGMII_TSEC1, SGMII_TSEC3},
+	[0x6] = {PCIE3, NONE, NONE, NONE},
+	[0x7] = {PCIE3, NONE, SGMII_TSEC1, SGMII_TSEC3},
+};
+
+int is_serdes_configured(enum srds_prtcl device)
+{
+	int ret = (1 << device) & serdes1_prtcl_map;
+
+	if (ret)
+		return ret;
+
+	return (1 << device) & serdes2_prtcl_map;
+}
+
+void fsl_serdes_init(void)
+{
+	ccsr_gur_t *gur = (void *)CONFIG_SYS_MPC85xx_GUTS_ADDR;
+	u32 pordevsr = in_be32(&gur->pordevsr);
+	u32 srds_cfg = (pordevsr & MPC85xx_PORDEVSR_IO_SEL) >>
+				MPC85xx_PORDEVSR_IO_SEL_SHIFT;
+	int lane;
+
+	debug("PORDEVSR[IO_SEL_SRDS] = %x\n", srds_cfg);
+
+	if (srds_cfg > ARRAY_SIZE(serdes1_cfg_tbl)) {
+		printf("Invalid PORDEVSR[IO_SEL_SRDS] = %d\n", srds_cfg);
+		return;
+	}
+	for (lane = 0; lane < SRDS1_MAX_LANES; lane++) {
+		enum srds_prtcl lane_prtcl = serdes1_cfg_tbl[srds_cfg][lane];
+		serdes1_prtcl_map |= (1 << lane_prtcl);
+	}
+
+	if (srds_cfg > ARRAY_SIZE(serdes2_cfg_tbl)) {
+		printf("Invalid PORDEVSR[IO_SEL_SRDS] = %d\n", srds_cfg);
+		return;
+	}
+
+	for (lane = 0; lane < SRDS2_MAX_LANES; lane++) {
+		enum srds_prtcl lane_prtcl = serdes2_cfg_tbl[srds_cfg][lane];
+		serdes2_prtcl_map |= (1 << lane_prtcl);
+	}
+
+	if (pordevsr & MPC85xx_PORDEVSR_SGMII1_DIS)
+		serdes2_prtcl_map &= ~(1 << SGMII_TSEC1);
+
+	if (pordevsr & MPC85xx_PORDEVSR_SGMII3_DIS)
+		serdes2_prtcl_map &= ~(1 << SGMII_TSEC3);
+}
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/p2020_serdes.c b/arch/ppc/mach-mpc8xxx/mpc85xx/p2020_serdes.c
new file mode 100644
index 0000000..877c093
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/p2020_serdes.c
@@ -0,0 +1,73 @@
+/*
+ * Copyright 2010 Freescale Semiconductor, Inc.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <common.h>
+#include <asm/io.h>
+#include <mach/immap_85xx.h>
+#include <asm/fsl_serdes.h>
+
+#define SRDS1_MAX_LANES		4
+
+static u32 serdes1_prtcl_map;
+
+static u8 serdes1_cfg_tbl[][SRDS1_MAX_LANES] = {
+	[0x0] = {PCIE1, NONE, NONE, NONE},
+	[0x2] = {PCIE1, PCIE2, PCIE3, PCIE3},
+	[0x4] = {PCIE1, PCIE1, PCIE3, PCIE3},
+	[0x6] = {PCIE1, PCIE1, PCIE1, PCIE1},
+	[0x7] = {SRIO2, SRIO1, NONE, NONE},
+	[0x8] = {SRIO2, SRIO2, SRIO2, SRIO2},
+	[0x9] = {SRIO2, SRIO2, SRIO2, SRIO2},
+	[0xa] = {SRIO2, SRIO2, SRIO2, SRIO2},
+	[0xb] = {SRIO2, SRIO1, SGMII_TSEC2, SGMII_TSEC3},
+	[0xc] = {SRIO2, SRIO1, SGMII_TSEC2, SGMII_TSEC3},
+	[0xd] = {PCIE1, SRIO1, SGMII_TSEC2, SGMII_TSEC3},
+	[0xe] = {PCIE1, PCIE2, SGMII_TSEC2, SGMII_TSEC3},
+	[0xf] = {PCIE1, PCIE1, SGMII_TSEC2, SGMII_TSEC3},
+};
+
+int is_serdes_configured(enum srds_prtcl prtcl)
+{
+	return (1 << prtcl) & serdes1_prtcl_map;
+}
+
+void fsl_serdes_init(void)
+{
+	ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+	u32 pordevsr = in_be32(&gur->pordevsr);
+	u32 srds_cfg = (pordevsr & MPC85xx_PORDEVSR_IO_SEL) >>
+				MPC85xx_PORDEVSR_IO_SEL_SHIFT;
+	int lane;
+
+	debug("PORDEVSR[IO_SEL_SRDS] = %x\n", srds_cfg);
+
+	if (srds_cfg > ARRAY_SIZE(serdes1_cfg_tbl)) {
+		printf("Invalid PORDEVSR[IO_SEL_SRDS] = %d\n", srds_cfg);
+		return;
+	}
+
+	for (lane = 0; lane < SRDS1_MAX_LANES; lane++) {
+		enum srds_prtcl lane_prtcl = serdes1_cfg_tbl[srds_cfg][lane];
+		serdes1_prtcl_map |= (1 << lane_prtcl);
+	}
+}
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/release.S b/arch/ppc/mach-mpc8xxx/mpc85xx/release.S
new file mode 100644
index 0000000..bc31a18
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/release.S
@@ -0,0 +1,317 @@
+/*
+ * Copyright 2008-2010 Freescale Semiconductor, Inc.
+ * Kumar Gala <kumar.gala@freescale.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <config.h>
+#include <asm/config_mpc85xx.h>
+#include <mach/mpc85xx.h>
+
+#define _LINUX_CONFIG_H 1	/* avoid reading Linux autoconf.h file	*/
+
+#include <mach/ppc_asm.tmpl>
+#include <asm/ppc_defs.h>
+
+#include <asm/cache.h>
+#include <asm/mmu.h>
+
+/* To boot secondary cpus, we need a place for them to start up.
+ * Normally, they start at 0xfffffffc, but that's usually the
+ * firmware, and we don't want to have to run the firmware again.
+ * Instead, the primary cpu will set the BPTR to point here to
+ * this page.  We then set up the core, and head to
+ * start_secondary.  Note that this means that the code below
+ * must never exceed 1023 instructions (the branch at the end
+ * would then be the 1024th).
+ */
+	.globl	__secondary_start_page
+	.align	12
+__secondary_start_page:
+/* First do some preliminary setup */
+	lis	r3, HID0_EMCP@h		/* enable machine check */
+#ifndef CONFIG_E500MC
+	ori	r3,r3,HID0_TBEN@l	/* enable Timebase */
+#endif
+#ifdef CONFIG_PHYS_64BIT
+	ori	r3,r3,HID0_ENMAS7@l	/* enable MAS7 updates */
+#endif
+	mtspr	SPRN_HID0,r3
+
+#ifndef CONFIG_E500MC
+	li	r3,(HID1_ASTME|HID1_ABE)@l	/* Addr streaming & broadcast */
+	mfspr   r0,PVR
+	andi.	r0,r0,0xff
+	cmpwi	r0,0x50@l	/* if we are rev 5.0 or greater set MBDD */
+	blt 1f
+	/* Set MBDD bit also */
+	ori r3, r3, HID1_MBDD@l
+1:
+	mtspr	SPRN_HID1,r3
+#endif
+
+	/* Enable branch prediction */
+	lis	r3,BUCSR_ENABLE@h
+	ori	r3,r3,BUCSR_ENABLE@l
+	mtspr	SPRN_BUCSR,r3
+
+	/* Ensure TB is 0 */
+	li	r3,0
+	mttbl	r3
+	mttbu	r3
+
+	/* Enable/invalidate the I-Cache */
+	lis	r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@h
+	ori	r2,r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@l
+	mtspr	SPRN_L1CSR1,r2
+1:
+	mfspr	r3,SPRN_L1CSR1
+	and.	r1,r3,r2
+	bne	1b
+
+	lis	r3,(L1CSR1_CPE|L1CSR1_ICE)@h
+	ori	r3,r3,(L1CSR1_CPE|L1CSR1_ICE)@l
+	mtspr	SPRN_L1CSR1,r3
+	isync
+2:
+	mfspr	r3,SPRN_L1CSR1
+	andi.	r1,r3,L1CSR1_ICE@l
+	beq	2b
+
+	/* Enable/invalidate the D-Cache */
+	lis	r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@h
+	ori	r2,r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@l
+	mtspr	SPRN_L1CSR0,r2
+1:
+	mfspr	r3,SPRN_L1CSR0
+	and.	r1,r3,r2
+	bne	1b
+
+	lis	r3,(L1CSR0_CPE|L1CSR0_DCE)@h
+	ori	r3,r3,(L1CSR0_CPE|L1CSR0_DCE)@l
+	mtspr	SPRN_L1CSR0,r3
+	isync
+2:
+	mfspr	r3,SPRN_L1CSR0
+	andi.	r1,r3,L1CSR0_DCE@l
+	beq	2b
+
+#define toreset(x) (x - __secondary_start_page + 0xfffff000)
+
+	/* get our PIR to figure out our table entry */
+	lis	r3,toreset(__spin_table)@h
+	ori	r3,r3,toreset(__spin_table)@l
+
+	/* r10 has the base address for the entry */
+	mfspr	r0,SPRN_PIR
+#ifdef CONFIG_E500MC
+	rlwinm	r4,r0,27,27,31
+#else
+	mr	r4,r0
+#endif
+	slwi	r8,r4,5
+	add	r10,r3,r8
+
+#if defined(CONFIG_E500MC) && defined(CONFIG_SYS_CACHE_STASHING)
+	/* set stash id to (coreID) * 2 + 32 + L1 CT (0) */
+	slwi	r8,r4,1
+	addi	r8,r8,32
+	mtspr	L1CSR2,r8
+#endif
+
+#if defined(CONFIG_SYS_P4080_ERRATUM_CPU22)
+	mfspr	r8,L1CSR2
+	oris	r8,r8,(L1CSR2_DCWS)@h
+	mtspr	L1CSR2,r8
+#endif
+
+#ifdef CONFIG_BACKSIDE_L2_CACHE
+	/* Enable/invalidate the L2 cache */
+	msync
+	lis	r2,(L2CSR0_L2FI|L2CSR0_L2LFC)@h
+	ori	r2,r2,(L2CSR0_L2FI|L2CSR0_L2LFC)@l
+	mtspr	SPRN_L2CSR0,r2
+1:
+	mfspr	r3,SPRN_L2CSR0
+	and.	r1,r3,r2
+	bne	1b
+
+#ifdef CONFIG_SYS_CACHE_STASHING
+	/* set stash id to (coreID) * 2 + 32 + L2 (1) */
+	addi	r3,r8,1
+	mtspr	SPRN_L2CSR1,r3
+#endif
+
+	lis	r3,CONFIG_SYS_INIT_L2CSR0@h
+	ori	r3,r3,CONFIG_SYS_INIT_L2CSR0@l
+	mtspr	SPRN_L2CSR0,r3
+	isync
+2:
+	mfspr	r3,SPRN_L2CSR0
+	andis.	r1,r3,L2CSR0_L2E@h
+	beq	2b
+#endif
+
+#define EPAPR_MAGIC		(0x45504150)
+#define ENTRY_ADDR_UPPER	0
+#define ENTRY_ADDR_LOWER	4
+#define ENTRY_R3_UPPER		8
+#define ENTRY_R3_LOWER		12
+#define ENTRY_RESV		16
+#define ENTRY_PIR		20
+#define ENTRY_R6_UPPER		24
+#define ENTRY_R6_LOWER		28
+#define ENTRY_SIZE		32
+
+	/* setup the entry */
+	li	r3,0
+	li	r8,1
+	stw	r0,ENTRY_PIR(r10)
+	stw	r3,ENTRY_ADDR_UPPER(r10)
+	stw	r8,ENTRY_ADDR_LOWER(r10)
+	stw	r3,ENTRY_R3_UPPER(r10)
+	stw	r4,ENTRY_R3_LOWER(r10)
+	stw	r3,ENTRY_R6_UPPER(r10)
+	stw	r3,ENTRY_R6_LOWER(r10)
+
+	/* load r13 with the address of the 'bootpg' in SDRAM */
+	lis	r13,toreset(__bootpg_addr)@h
+	ori	r13,r13,toreset(__bootpg_addr)@l
+	lwz	r13,0(r13)
+
+	/* setup mapping for AS = 1, and jump there */
+	lis	r11,(MAS0_TLBSEL(1)|MAS0_ESEL(1))@h
+	mtspr	SPRN_MAS0,r11
+	lis	r11,(MAS1_VALID|MAS1_IPROT)@h
+	ori	r11,r11,(MAS1_TS|MAS1_TSIZE(BOOKE_PAGESZ_4K))@l
+	mtspr	SPRN_MAS1,r11
+	oris	r11,r13,(MAS2_I|MAS2_G)@h
+	ori	r11,r13,(MAS2_I|MAS2_G)@l
+	mtspr	SPRN_MAS2,r11
+	oris	r11,r13,(MAS3_SX|MAS3_SW|MAS3_SR)@h
+	ori	r11,r13,(MAS3_SX|MAS3_SW|MAS3_SR)@l
+	mtspr	SPRN_MAS3,r11
+	tlbwe
+
+	bl	1f
+1:	mflr	r11
+	/*
+	 * OR in 0xfff to create a mask of the bootpg SDRAM address.  We use
+	 * this mask to fixup the cpu spin table and the address that we want
+	 * to jump to, eg change them from 0xfffffxxx to 0x7ffffxxx if the
+	 * bootpg is at 0x7ffff000 in SDRAM.
+	 */
+	ori	r13,r13,0xfff
+	and	r11, r11, r13
+	and	r10, r10, r13
+
+	addi	r11,r11,(2f-1b)
+	mfmsr	r13
+	ori	r12,r13,MSR_IS|MSR_DS@l
+
+	mtspr	SPRN_SRR0,r11
+	mtspr	SPRN_SRR1,r12
+	rfi
+
+	/* spin waiting for addr */
+2:
+	lwz	r4,ENTRY_ADDR_LOWER(r10)
+	andi.	r11,r4,1
+	bne	2b
+	isync
+
+	/* setup IVORs to match fixed offsets */
+#include "fixed_ivor.S"
+
+	/* get the upper bits of the addr */
+	lwz	r11,ENTRY_ADDR_UPPER(r10)
+
+	/* setup branch addr */
+	mtspr	SPRN_SRR0,r4
+
+	/* mark the entry as released */
+	li	r8,3
+	stw	r8,ENTRY_ADDR_LOWER(r10)
+
+	/* mask by ~64M to setup our tlb we will jump to */
+	rlwinm	r12,r4,0,0,5
+
+	/* setup r3, r4, r5, r6, r7, r8, r9 */
+	lwz	r3,ENTRY_R3_LOWER(r10)
+	li	r4,0
+	li	r5,0
+	lwz	r6,ENTRY_R6_LOWER(r10)
+	lis	r7,(64*1024*1024)@h
+	li	r8,0
+	li	r9,0
+
+	/* load up the pir */
+	lwz	r0,ENTRY_PIR(r10)
+	mtspr	SPRN_PIR,r0
+	mfspr	r0,SPRN_PIR
+	stw	r0,ENTRY_PIR(r10)
+
+	mtspr	IVPR,r12
+/*
+ * Coming here, we know the cpu has one TLB mapping in TLB1[0]
+ * which maps 0xfffff000-0xffffffff one-to-one.  We set up a
+ * second mapping that maps addr 1:1 for 64M, and then we jump to
+ * addr
+ */
+	lis	r10,(MAS0_TLBSEL(1)|MAS0_ESEL(0))@h
+	mtspr	SPRN_MAS0,r10
+	lis	r10,(MAS1_VALID|MAS1_IPROT)@h
+	ori	r10,r10,(MAS1_TSIZE(BOOKE_PAGESZ_64M))@l
+	mtspr	SPRN_MAS1,r10
+	/* WIMGE = 0b00000 for now */
+	mtspr	SPRN_MAS2,r12
+	ori	r12,r12,(MAS3_SX|MAS3_SW|MAS3_SR)
+	mtspr	SPRN_MAS3,r12
+#ifdef CONFIG_ENABLE_36BIT_PHYS
+	mtspr	SPRN_MAS7,r11
+#endif
+	tlbwe
+
+/* Now we have another mapping for this page, so we jump to that
+ * mapping
+ */
+	mtspr	SPRN_SRR1,r13
+	rfi
+
+	/*
+	 * Allocate some space for the SDRAM address of the bootpg.
+	 * This variable has to be in the boot page so that it can
+	 * be accessed by secondary cores when they come out of reset.
+	 */
+	.globl __bootpg_addr
+__bootpg_addr:
+	.long	0
+
+	.align L1_CACHE_SHIFT
+	.globl __spin_table
+__spin_table:
+	.space CONFIG_MAX_CPUS*ENTRY_SIZE
+
+	/* Fill in the empty space.  The actual reset vector is
+	 * the last word of the page */
+__secondary_start_code_end:
+	.space 4092 - (__secondary_start_code_end - __secondary_start_page)
+__secondary_reset_vector:
+	b	__secondary_start_page
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/resetvec.S b/arch/ppc/mach-mpc8xxx/mpc85xx/resetvec.S
new file mode 100644
index 0000000..29555d4
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/resetvec.S
@@ -0,0 +1,2 @@
+	.section .resetvec,"ax"
+	b _start_e500
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/speed.c b/arch/ppc/mach-mpc8xxx/mpc85xx/speed.c
new file mode 100644
index 0000000..3992ea4
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/speed.c
@@ -0,0 +1,213 @@
+/*
+ * Copyright 2004, 2007-2011 Freescale Semiconductor, Inc.
+ *
+ * (C) Copyright 2003 Motorola Inc.
+ * Xianghua Xiao, (X.Xiao@motorola.com)
+ *
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/ppc_asm.tmpl>
+#include <asm/processor.h>
+#include <asm/global_data.h>
+#include <asm/io.h>
+
+DECLARE_GLOBAL_DATA_PTR;
+
+/* --------------------------------------------------------------- */
+
+void get_sys_info (sys_info_t * sysInfo)
+{
+	volatile ccsr_gur_t *gur = (void *)(CONFIG_SYS_MPC85xx_GUTS_ADDR);
+	uint plat_ratio,e500_ratio,half_freqSystemBus;
+
+#if defined(CONFIG_FSL_LBC)
+	uint lcrr_div;
+#endif
+	int i;
+
+	plat_ratio = (gur->porpllsr) & 0x0000003e;
+	plat_ratio >>= 1;
+	sysInfo->freqSystemBus = plat_ratio * CONFIG_SYS_CLK_FREQ;
+
+	/* Divide before multiply to avoid integer
+	 * overflow for processor speeds above 2GHz */
+	half_freqSystemBus = sysInfo->freqSystemBus/2;
+	for (i = 0; i < cpu_numcores(); i++) {
+		e500_ratio = ((gur->porpllsr) >> (i * 8 + 16)) & 0x3f;
+		sysInfo->freqProcessor[i] = e500_ratio * half_freqSystemBus;
+	}
+
+	/* Note: freqDDRBus is the MCLK frequency, not the data rate. */
+	sysInfo->freqDDRBus = sysInfo->freqSystemBus;
+
+#ifdef CONFIG_DDR_CLK_FREQ
+	{
+		u32 ddr_ratio = ((gur->porpllsr) & MPC85xx_PORPLLSR_DDR_RATIO)
+			>> MPC85xx_PORPLLSR_DDR_RATIO_SHIFT;
+		if (ddr_ratio != 0x7)
+			sysInfo->freqDDRBus = ddr_ratio * CONFIG_DDR_CLK_FREQ;
+	}
+#endif
+
+#if defined(CONFIG_FSL_LBC)
+#if defined(CONFIG_SYS_LBC_LCRR)
+	/* We will program LCRR to this value later */
+	lcrr_div = CONFIG_SYS_LBC_LCRR & LCRR_CLKDIV;
+#else
+	lcrr_div = in_be32(&(LBC_BASE_ADDR)->lcrr) & LCRR_CLKDIV;
+#endif
+	if (lcrr_div == 2 || lcrr_div == 4 || lcrr_div == 8) {
+#if defined(CONFIG_FSL_CORENET)
+		/* If this is corenet based SoC, bit-representation
+		 * for four times the clock divider values.
+		 */
+		lcrr_div *= 4;
+#elif !defined(CONFIG_MPC8540) && !defined(CONFIG_MPC8541) && \
+    !defined(CONFIG_MPC8555) && !defined(CONFIG_MPC8560)
+		/*
+		 * Yes, the entire PQ38 family use the same
+		 * bit-representation for twice the clock divider values.
+		 */
+		lcrr_div *= 2;
+#endif
+		sysInfo->freqLocalBus = sysInfo->freqSystemBus / lcrr_div;
+	} else {
+		/* In case anyone cares what the unknown value is */
+		sysInfo->freqLocalBus = lcrr_div;
+	}
+#endif
+}
+
+
+int get_clocks (void)
+{
+	sys_info_t sys_info;
+#ifdef CONFIG_MPC8544
+	volatile ccsr_gur_t *gur = (void *) CONFIG_SYS_MPC85xx_GUTS_ADDR;
+#endif
+	get_sys_info (&sys_info);
+
+	gd->cpu_clk = sys_info.freqProcessor[0];
+	gd->bus_clk = sys_info.freqSystemBus;
+	gd->mem_clk = sys_info.freqDDRBus;
+	gd->lbc_clk = sys_info.freqLocalBus;
+
+#ifdef CONFIG_QE
+	gd->qe_clk = sys_info.freqQE;
+	gd->brg_clk = gd->qe_clk / 2;
+#endif
+	/*
+	 * The base clock for I2C depends on the actual SOC.  Unfortunately,
+	 * there is no pattern that can be used to determine the frequency, so
+	 * the only choice is to look up the actual SOC number and use the value
+	 * for that SOC. This information is taken from application note
+	 * AN2919.
+	 */
+#if defined(CONFIG_MPC8540) || defined(CONFIG_MPC8541) || \
+	defined(CONFIG_MPC8560) || defined(CONFIG_MPC8555)
+	gd->i2c1_clk = sys_info.freqSystemBus;
+#elif defined(CONFIG_MPC8544)
+	/*
+	 * On the 8544, the I2C clock is the same as the SEC clock.  This can be
+	 * either CCB/2 or CCB/3, depending on the value of cfg_sec_freq. See
+	 * 4.4.3.3 of the 8544 RM.  Note that this might actually work for all
+	 * 85xx, but only the 8544 has cfg_sec_freq, so it's unknown if the
+	 * PORDEVSR2_SEC_CFG bit is 0 on all 85xx boards that are not an 8544.
+	 */
+	if (gur->pordevsr2 & MPC85xx_PORDEVSR2_SEC_CFG)
+		gd->i2c1_clk = sys_info.freqSystemBus / 3;
+	else
+		gd->i2c1_clk = sys_info.freqSystemBus / 2;
+#else
+	/* Most 85xx SOCs use CCB/2, so this is the default behavior. */
+	gd->i2c1_clk = sys_info.freqSystemBus / 2;
+#endif
+	gd->i2c2_clk = gd->i2c1_clk;
+
+#if defined(CONFIG_FSL_ESDHC)
+#ifdef CONFIG_MPC8569
+	gd->sdhc_clk = gd->bus_clk;
+#else
+	gd->sdhc_clk = gd->bus_clk / 2;
+#endif
+#endif /* defined(CONFIG_FSL_ESDHC) */
+
+#if defined(CONFIG_CPM2)
+	gd->vco_out = 2*sys_info.freqSystemBus;
+	gd->cpm_clk = gd->vco_out / 2;
+	gd->scc_clk = gd->vco_out / 4;
+	gd->brg_clk = gd->vco_out / (1 << (2 * (dfbrg + 1)));
+#endif
+
+	if (gd->cpu_clk != 0)
+		return 0;
+	else 
+		return 1;
+}
+
+
+/********************************************
+ * get_bus_freq
+ * return system bus freq in Hz
+ *********************************************/
+unsigned long get_bus_freq (ulong dummy)
+{
+	sys_info_t sys_info;
+
+	get_sys_info (&sys_info);
+
+	return sys_info.freqSystemBus;
+}
+
+/********************************************
+ * get_ddr_freq
+ * return ddr bus freq in Hz
+ *********************************************/
+unsigned long get_ddr_freq (ulong dummy)
+{
+	sys_info_t sys_info;
+
+	get_sys_info (&sys_info);
+
+	return sys_info.freqDDRBus;
+}
+
+/********************************************
+ * get_i2c_freq
+ * return i2c bus freq in Hz
+ * Assume all I2C bus have the same frequency
+ *********************************************/
+unsigned long get_i2c_freq (ulong dummy)
+{
+	sys_info_t sys_info;
+	volatile ccsr_gur_t *gur = (void *) CONFIG_SYS_MPC85xx_GUTS_ADDR;
+
+
+	get_sys_info (&sys_info);
+
+	if (gur->pordevsr2 & MPC85xx_PORDEVSR2_SEC_CFG)
+		return sys_info.freqSystemBus / 3;
+	else
+		return sys_info.freqSystemBus / 2;
+}
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/start.S b/arch/ppc/mach-mpc8xxx/mpc85xx/start.S
new file mode 100644
index 0000000..0bdda21
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/start.S
@@ -0,0 +1,1236 @@
+/*
+ * Copyright 2004, 2007-2011 Freescale Semiconductor, Inc.
+ * Copyright (C) 2003  Motorola,Inc.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/* U-Boot Startup Code for Motorola 85xx PowerPC based Embedded Boards
+ *
+ * The processor starts at 0xfffffffc and the code is first executed in the
+ * last 4K page(0xfffff000-0xffffffff) in flash/rom.
+ *
+ */
+
+#include <config.h>
+#include <asm/config.h>
+#include <mach/mpc85xx.h>
+
+#define _LINUX_CONFIG_H 1	/* avoid reading Linux autoconf.h file	*/
+
+#include <asm/processor.h>
+#include <mach/ppc_asm.tmpl>
+#include <asm/ppc_defs.h>
+
+#include <asm/cache.h>
+#include <asm/mmu.h>
+
+#ifndef	 CONFIG_IDENT_STRING
+#define	 CONFIG_IDENT_STRING ""
+#endif
+
+#undef	MSR_KERNEL
+#define MSR_KERNEL ( MSR_ME )	/* Machine Check */
+
+/*
+ * Set up GOT: Global Offset Table
+ *
+ * Use r12 to access the GOT
+ */
+	START_GOT
+	GOT_ENTRY(_GOT2_TABLE_)
+	GOT_ENTRY(_FIXUP_TABLE_)
+
+#ifndef CONFIG_NAND_SPL
+	GOT_ENTRY(_start)
+	GOT_ENTRY(_start_of_vectors)
+	GOT_ENTRY(_end_of_vectors)
+	GOT_ENTRY(transfer_to_handler)
+#endif
+
+	GOT_ENTRY(__init_end)
+	GOT_ENTRY(_end)
+	GOT_ENTRY(__bss_start)
+	END_GOT
+
+/*
+ * e500 Startup -- after reset only the last 4KB of the effective
+ * address space is mapped in the MMU L2 TLB1 Entry0. The .bootpg
+ * section is located at THIS LAST page and basically does three
+ * things: clear some registers, set up exception tables and
+ * add more TLB entries for 'larger spaces'(e.g. the boot rom) to
+ * continue the boot procedure.
+
+ * Once the boot rom is mapped by TLB entries we can proceed
+ * with normal startup.
+ *
+ */
+
+	.section .bootpg,"ax"
+	.globl _start_e500
+
+_start_e500:
+
+/* clear registers/arrays not reset by hardware */
+
+	/* L1 */
+	li	r0,2
+	mtspr	L1CSR0,r0	/* invalidate d-cache */
+	mtspr	L1CSR1,r0	/* invalidate i-cache */
+
+	mfspr	r1,DBSR
+	mtspr	DBSR,r1		/* Clear all valid bits */
+
+	/*
+	 *	Enable L1 Caches early
+	 *
+	 */
+
+#if defined(CONFIG_E500MC) && defined(CONFIG_SYS_CACHE_STASHING)
+	/* set stash id to (coreID) * 2 + 32 + L1 CT (0) */
+	li	r2,(32 + 0)
+	mtspr	L1CSR2,r2
+#endif
+
+	/* Enable/invalidate the I-Cache */
+	lis	r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@h
+	ori	r2,r2,(L1CSR1_ICFI|L1CSR1_ICLFR)@l
+	mtspr	SPRN_L1CSR1,r2
+1:
+	mfspr	r3,SPRN_L1CSR1
+	and.	r1,r3,r2
+	bne	1b
+
+	lis	r3,(L1CSR1_CPE|L1CSR1_ICE)@h
+	ori	r3,r3,(L1CSR1_CPE|L1CSR1_ICE)@l
+	mtspr	SPRN_L1CSR1,r3
+	isync
+2:
+	mfspr	r3,SPRN_L1CSR1
+	andi.	r1,r3,L1CSR1_ICE@l
+	beq	2b
+
+	/* Enable/invalidate the D-Cache */
+	lis	r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@h
+	ori	r2,r2,(L1CSR0_DCFI|L1CSR0_DCLFR)@l
+	mtspr	SPRN_L1CSR0,r2
+1:
+	mfspr	r3,SPRN_L1CSR0
+	and.	r1,r3,r2
+	bne	1b
+
+	lis	r3,(L1CSR0_CPE|L1CSR0_DCE)@h
+	ori	r3,r3,(L1CSR0_CPE|L1CSR0_DCE)@l
+	mtspr	SPRN_L1CSR0,r3
+	isync
+2:
+	mfspr	r3,SPRN_L1CSR0
+	andi.	r1,r3,L1CSR0_DCE@l
+	beq	2b
+
+	/* Setup interrupt vectors */
+	lis	r1,TEXT_BASE@h
+	mtspr	IVPR,r1
+
+	li	r1,0x0100
+	mtspr	IVOR0,r1	/* 0: Critical input */
+	li	r1,0x0200
+	mtspr	IVOR1,r1	/* 1: Machine check */
+	li	r1,0x0300
+	mtspr	IVOR2,r1	/* 2: Data storage */
+	li	r1,0x0400
+	mtspr	IVOR3,r1	/* 3: Instruction storage */
+	li	r1,0x0500
+	mtspr	IVOR4,r1	/* 4: External interrupt */
+	li	r1,0x0600
+	mtspr	IVOR5,r1	/* 5: Alignment */
+	li	r1,0x0700
+	mtspr	IVOR6,r1	/* 6: Program check */
+	li	r1,0x0800
+	mtspr	IVOR7,r1	/* 7: floating point unavailable */
+	li	r1,0x0900
+	mtspr	IVOR8,r1	/* 8: System call */
+	/* 9: Auxiliary processor unavailable(unsupported) */
+	li	r1,0x0a00
+	mtspr	IVOR10,r1	/* 10: Decrementer */
+	li	r1,0x0b00
+	mtspr	IVOR11,r1	/* 11: Interval timer */
+	li	r1,0x0c00
+	mtspr	IVOR12,r1	/* 12: Watchdog timer */
+	li	r1,0x0d00
+	mtspr	IVOR13,r1	/* 13: Data TLB error */
+	li	r1,0x0e00
+	mtspr	IVOR14,r1	/* 14: Instruction TLB error */
+	li	r1,0x0f00
+	mtspr	IVOR15,r1	/* 15: Debug */
+
+	/* Clear and set up some registers. */
+	li      r0,0x0000
+	lis	r1,0xffff
+	mtspr	DEC,r0			/* prevent dec exceptions */
+	mttbl	r0			/* prevent fit & wdt exceptions */
+	mttbu	r0
+	mtspr	TSR,r1			/* clear all timer exception status */
+	mtspr	TCR,r0			/* disable all */
+	mtspr	ESR,r0			/* clear exception syndrome register */
+	mtspr	MCSR,r0			/* machine check syndrome register */
+	mtxer	r0			/* clear integer exception register */
+
+#ifdef CONFIG_SYS_BOOK3E_HV
+	mtspr	MAS8,r0			/* make sure MAS8 is clear */
+#endif
+
+	/* Enable Time Base and Select Time Base Clock */
+	lis	r0,HID0_EMCP@h		/* Enable machine check */
+#if defined(CONFIG_ENABLE_36BIT_PHYS)
+	ori	r0,r0,HID0_ENMAS7@l	/* Enable MAS7 */
+#endif
+#ifndef CONFIG_E500MC
+	ori	r0,r0,HID0_TBEN@l	/* Enable Timebase */
+#endif
+	mtspr	HID0,r0
+
+#ifndef CONFIG_E500MC
+	li	r0,(HID1_ASTME|HID1_ABE)@l	/* Addr streaming & broadcast */
+	mfspr	r3,PVR
+	andi.	r3,r3, 0xff
+	cmpwi	r3,0x50@l	/* if we are rev 5.0 or greater set MBDD */
+	blt 1f
+	/* Set MBDD bit also */
+	ori r0, r0, HID1_MBDD@l
+1:
+	mtspr	HID1,r0
+#endif
+
+	/* Enable Branch Prediction */
+#if defined(CONFIG_BTB)
+	lis	r0,BUCSR_ENABLE@h
+	ori	r0,r0,BUCSR_ENABLE@l
+	mtspr	SPRN_BUCSR,r0
+#endif
+
+#if defined(CONFIG_SYS_INIT_DBCR)
+	lis	r1,0xffff
+	ori	r1,r1,0xffff
+	mtspr	DBSR,r1			/* Clear all status bits */
+	lis	r0,CONFIG_SYS_INIT_DBCR@h	/* DBCR0[IDM] must be set */
+	ori	r0,r0,CONFIG_SYS_INIT_DBCR@l
+	mtspr	DBCR0,r0
+#endif
+
+#ifdef CONFIG_MPC8569
+#define CONFIG_SYS_LBC_ADDR (CONFIG_SYS_CCSRBAR_DEFAULT + 0x5000)
+#define CONFIG_SYS_LBCR_ADDR (CONFIG_SYS_LBC_ADDR + 0xd0)
+
+	/* MPC8569 Rev.0 silcon needs to set bit 13 of LBCR to allow elBC to
+	 * use address space which is more than 12bits, and it must be done in
+	 * the 4K boot page. So we set this bit here.
+	 */
+
+	/* create a temp mapping TLB0[0] for LBCR  */
+	lis     r6,FSL_BOOKE_MAS0(0, 0, 0)@h
+	ori     r6,r6,FSL_BOOKE_MAS0(0, 0, 0)@l
+
+	lis     r7,FSL_BOOKE_MAS1(1, 0, 0, 0, BOOKE_PAGESZ_4K)@h
+	ori     r7,r7,FSL_BOOKE_MAS1(1, 0, 0, 0, BOOKE_PAGESZ_4K)@l
+
+	lis     r8,FSL_BOOKE_MAS2(CONFIG_SYS_LBC_ADDR, MAS2_I|MAS2_G)@h
+	ori     r8,r8,FSL_BOOKE_MAS2(CONFIG_SYS_LBC_ADDR, MAS2_I|MAS2_G)@l
+
+	lis     r9,FSL_BOOKE_MAS3(CONFIG_SYS_LBC_ADDR, 0,
+						(MAS3_SX|MAS3_SW|MAS3_SR))@h
+	ori     r9,r9,FSL_BOOKE_MAS3(CONFIG_SYS_LBC_ADDR, 0,
+						(MAS3_SX|MAS3_SW|MAS3_SR))@l
+
+	mtspr   MAS0,r6
+	mtspr   MAS1,r7
+	mtspr   MAS2,r8
+	mtspr   MAS3,r9
+	isync
+	msync
+	tlbwe
+
+	/* Set LBCR register */
+	lis     r4,CONFIG_SYS_LBCR_ADDR@h
+	ori     r4,r4,CONFIG_SYS_LBCR_ADDR@l
+
+	lis     r5,CONFIG_SYS_LBC_LBCR@h
+	ori     r5,r5,CONFIG_SYS_LBC_LBCR@l
+	stw     r5,0(r4)
+	isync
+
+	/* invalidate this temp TLB */
+	lis	r4,CONFIG_SYS_LBC_ADDR@h
+	ori	r4,r4,CONFIG_SYS_LBC_ADDR@l
+	tlbivax	0,r4
+	isync
+
+#endif /* CONFIG_MPC8569 */
+
+	lis     r6,FSL_BOOKE_MAS0(1, 15, 0)@h
+	ori     r6,r6,FSL_BOOKE_MAS0(1, 15, 0)@l
+
+#ifndef CONFIG_SYS_RAMBOOT
+	/* create a temp mapping in AS=1 to the 4M boot window */
+	lis     r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_4M)@h
+	ori     r7,r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_4M)@l
+
+	lis     r8,FSL_BOOKE_MAS2(TEXT_BASE & 0xffc00000, (MAS2_I|MAS2_G))@h
+	ori     r8,r8,FSL_BOOKE_MAS2(TEXT_BASE & 0xffc00000, (MAS2_I|MAS2_G))@l
+
+	/* The 85xx has the default boot window 0xff800000 - 0xffffffff */
+	lis     r9,FSL_BOOKE_MAS3(0xffc00000, 0, (MAS3_SX|MAS3_SW|MAS3_SR))@h
+	ori     r9,r9,FSL_BOOKE_MAS3(0xffc00000, 0, (MAS3_SX|MAS3_SW|MAS3_SR))@l
+#else
+	/*
+	 * create a temp mapping in AS=1 to the 1M TEXT_BASE space, the main
+	 * image has been relocated to TEXT_BASE on the second stage.
+	 */
+	lis     r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_1M)@h
+	ori     r7,r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_1M)@l
+
+	lis     r8,FSL_BOOKE_MAS2(TEXT_BASE, (MAS2_I|MAS2_G))@h
+	ori     r8,r8,FSL_BOOKE_MAS2(TEXT_BASE, (MAS2_I|MAS2_G))@l
+
+	lis     r9,FSL_BOOKE_MAS3(TEXT_BASE, 0, (MAS3_SX|MAS3_SW|MAS3_SR))@h
+	ori     r9,r9,FSL_BOOKE_MAS3(TEXT_BASE, 0, (MAS3_SX|MAS3_SW|MAS3_SR))@l
+#endif
+
+	mtspr   MAS0,r6
+	mtspr   MAS1,r7
+	mtspr   MAS2,r8
+	mtspr   MAS3,r9
+	isync
+	msync
+	tlbwe
+
+	/* create a temp mapping in AS=1 to the stack */
+	lis     r6,FSL_BOOKE_MAS0(1, 14, 0)@h
+	ori     r6,r6,FSL_BOOKE_MAS0(1, 14, 0)@l
+
+	lis     r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_16K)@h
+	ori     r7,r7,FSL_BOOKE_MAS1(1, 1, 0, 1, BOOKE_PAGESZ_16K)@l
+
+	lis     r8,FSL_BOOKE_MAS2(CFG_INIT_RAM_ADDR, 0)@h
+	ori     r8,r8,FSL_BOOKE_MAS2(CFG_INIT_RAM_ADDR, 0)@l
+
+#if defined(CFG_INIT_RAM_ADDR_PHYS_LOW) && \
+    defined(CFG_INIT_RAM_ADDR_PHYS_HIGH)
+	lis     r9,FSL_BOOKE_MAS3(CFG_INIT_RAM_ADDR_PHYS_LOW, 0,
+				(MAS3_SX|MAS3_SW|MAS3_SR))@h
+	ori     r9,r9,FSL_BOOKE_MAS3(CFG_INIT_RAM_ADDR_PHYS_LOW, 0,
+				(MAS3_SX|MAS3_SW|MAS3_SR))@l
+	li      r10,CFG_INIT_RAM_ADDR_PHYS_HIGH
+	mtspr	MAS7,r10
+#else
+	lis     r9,FSL_BOOKE_MAS3(CFG_INIT_RAM_ADDR, 0, (MAS3_SX|MAS3_SW|MAS3_SR))@h
+	ori     r9,r9,FSL_BOOKE_MAS3(CFG_INIT_RAM_ADDR, 0, (MAS3_SX|MAS3_SW|MAS3_SR))@l
+#endif
+
+	mtspr   MAS0,r6
+	mtspr   MAS1,r7
+	mtspr   MAS2,r8
+	mtspr   MAS3,r9
+	isync
+	msync
+	tlbwe
+
+	lis	r6,MSR_IS|MSR_DS@h
+	ori	r6,r6,MSR_IS|MSR_DS@l
+	lis	r7,switch_as@h
+	ori	r7,r7,switch_as@l
+
+	mtspr	SPRN_SRR0,r7
+	mtspr	SPRN_SRR1,r6
+	rfi
+
+switch_as:
+/* L1 DCache is used for initial RAM */
+
+	/* Allocate Initial RAM in data cache.
+	 */
+	lis	r3,CFG_INIT_RAM_ADDR@h
+	ori	r3,r3,CFG_INIT_RAM_ADDR@l
+	mfspr	r2, L1CFG0
+	andi.	r2, r2, 0x1ff
+	/* cache size * 1024 / (2 * L1 line size) */
+	slwi	r2, r2, (10 - 1 - L1_CACHE_SHIFT)
+	mtctr	r2
+	li	r0,0
+1:
+	dcbz	r0,r3
+	dcbtls	0,r0,r3
+	addi	r3,r3,CONFIG_SYS_CACHELINE_SIZE
+	bdnz	1b
+
+	/* Jump out the last 4K page and continue to 'normal' start */
+#ifdef CONFIG_SYS_RAMBOOT
+	b	_start_cont
+#else
+	/* Calculate absolute address in FLASH and jump there		*/
+	/*--------------------------------------------------------------*/
+	lis	r3,TEXT_BASE@h
+	ori	r3,r3,TEXT_BASE@l
+	addi	r3,r3,_start_cont - _start + _START_OFFSET
+	mtlr	r3
+	blr
+#endif
+
+	.text
+	.globl	_start
+_start:
+	.long	0x62626F78		/* Barebox Magic Number */
+
+	.align	4
+	.globl	_start_cont
+_start_cont:
+	/* Setup the stack in initial RAM,could be L2-as-SRAM or L1 dcache*/
+	lis	r1,CFG_INIT_RAM_ADDR@h
+	ori	r1,r1,CONFIG_SYS_INIT_SP_OFFSET@l
+
+	li	r0,0
+	stwu	r0,-4(r1)
+	stwu	r0,-4(r1)		/* Terminate call chain */
+
+	stwu	r1,-8(r1)		/* Save back chain and move SP */
+	lis	r0,RESET_VECTOR@h	/* Address of reset vector */
+	ori	r0,r0,RESET_VECTOR@l
+	stwu	r1,-8(r1)		/* Save back chain and move SP */
+	stw	r0,+12(r1)		/* Save return addr (underflow vect) */
+
+	GET_GOT
+	bl	cpu_init_early_f
+
+	/* switch back to AS = 0 */
+	lis	r3,(MSR_CE|MSR_ME|MSR_DE)@h
+	ori	r3,r3,(MSR_CE|MSR_ME|MSR_DE)@l
+	mtmsr	r3
+	isync
+
+	bl	cpu_init_f
+	bl  initdram
+	b   relocate_code
+	isync
+
+	/* NOTREACHED - board_init_f() does not return */
+
+#ifndef CONFIG_NAND_SPL
+	. = EXC_OFF_SYS_RESET
+	.globl	_start_of_vectors
+_start_of_vectors:
+
+/* Critical input. */
+	CRIT_EXCEPTION(0x0100, CriticalInput, CritcalInputException)
+
+/* Machine check */
+	MCK_EXCEPTION(0x200, MachineCheck, MachineCheckException)
+
+/* Data Storage exception. */
+	STD_EXCEPTION(0x0300, DataStorage, UnknownException)
+
+/* Instruction Storage exception. */
+	STD_EXCEPTION(0x0400, InstStorage, UnknownException)
+
+/* External Interrupt exception. */
+#ifdef CONFIG_USE_IRQ
+	STD_EXCEPTION(0x0500, ExtInterrupt, ExtIntException)
+#endif
+
+/* Alignment exception. */
+	. = 0x0600
+Alignment:
+	EXCEPTION_PROLOG(SRR0, SRR1)
+	mfspr	r4,DAR
+	stw	r4,_DAR(r21)
+	mfspr	r5,DSISR
+	stw	r5,_DSISR(r21)
+	addi	r3,r1,STACK_FRAME_OVERHEAD
+	EXC_XFER_TEMPLATE(Alignment, AlignmentException, MSR_KERNEL, COPY_EE)
+
+/* Program check exception */
+	. = 0x0700
+ProgramCheck:
+	EXCEPTION_PROLOG(SRR0, SRR1)
+	addi	r3,r1,STACK_FRAME_OVERHEAD
+	EXC_XFER_TEMPLATE(ProgramCheck, ProgramCheckException,
+		MSR_KERNEL, COPY_EE)
+
+	/* No FPU on MPC85xx.  This exception is not supposed to happen.
+	*/
+	STD_EXCEPTION(0x0800, FPUnavailable, UnknownException)
+
+	. = 0x0900
+/*
+ * r0 - SYSCALL number
+ * r3-... arguments
+ */
+SystemCall:
+	addis	r11,r0,0	/* get functions table addr */
+	ori	r11,r11,0	/* Note: this code is patched in trap_init */
+	addis	r12,r0,0	/* get number of functions */
+	ori	r12,r12,0
+
+	cmplw	0,r0,r12
+	bge	1f
+
+	rlwinm	r0,r0,2,0,31	/* fn_addr = fn_tbl[r0] */
+	add	r11,r11,r0
+	lwz	r11,0(r11)
+
+	li	r20,0xd00-4	/* Get stack pointer */
+	lwz	r12,0(r20)
+	subi	r12,r12,12	/* Adjust stack pointer */
+	li	r0,0xc00+_end_back-SystemCall
+	cmplw	0,r0,r12	/* Check stack overflow */
+	bgt	1f
+	stw	r12,0(r20)
+
+	mflr	r0
+	stw	r0,0(r12)
+	mfspr	r0,SRR0
+	stw	r0,4(r12)
+	mfspr	r0,SRR1
+	stw	r0,8(r12)
+
+	li	r12,0xc00+_back-SystemCall
+	mtlr	r12
+	mtspr	SRR0,r11
+
+1:	SYNC
+	rfi
+_back:
+
+	mfmsr	r11			/* Disable interrupts */
+	li	r12,0
+	ori	r12,r12,MSR_EE
+	andc	r11,r11,r12
+	SYNC				/* Some chip revs need this... */
+	mtmsr	r11
+	SYNC
+
+	li	r12,0xd00-4		/* restore regs */
+	lwz	r12,0(r12)
+
+	lwz	r11,0(r12)
+	mtlr	r11
+	lwz	r11,4(r12)
+	mtspr	SRR0,r11
+	lwz	r11,8(r12)
+	mtspr	SRR1,r11
+
+	addi	r12,r12,12		/* Adjust stack pointer */
+	li	r20,0xd00-4
+	stw	r12,0(r20)
+
+	SYNC
+	rfi
+_end_back:
+
+#ifdef CONFIG_USE_IRQ
+	STD_EXCEPTION(0x0a00, Decrementer, timer_interrupt)
+#else
+	STD_EXCEPTION(0x0a00, Decrementer, UnknownException)
+#endif
+	STD_EXCEPTION(0x0b00, IntervalTimer, UnknownException)
+	STD_EXCEPTION(0x0c00, WatchdogTimer, UnknownException)
+
+	STD_EXCEPTION(0x0d00, DataTLBError, UnknownException)
+	STD_EXCEPTION(0x0e00, InstructionTLBError, UnknownException)
+
+	CRIT_EXCEPTION(0x0f00, DebugBreakpoint, DebugException )
+
+	.globl	_end_of_vectors
+_end_of_vectors:
+
+
+	. = . + (0x100 - ( . & 0xff ))	/* align for debug */
+
+/*
+ * This code finishes saving the registers to the exception frame
+ * and jumps to the appropriate handler for the exception.
+ * Register r21 is pointer into trap frame, r1 has new stack pointer.
+ */
+	.globl	transfer_to_handler
+transfer_to_handler:
+	stw	r22,_NIP(r21)
+	lis	r22,MSR_POW@h
+	andc	r23,r23,r22
+	stw	r23,_MSR(r21)
+	SAVE_GPR(7, r21)
+	SAVE_4GPRS(8, r21)
+	SAVE_8GPRS(12, r21)
+	SAVE_8GPRS(24, r21)
+
+	mflr	r23
+	andi.	r24,r23,0x3f00		/* get vector offset */
+	stw	r24,TRAP(r21)
+	li	r22,0
+	stw	r22,RESULT(r21)
+	mtspr	SPRG2,r22		/* r1 is now kernel sp */
+
+	lwz	r24,0(r23)		/* virtual address of handler */
+	lwz	r23,4(r23)		/* where to go when done */
+	mtspr	SRR0,r24
+	mtspr	SRR1,r20
+	mtlr	r23
+	SYNC
+	rfi				/* jump to handler, enable MMU */
+
+int_return:
+	mfmsr	r28		/* Disable interrupts */
+	li	r4,0
+	ori	r4,r4,MSR_EE
+	andc	r28,r28,r4
+	SYNC			/* Some chip revs need this... */
+	mtmsr	r28
+	SYNC
+	lwz	r2,_CTR(r1)
+	lwz	r0,_LINK(r1)
+	mtctr	r2
+	mtlr	r0
+	lwz	r2,_XER(r1)
+	lwz	r0,_CCR(r1)
+	mtspr	XER,r2
+	mtcrf	0xFF,r0
+	REST_10GPRS(3, r1)
+	REST_10GPRS(13, r1)
+	REST_8GPRS(23, r1)
+	REST_GPR(31, r1)
+	lwz	r2,_NIP(r1)	/* Restore environment */
+	lwz	r0,_MSR(r1)
+	mtspr	SRR0,r2
+	mtspr	SRR1,r0
+	lwz	r0,GPR0(r1)
+	lwz	r2,GPR2(r1)
+	lwz	r1,GPR1(r1)
+	SYNC
+	rfi
+
+crit_return:
+	mfmsr	r28		/* Disable interrupts */
+	li	r4,0
+	ori	r4,r4,MSR_EE
+	andc	r28,r28,r4
+	SYNC			/* Some chip revs need this... */
+	mtmsr	r28
+	SYNC
+	lwz	r2,_CTR(r1)
+	lwz	r0,_LINK(r1)
+	mtctr	r2
+	mtlr	r0
+	lwz	r2,_XER(r1)
+	lwz	r0,_CCR(r1)
+	mtspr	XER,r2
+	mtcrf	0xFF,r0
+	REST_10GPRS(3, r1)
+	REST_10GPRS(13, r1)
+	REST_8GPRS(23, r1)
+	REST_GPR(31, r1)
+	lwz	r2,_NIP(r1)	/* Restore environment */
+	lwz	r0,_MSR(r1)
+	mtspr	SPRN_CSRR0,r2
+	mtspr	SPRN_CSRR1,r0
+	lwz	r0,GPR0(r1)
+	lwz	r2,GPR2(r1)
+	lwz	r1,GPR1(r1)
+	SYNC
+	rfci
+
+mck_return:
+	mfmsr	r28		/* Disable interrupts */
+	li	r4,0
+	ori	r4,r4,MSR_EE
+	andc	r28,r28,r4
+	SYNC			/* Some chip revs need this... */
+	mtmsr	r28
+	SYNC
+	lwz	r2,_CTR(r1)
+	lwz	r0,_LINK(r1)
+	mtctr	r2
+	mtlr	r0
+	lwz	r2,_XER(r1)
+	lwz	r0,_CCR(r1)
+	mtspr	XER,r2
+	mtcrf	0xFF,r0
+	REST_10GPRS(3, r1)
+	REST_10GPRS(13, r1)
+	REST_8GPRS(23, r1)
+	REST_GPR(31, r1)
+	lwz	r2,_NIP(r1)	/* Restore environment */
+	lwz	r0,_MSR(r1)
+	mtspr	SPRN_MCSRR0,r2
+	mtspr	SPRN_MCSRR1,r0
+	lwz	r0,GPR0(r1)
+	lwz	r2,GPR2(r1)
+	lwz	r1,GPR1(r1)
+	SYNC
+	rfmci
+
+/* Cache functions.
+*/
+.globl invalidate_icache
+invalidate_icache:
+	mfspr	r0,L1CSR1
+	ori	r0,r0,L1CSR1_ICFI
+	msync
+	isync
+	mtspr	L1CSR1,r0
+	isync
+	blr				/* entire I cache */
+
+.globl invalidate_dcache
+invalidate_dcache:
+	mfspr	r0,L1CSR0
+	ori	r0,r0,L1CSR0_DCFI
+	msync
+	isync
+	mtspr	L1CSR0,r0
+	isync
+	blr
+
+	.globl	icache_enable
+icache_enable:
+	mflr	r8
+	bl	invalidate_icache
+	mtlr	r8
+	isync
+	mfspr	r4,L1CSR1
+	ori	r4,r4,0x0001
+	oris	r4,r4,0x0001
+	mtspr	L1CSR1,r4
+	isync
+	blr
+
+	.globl	icache_disable
+icache_disable:
+	mfspr	r0,L1CSR1
+	lis	r3,0
+	ori	r3,r3,L1CSR1_ICE
+	andc	r0,r0,r3
+	mtspr	L1CSR1,r0
+	isync
+	blr
+
+	.globl	icache_status
+icache_status:
+	mfspr	r3,L1CSR1
+	andi.	r3,r3,L1CSR1_ICE
+	blr
+
+	.globl	dcache_enable
+dcache_enable:
+	mflr	r8
+	bl	invalidate_dcache
+	mtlr	r8
+	isync
+	mfspr	r0,L1CSR0
+	ori	r0,r0,0x0001
+	oris	r0,r0,0x0001
+	msync
+	isync
+	mtspr	L1CSR0,r0
+	isync
+	blr
+
+	.globl	dcache_disable
+dcache_disable:
+	mfspr	r3,L1CSR0
+	lis	r4,0
+	ori	r4,r4,L1CSR0_DCE
+	andc	r3,r3,r4
+	mtspr	L1CSR0,r3
+	isync
+	blr
+
+	.globl	dcache_status
+dcache_status:
+	mfspr	r3,L1CSR0
+	andi.	r3,r3,L1CSR0_DCE
+	blr
+
+	.globl get_pir
+get_pir:
+	mfspr	r3,PIR
+	blr
+
+	.globl get_pvr
+get_pvr:
+	mfspr	r3,PVR
+	blr
+
+	.globl get_svr
+get_svr:
+	mfspr	r3,SVR
+	blr
+
+	.globl wr_tcr
+wr_tcr:
+	mtspr	TCR,r3
+	blr
+
+/*------------------------------------------------------------------------------- */
+/* Function:	 in8 */
+/* Description:	 Input 8 bits */
+/*------------------------------------------------------------------------------- */
+	.globl	in8
+in8:
+	lbz	r3,0x0000(r3)
+	blr
+
+/*------------------------------------------------------------------------------- */
+/* Function:	 out8 */
+/* Description:	 Output 8 bits */
+/*------------------------------------------------------------------------------- */
+	.globl	out8
+out8:
+	stb	r4,0x0000(r3)
+	sync
+	blr
+
+/*------------------------------------------------------------------------------- */
+/* Function:	 out16 */
+/* Description:	 Output 16 bits */
+/*------------------------------------------------------------------------------- */
+	.globl	out16
+out16:
+	sth	r4,0x0000(r3)
+	sync
+	blr
+
+/*------------------------------------------------------------------------------- */
+/* Function:	 out16r */
+/* Description:	 Byte reverse and output 16 bits */
+/*------------------------------------------------------------------------------- */
+	.globl	out16r
+out16r:
+	sthbrx	r4,r0,r3
+	sync
+	blr
+
+/*------------------------------------------------------------------------------- */
+/* Function:	 out32 */
+/* Description:	 Output 32 bits */
+/*------------------------------------------------------------------------------- */
+	.globl	out32
+out32:
+	stw	r4,0x0000(r3)
+	sync
+	blr
+
+/*------------------------------------------------------------------------------- */
+/* Function:	 out32r */
+/* Description:	 Byte reverse and output 32 bits */
+/*------------------------------------------------------------------------------- */
+	.globl	out32r
+out32r:
+	stwbrx	r4,r0,r3
+	sync
+	blr
+
+/*------------------------------------------------------------------------------- */
+/* Function:	 in16 */
+/* Description:	 Input 16 bits */
+/*------------------------------------------------------------------------------- */
+	.globl	in16
+in16:
+	lhz	r3,0x0000(r3)
+	blr
+
+/*------------------------------------------------------------------------------- */
+/* Function:	 in16r */
+/* Description:	 Input 16 bits and byte reverse */
+/*------------------------------------------------------------------------------- */
+	.globl	in16r
+in16r:
+	lhbrx	r3,r0,r3
+	blr
+
+/*------------------------------------------------------------------------------- */
+/* Function:	 in32 */
+/* Description:	 Input 32 bits */
+/*------------------------------------------------------------------------------- */
+	.globl	in32
+in32:
+	lwz	3,0x0000(3)
+	blr
+
+/*------------------------------------------------------------------------------- */
+/* Function:	 in32r */
+/* Description:	 Input 32 bits and byte reverse */
+/*------------------------------------------------------------------------------- */
+	.globl	in32r
+in32r:
+	lwbrx	r3,r0,r3
+	blr
+#endif  /* !CONFIG_NAND_SPL */
+
+/*------------------------------------------------------------------------------*/
+
+/*
+ * void write_tlb(mas0, mas1, mas2, mas3, mas7)
+ */
+	.globl	write_tlb
+write_tlb:
+	mtspr	MAS0,r3
+	mtspr	MAS1,r4
+	mtspr	MAS2,r5
+	mtspr	MAS3,r6
+#ifdef CONFIG_ENABLE_36BIT_PHYS
+	mtspr	MAS7,r7
+#endif
+	li	r3,0
+#ifdef CONFIG_SYS_BOOK3E_HV
+	mtspr	MAS8,r3
+#endif
+	isync
+	tlbwe
+	msync
+	isync
+	blr
+
+/*
+ * void relocate_code (end of ram)
+ *
+ * This "function" does not return, instead it continues in RAM
+ * after relocating the monitor code.
+ *
+ * r3 = dest
+ * r4 = src
+ * r5 = length in bytes
+ * r6 = cachelinesize
+ */
+	.globl	relocate_code
+relocate_code:
+	mr r9, r3		/* Save end of RAM 				*/
+
+	lis r10, (_end - _start)@h      /* Size             */
+	ori r10, r10, (_end - _start)@l
+	sub r3,  r3, r10
+
+	/* 64KB aligned */
+	lis r10, 0xffff0000@h
+	ori r10, r10, 0xffff0000@l
+	and r3, r3, r10
+
+	mr	r1, r3			/* Set new stack just below barebox code */
+	mr  r10, r3    		/* Save copy of Destination Address */
+
+	bl calc_source
+calc_source:
+	mfspr	r4, LR	/* r4 = address in memory (flash, RAM) */
+	subi	r4, r4, (calc_source - _start)
+
+	GET_GOT
+	lis r5, __init_size@h
+	ori r5, r5, __init_size@l
+
+	li	r6,CONFIG_SYS_CACHELINE_SIZE		/* Cache Line Size	*/
+
+	/*
+	 * Fix GOT pointer:
+	 *
+	 * New GOT-PTR = (old GOT-PTR - TEXT_BASE) + Destination Address
+	 *
+	 * Offset:
+	 */
+	sub	r15,r10,r4
+
+	/* First our own GOT */
+	add	r12,r12,r15
+	/*add	r14,r14,r15 */
+	/* then the one used by the C code */
+	add	r30,r30,r15
+
+	/*
+	 * Now relocate code
+	 */
+
+	cmplw	cr1,r3,r4
+	addi	r0,r5,3
+	srwi.	r0,r0,2
+	beq	cr1,4f		/* In place copy is not necessary	*/
+	beq	7f		/* Protect against 0 count		*/
+	mtctr	r0
+	bge	cr1,2f
+
+	la	r8,-4(r4)
+	la	r7,-4(r3)
+1:	lwzu	r0,4(r8)
+	stwu	r0,4(r7)
+	bdnz	1b
+	b	4f
+
+2:	slwi	r0,r0,2
+	add	r8,r4,r0
+	add	r7,r3,r0
+3:	lwzu	r0,-4(r8)
+	stwu	r0,-4(r7)
+	bdnz	3b
+
+/*
+ * Now flush the cache: note that we must start from a cache aligned
+ * address. Otherwise we might miss one cache line.
+ */
+4:	cmpwi	r6,0
+	add	r5,r3,r5
+	beq	7f		/* Always flush prefetch queue in any case */
+	subi	r0,r6,1
+	andc	r3,r3,r0
+	mr	r4,r3
+5:	dcbst	0,r4
+	add	r4,r4,r6
+	cmplw	r4,r5
+	blt	5b
+	sync			/* Wait for all dcbst to complete on bus */
+	mr	r4,r3
+6:	icbi	0,r4
+	add	r4,r4,r6
+	cmplw	r4,r5
+	blt	6b
+7:	sync			/* Wait for all icbi to complete on bus */
+	isync
+
+	/*
+	 * Re-point the IVPR at RAM
+	 */
+	mtspr	IVPR,r10
+
+/*
+ * We are done. Do not return, instead branch to second part of board
+ * initialization, now running from RAM.
+ */
+
+	addi	r0,r10,in_ram - _start + _START_OFFSET
+	mtlr	r0
+	blr				/* NEVER RETURNS! */
+
+	.globl	in_ram
+in_ram:
+
+	/*
+	 * Relocation Function, r12 point to got2+0x8000
+	 *
+	 * Adjust got2 pointers, no need to check for 0, this code
+	 * already puts a few entries in the table.
+	 */
+	li	r0,__got2_entries@sectoff@l
+	la	r3,GOT(_GOT2_TABLE_)
+	lwz	r11,GOT(_GOT2_TABLE_)
+	mtctr	r0
+	sub	r11,r3,r11
+	addi	r3,r3,-4
+1:	lwzu	r0,4(r3)
+	cmpwi	r0,0
+	beq-	2f
+	add	r0,r0,r11
+	stw	r0,0(r3)
+2:	bdnz	1b
+
+	/*
+	 * Now adjust the fixups and the pointers to the fixups
+	 * in case we need to move ourselves again.
+	 */
+	li	r0,__fixup_entries@sectoff@l
+	lwz	r3,GOT(_FIXUP_TABLE_)
+	cmpwi	r0,0
+	mtctr	r0
+	addi	r3,r3,-4
+	beq	4f
+3:	lwzu	r4,4(r3)
+	lwzux	r0,r4,r11
+	cmpwi	r0,0
+	add	r0,r0,r11
+	stw	r4,0(r3)
+	beq-	5f
+	stw	r0,0(r4)
+5:	bdnz	3b
+4:
+clear_bss:
+	/*
+	 * Now clear BSS segment
+	 */
+	lwz	r3,GOT(__bss_start)
+	lwz	r4,GOT(_end)
+
+	cmplw	0,r3,r4
+	beq	6f
+
+	li	r0,0
+5:
+	stw	r0,0(r3)
+	addi	r3,r3,4
+	cmplw	0,r3,r4
+	bne	5b
+6:
+
+#if 0
+	mr	r3,r9		/* Init Data pointer		*/
+	mr	r4,r10		/* Destination Address		*/
+#endif
+	mr r3, r10		/* Destination Address      */
+	bl	board_init_r
+
+#ifndef CONFIG_NAND_SPL
+	/*
+	 * Copy exception vector code to low memory
+	 *
+	 * r3: dest_addr
+	 * r7: source address, r8: end address, r9: target address
+	 */
+	.globl	trap_init
+trap_init:
+	mflr	r4			/* save link register		*/
+	GET_GOT
+	lwz	r7,GOT(_start_of_vectors)
+	lwz	r8,GOT(_end_of_vectors)
+
+	li	r9,0x100		/* reset vector always at 0x100 */
+
+	cmplw	0,r7,r8
+	bgelr				/* return if r7>=r8 - just in case */
+1:
+	lwz	r0,0(r7)
+	stw	r0,0(r9)
+	addi	r7,r7,4
+	addi	r9,r9,4
+	cmplw	0,r7,r8
+	bne	1b
+
+	/*
+	 * relocate `hdlr' and `int_return' entries
+	 */
+	li	r7,.L_CriticalInput - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_MachineCheck - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_DataStorage - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_InstStorage - _start + _START_OFFSET
+	bl	trap_reloc
+#ifdef CONFIG_USE_IRQ
+	li	r7,.L_ExtInterrupt - _start + _START_OFFSET
+	bl	trap_reloc
+#endif
+	li	r7,.L_Alignment - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_ProgramCheck - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_FPUnavailable - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_Decrementer - _start + _START_OFFSET
+	bl	trap_reloc
+	li	r7,.L_IntervalTimer - _start + _START_OFFSET
+	li	r8,_end_of_vectors - _start + _START_OFFSET
+2:
+	bl	trap_reloc
+	addi	r7,r7,0x100		/* next exception vector	*/
+	cmplw	0,r7,r8
+	blt	2b
+
+	lis	r7,0x0
+	mtspr	IVPR,r7
+
+	mtlr	r4			/* restore link register	*/
+	blr
+
+
+.globl _text_base
+_text_base:
+	.long TEXT_BASE
+
+.globl unlock_ram_in_cache
+unlock_ram_in_cache:
+	/* invalidate the INIT_RAM section */
+	lis	r3,(CFG_INIT_RAM_ADDR & ~(CONFIG_SYS_CACHELINE_SIZE-1))@h
+	ori	r3,r3,(CFG_INIT_RAM_ADDR & ~(CONFIG_SYS_CACHELINE_SIZE-1))@l
+	mfspr	r4,L1CFG0
+	andi.	r4,r4,0x1ff
+	slwi	r4,r4,(10 - 1 - L1_CACHE_SHIFT)
+	mtctr	r4
+1:	dcbi	r0,r3
+	addi	r3,r3,CONFIG_SYS_CACHELINE_SIZE
+	bdnz	1b
+	sync
+
+	/* Invalidate the TLB entries for the cache */
+	lis	r3,CFG_INIT_RAM_ADDR@h
+	ori	r3,r3,CFG_INIT_RAM_ADDR@l
+	tlbivax	0,r3
+	addi	r3,r3,0x1000
+	tlbivax	0,r3
+	addi	r3,r3,0x1000
+	tlbivax	0,r3
+	addi	r3,r3,0x1000
+	tlbivax	0,r3
+	isync
+	blr
+
+.globl flush_dcache
+flush_dcache:
+	mfspr	r3,SPRN_L1CFG0
+
+	rlwinm	r5,r3,9,3	/* Extract cache block size */
+	twlgti	r5,1		/* Only 32 and 64 byte cache blocks
+				 * are currently defined.
+				 */
+	li	r4,32
+	subfic	r6,r5,2		/* r6 = log2(1KiB / cache block size) -
+				 *      log2(number of ways)
+				 */
+	slw	r5,r4,r5	/* r5 = cache block size */
+
+	rlwinm	r7,r3,0,0xff	/* Extract number of KiB in the cache */
+	mulli	r7,r7,13	/* An 8-way cache will require 13
+				 * loads per set.
+				 */
+	slw	r7,r7,r6
+
+	/* save off HID0 and set DCFA */
+	mfspr	r8,SPRN_HID0
+	ori	r9,r8,HID0_DCFA@l
+	mtspr	SPRN_HID0,r9
+	isync
+
+	lis	r4,0
+	mtctr	r7
+
+1:	lwz	r3,0(r4)	/* Load... */
+	add	r4,r4,r5
+	bdnz	1b
+
+	msync
+	lis	r4,0
+	mtctr	r7
+
+1:	dcbf	0,r4		/* ...and flush. */
+	add	r4,r4,r5
+	bdnz	1b
+
+	/* restore HID0 */
+	mtspr	SPRN_HID0,r8
+	isync
+
+	blr
+
+.globl setup_ivors
+setup_ivors:
+
+#include "fixed_ivor.S"
+	blr
+#endif /* !CONFIG_NAND_SPL */
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/tlb.c b/arch/ppc/mach-mpc8xxx/mpc85xx/tlb.c
new file mode 100644
index 0000000..8120f7f
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/tlb.c
@@ -0,0 +1,307 @@
+/*
+ * Copyright 2008-2009 Freescale Semiconductor, Inc.
+ *
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#include <common.h>
+#include <asm/processor.h>
+#include <asm/global_data.h>
+#include <asm/mmu.h>
+#include <asm/bitops.h>
+#ifdef CONFIG_ADDR_MAP
+#include <addr_map.h>
+#endif
+
+DECLARE_GLOBAL_DATA_PTR;
+
+void invalidate_tlb(u8 tlb)
+{
+	if (tlb == 0)
+		mtspr(MMUCSR0, 0x4);
+	if (tlb == 1)
+		mtspr(MMUCSR0, 0x2);
+}
+
+void init_tlbs(void)
+{
+	int i;
+
+	for (i = 0; i < num_tlb_entries; i++) {
+		write_tlb(tlb_table[i].mas0,
+			  tlb_table[i].mas1,
+			  tlb_table[i].mas2,
+			  tlb_table[i].mas3,
+			  tlb_table[i].mas7);
+	}
+
+	return ;
+}
+
+void read_tlbcam_entry(int idx, u32 *valid, u32 *tsize, unsigned long *epn,
+		       phys_addr_t *rpn)
+{
+	u32 _mas1;
+
+	mtspr(MAS0, FSL_BOOKE_MAS0(1, idx, 0));
+	asm volatile("tlbre;isync");
+	_mas1 = mfspr(MAS1);
+
+	*valid = (_mas1 & MAS1_VALID);
+	*tsize = (_mas1 >> 8) & 0xf;
+	*epn = mfspr(MAS2) & MAS2_EPN;
+	*rpn = mfspr(MAS3) & MAS3_RPN;
+#ifdef CONFIG_ENABLE_36BIT_PHYS
+	*rpn |= ((u64)mfspr(MAS7)) << 32;
+#endif
+}
+
+#ifndef CONFIG_NAND_SPL
+#if 0
+void print_tlbcam(void)
+{
+	int i;
+	unsigned int num_cam = mfspr(SPRN_TLB1CFG) & 0xfff;
+
+	/* walk all the entries */
+	printf("TLBCAM entries\n");
+	for (i = 0; i < num_cam; i++) {
+		unsigned long epn;
+		u32 tsize, valid;
+		phys_addr_t rpn;
+
+		read_tlbcam_entry(i, &valid, &tsize, &epn, &rpn);
+		printf("entry %02d: V: %d EPN 0x%08x RPN 0x%08llx size:",
+			i, (valid == 0) ? 0 : 1, (unsigned int)epn,
+			(unsigned long long)rpn);
+		print_size(TSIZE_TO_BYTES(tsize), "\n");
+	}
+}
+#endif
+
+static inline void use_tlb_cam(u8 idx)
+{
+	int i = idx / 32;
+	int bit = idx % 32;
+
+	gd->used_tlb_cams[i] |= (1 << bit);
+}
+
+static inline void free_tlb_cam(u8 idx)
+{
+	int i = idx / 32;
+	int bit = idx % 32;
+
+	gd->used_tlb_cams[i] &= ~(1 << bit);
+}
+
+void init_used_tlb_cams(void)
+{
+	int i;
+	unsigned int num_cam = mfspr(SPRN_TLB1CFG) & 0xfff;
+
+	for (i = 0; i < ((CONFIG_SYS_NUM_TLBCAMS+31)/32); i++)
+		gd->used_tlb_cams[i] = 0;
+
+	/* walk all the entries */
+	for (i = 0; i < num_cam; i++) {
+		mtspr(MAS0, FSL_BOOKE_MAS0(1, i, 0));
+		asm volatile("tlbre;isync");
+		if (mfspr(MAS1) & MAS1_VALID)
+			use_tlb_cam(i);
+	}
+}
+
+int find_free_tlbcam(void)
+{
+	int i;
+	u32 idx;
+
+	for (i = 0; i < ((CONFIG_SYS_NUM_TLBCAMS+31)/32); i++) {
+		idx = ffz(gd->used_tlb_cams[i]);
+
+		if (idx != 32)
+			break;
+	}
+
+	idx += i * 32;
+
+	if (idx >= CONFIG_SYS_NUM_TLBCAMS)
+		return -1;
+
+	return idx;
+}
+
+void set_tlb(u8 tlb, u32 epn, u64 rpn,
+	     u8 perms, u8 wimge,
+	     u8 ts, u8 esel, u8 tsize, u8 iprot)
+{
+	u32 _mas0, _mas1, _mas2, _mas3, _mas7;
+
+	if (tlb == 1)
+		use_tlb_cam(esel);
+
+	_mas0 = FSL_BOOKE_MAS0(tlb, esel, 0);
+	_mas1 = FSL_BOOKE_MAS1(1, iprot, 0, ts, tsize);
+	_mas2 = FSL_BOOKE_MAS2(epn, wimge);
+	_mas3 = FSL_BOOKE_MAS3(rpn, 0, perms);
+	_mas7 = FSL_BOOKE_MAS7(rpn);
+
+	write_tlb(_mas0, _mas1, _mas2, _mas3, _mas7);
+
+#ifdef CONFIG_ADDR_MAP
+	if ((tlb == 1) && (gd->flags & GD_FLG_RELOC))
+		addrmap_set_entry(epn, rpn, TSIZE_TO_BYTES(tsize), esel);
+#endif
+}
+
+void disable_tlb(u8 esel)
+{
+	u32 _mas0, _mas1, _mas2, _mas3, _mas7;
+
+	free_tlb_cam(esel);
+
+	_mas0 = FSL_BOOKE_MAS0(1, esel, 0);
+	_mas1 = 0;
+	_mas2 = 0;
+	_mas3 = 0;
+	_mas7 = 0;
+
+	mtspr(MAS0, _mas0);
+	mtspr(MAS1, _mas1);
+	mtspr(MAS2, _mas2);
+	mtspr(MAS3, _mas3);
+#ifdef CONFIG_ENABLE_36BIT_PHYS
+	mtspr(MAS7, _mas7);
+#endif
+	asm volatile("isync;msync;tlbwe;isync");
+
+#ifdef CONFIG_ADDR_MAP
+	if (gd->flags & GD_FLG_RELOC)
+		addrmap_set_entry(0, 0, 0, esel);
+#endif
+}
+
+static void tlbsx (const volatile unsigned *addr)
+{
+	__asm__ __volatile__ ("tlbsx 0,%0" : : "r" (addr), "m" (*addr));
+}
+
+/* return -1 if we didn't find anything */
+int find_tlb_idx(void *addr, u8 tlbsel)
+{
+	u32 _mas0, _mas1;
+
+	/* zero out Search PID, AS */
+	mtspr(MAS6, 0);
+
+	tlbsx(addr);
+
+	_mas0 = mfspr(MAS0);
+	_mas1 = mfspr(MAS1);
+
+	/* we found something, and its in the TLB we expect */
+	if ((MAS1_VALID & _mas1) &&
+		(MAS0_TLBSEL(tlbsel) == (_mas0 & MAS0_TLBSEL_MSK))) {
+		return ((_mas0 & MAS0_ESEL_MSK) >> 16);
+	}
+
+	return -1;
+}
+
+#ifdef CONFIG_ADDR_MAP
+void init_addr_map(void)
+{
+	int i;
+	unsigned int num_cam = mfspr(SPRN_TLB1CFG) & 0xfff;
+
+	/* walk all the entries */
+	for (i = 0; i < num_cam; i++) {
+		unsigned long epn;
+		u32 tsize, valid;
+		phys_addr_t rpn;
+
+		read_tlbcam_entry(i, &valid, &tsize, &epn, &rpn);
+		if (valid & MAS1_VALID)
+			addrmap_set_entry(epn, rpn, TSIZE_TO_BYTES(tsize), i);
+	}
+
+	return ;
+}
+#endif
+
+unsigned int
+setup_ddr_tlbs_phys(phys_addr_t p_addr, unsigned int memsize_in_meg)
+{
+	int i;
+	unsigned int tlb_size;
+	unsigned int wimge = 0;
+	unsigned int ram_tlb_address = (unsigned int)CONFIG_SYS_DDR_SDRAM_BASE;
+	unsigned int max_cam = (mfspr(SPRN_TLB1CFG) >> 16) & 0xf;
+	u64 size, memsize = (u64)memsize_in_meg << 20;
+
+#ifdef CONFIG_SYS_PPC_DDR_WIMGE
+	wimge = CONFIG_SYS_PPC_DDR_WIMGE;
+#endif
+	size = min(memsize, CONFIG_MAX_MEM_MAPPED);
+
+	/* Convert (4^max) kB to (2^max) bytes */
+	max_cam = max_cam * 2 + 10;
+
+	for (i = 0; size && i < 8; i++) {
+		int ram_tlb_index = find_free_tlbcam();
+		u32 camsize = __ilog2_u64(size) & ~1U;
+		u32 align = __ilog2(ram_tlb_address) & ~1U;
+
+		if (ram_tlb_index == -1)
+			break;
+
+		if (align == -2) align = max_cam;
+		if (camsize > align)
+			camsize = align;
+
+		if (camsize > max_cam)
+			camsize = max_cam;
+
+		tlb_size = (camsize - 10) / 2;
+
+		set_tlb(1, ram_tlb_address, p_addr,
+			MAS3_SX|MAS3_SW|MAS3_SR, wimge,
+			0, ram_tlb_index, tlb_size, 1);
+
+		size -= 1ULL << camsize;
+		memsize -= 1ULL << camsize;
+		ram_tlb_address += 1UL << camsize;
+		p_addr += 1UL << camsize;
+	}
+
+	if (memsize)
+		printf("%lld left unmapped\n", memsize);
+//		print_size(memsize, " left unmapped\n");
+	return memsize_in_meg;
+}
+
+unsigned int setup_ddr_tlbs(unsigned int memsize_in_meg)
+{
+	return setup_ddr_tlbs_phys(CONFIG_SYS_DDR_SDRAM_BASE, memsize_in_meg);
+}
+#endif /* !CONFIG_NAND_SPL */
diff --git a/arch/ppc/mach-mpc8xxx/mpc85xx/traps.c b/arch/ppc/mach-mpc8xxx/mpc85xx/traps.c
new file mode 100644
index 0000000..9eea5b5
--- /dev/null
+++ b/arch/ppc/mach-mpc8xxx/mpc85xx/traps.c
@@ -0,0 +1,329 @@
+/*
+ * linux/arch/powerpc/kernel/traps.c
+ *
+ * Copyright 2007 Freescale Semiconductor.
+ * Copyright (C) 2003 Motorola
+ * Modified by Xianghua Xiao(x.xiao@motorola.com)
+ *
+ * Copyright (C) 1995-1996  Gary Thomas (gdt@linuxppc.org)
+ *
+ * Modified by Cort Dougan (cort@cs.nmt.edu)
+ * and Paul Mackerras (paulus@cs.anu.edu.au)
+ *
+ * (C) Copyright 2000
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+/*
+ * This file handles the architecture-dependent parts of hardware exceptions
+ */
+
+#include <common.h>
+#include <command.h>
+#include <kgdb.h>
+#include <asm/processor.h>
+#include <asm/global_data.h>
+
+DECLARE_GLOBAL_DATA_PTR;
+
+/* Returns 0 if exception not found and fixup otherwise.  */
+extern unsigned long search_exception_table(unsigned long);
+
+/*
+ * End of addressable memory.  This may be less than the actual
+ * amount of memory on the system if we're unable to keep all
+ * the memory mapped in.
+ */
+extern ulong get_effective_memsize(void);
+#define END_OF_MEM (gd->bd->bi_memstart + get_effective_memsize())
+
+static __inline__ void set_tsr(unsigned long val)
+{
+	asm volatile("mtspr 0x150, %0" : : "r" (val));
+}
+
+static __inline__ unsigned long get_esr(void)
+{
+	unsigned long val;
+	asm volatile("mfspr %0, 0x03e" : "=r" (val) :);
+	return val;
+}
+
+#define ESR_MCI 0x80000000
+#define ESR_PIL 0x08000000
+#define ESR_PPR 0x04000000
+#define ESR_PTR 0x02000000
+#define ESR_DST 0x00800000
+#define ESR_DIZ 0x00400000
+#define ESR_U0F 0x00008000
+
+ulong get_effective_memsize(void)
+{
+	return CONFIG_SYS_SDRAM_SIZE << 20;
+}
+
+/*
+ * Trap & Exception support
+ */
+
+void
+print_backtrace(unsigned long *sp)
+{
+	int cnt = 0;
+	unsigned long i;
+
+	printf("Call backtrace: ");
+	while (sp) {
+		if ((uint)sp > END_OF_MEM)
+			break;
+
+		i = sp[1];
+		if (cnt++ % 7 == 0)
+			printf("\n");
+		printf("%08lX ", i);
+		if (cnt > 32) break;
+		sp = (unsigned long *)*sp;
+	}
+	printf("\n");
+}
+
+void show_regs(struct pt_regs * regs)
+{
+	int i;
+
+	printf("NIP: %08lX XER: %08lX LR: %08lX REGS: %p TRAP: %04lx DAR: %08lX\n",
+	       regs->nip, regs->xer, regs->link, regs, regs->trap, regs->dar);
+	printf("MSR: %08lx EE: %01x PR: %01x FP: %01x ME: %01x IR/DR: %01x%01x\n",
+	       regs->msr, regs->msr&MSR_EE ? 1 : 0, regs->msr&MSR_PR ? 1 : 0,
+	       regs->msr & MSR_FP ? 1 : 0,regs->msr&MSR_ME ? 1 : 0,
+	       regs->msr&MSR_IR ? 1 : 0,
+	       regs->msr&MSR_DR ? 1 : 0);
+
+	printf("\n");
+	for (i = 0;  i < 32;  i++) {
+		if ((i % 8) == 0)
+		{
+			printf("GPR%02d: ", i);
+		}
+
+		printf("%08lX ", regs->gpr[i]);
+		if ((i % 8) == 7)
+		{
+			printf("\n");
+		}
+	}
+}
+
+
+void
+_exception(int signr, struct pt_regs *regs)
+{
+	show_regs(regs);
+	print_backtrace((unsigned long *)regs->gpr[1]);
+	panic("Exception in kernel pc %lx signal %d",regs->nip,signr);
+}
+
+void
+CritcalInputException(struct pt_regs *regs)
+{
+	panic("Critical Input Exception");
+}
+
+int machinecheck_count = 0;
+int machinecheck_error = 0;
+void
+MachineCheckException(struct pt_regs *regs)
+{
+	unsigned long fixup;
+	unsigned int mcsr, mcsrr0, mcsrr1, mcar;
+
+	/* Probing PCI using config cycles cause this exception
+	 * when a device is not present.  Catch it and return to
+	 * the PCI exception handler.
+	 */
+	if ((fixup = search_exception_table(regs->nip)) != 0) {
+		regs->nip = fixup;
+		return;
+	}
+
+	mcsrr0 = mfspr(SPRN_MCSRR0);
+	mcsrr1 = mfspr(SPRN_MCSRR1);
+	mcsr = mfspr(SPRN_MCSR);
+	mcar = mfspr(SPRN_MCAR);
+
+	machinecheck_count++;
+	machinecheck_error=1;
+
+#if defined(CONFIG_CMD_KGDB)
+	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
+		return;
+#endif
+
+	printf("Machine check in kernel mode.\n");
+	printf("Caused by (from mcsr): ");
+	printf("mcsr = 0x%08x\n", mcsr);
+	if (mcsr & 0x80000000)
+		printf("Machine check input pin\n");
+	if (mcsr & 0x40000000)
+		printf("Instruction cache parity error\n");
+	if (mcsr & 0x20000000)
+		printf("Data cache push parity error\n");
+	if (mcsr & 0x10000000)
+		printf("Data cache parity error\n");
+	if (mcsr & 0x00000080)
+		printf("Bus instruction address error\n");
+	if (mcsr & 0x00000040)
+		printf("Bus Read address error\n");
+	if (mcsr & 0x00000020)
+		printf("Bus Write address error\n");
+	if (mcsr & 0x00000010)
+		printf("Bus Instruction data bus error\n");
+	if (mcsr & 0x00000008)
+		printf("Bus Read data bus error\n");
+	if (mcsr & 0x00000004)
+		printf("Bus Write bus error\n");
+	if (mcsr & 0x00000002)
+		printf("Bus Instruction parity error\n");
+	if (mcsr & 0x00000001)
+		printf("Bus Read parity error\n");
+
+	show_regs(regs);
+	printf("MCSR=0x%08x \tMCSRR0=0x%08x \nMCSRR1=0x%08x \tMCAR=0x%08x\n",
+	       mcsr, mcsrr0, mcsrr1, mcar);
+	print_backtrace((unsigned long *)regs->gpr[1]);
+	if (machinecheck_count > 10) {
+		panic("machine check count too high\n");
+	}
+
+	if (machinecheck_count > 1) {
+		regs->nip += 4; /* skip offending instruction */
+		printf("Skipping current instr, Returning to 0x%08lx\n",
+		       regs->nip);
+	} else {
+		printf("Returning back to 0x%08lx\n",regs->nip);
+	}
+}
+
+void
+AlignmentException(struct pt_regs *regs)
+{
+#if defined(CONFIG_CMD_KGDB)
+	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
+		return;
+#endif
+
+	show_regs(regs);
+	print_backtrace((unsigned long *)regs->gpr[1]);
+	panic("Alignment Exception");
+}
+
+void
+ProgramCheckException(struct pt_regs *regs)
+{
+	long esr_val;
+
+#if defined(CONFIG_CMD_KGDB)
+	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
+		return;
+#endif
+
+	show_regs(regs);
+
+	esr_val = get_esr();
+	if( esr_val & ESR_PIL )
+		printf( "** Illegal Instruction **\n" );
+	else if( esr_val & ESR_PPR )
+		printf( "** Privileged Instruction **\n" );
+	else if( esr_val & ESR_PTR )
+		printf( "** Trap Instruction **\n" );
+
+	print_backtrace((unsigned long *)regs->gpr[1]);
+	panic("Program Check Exception");
+}
+
+void
+PITException(struct pt_regs *regs)
+{
+	/*
+	 * Reset PIT interrupt
+	 */
+	set_tsr(0x0c000000);
+
+	/*
+	 * Call timer_interrupt routine in interrupts.c
+	 */
+#ifdef CONFIG_USE_IRQ
+	timer_interrupt(NULL);
+#endif
+}
+
+
+void
+UnknownException(struct pt_regs *regs)
+{
+#if defined(CONFIG_CMD_KGDB)
+	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
+		return;
+#endif
+
+	printf("Bad trap at PC: %lx, SR: %lx, vector=%lx\n",
+	       regs->nip, regs->msr, regs->trap);
+	_exception(0, regs);
+}
+
+void
+ExtIntException(struct pt_regs *regs)
+{
+	volatile ccsr_pic_t *pic = (void *)(CONFIG_SYS_MPC8xxx_PIC_ADDR);
+
+	uint vect;
+
+#if defined(CONFIG_CMD_KGDB)
+	if (debugger_exception_handler && (*debugger_exception_handler)(regs))
+		return;
+#endif
+
+	printf("External Interrupt Exception at PC: %lx, SR: %lx, vector=%lx",
+	       regs->nip, regs->msr, regs->trap);
+	vect = pic->iack0;
+	printf(" irq IACK0@%05x=%d\n",(int)&pic->iack0,vect);
+	show_regs(regs);
+	print_backtrace((unsigned long *)regs->gpr[1]);
+}
+
+void
+DebugException(struct pt_regs *regs)
+{
+	printf("Debugger trap at @ %lx\n", regs->nip );
+	show_regs(regs);
+#if defined(CONFIG_CMD_BEDBUG)
+	do_bedbug_breakpoint( regs );
+#endif
+}
+
+/* Probe an address by reading.	 If not present, return -1, otherwise
+ * return 0.
+ */
+int
+addr_probe(uint *addr)
+{
+	return 0;
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
