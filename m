Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og113.obsmtp.com ([64.18.0.26])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV3ts-0004Po-1C
 for barebox@lists.infradead.org; Thu, 17 May 2012 16:50:08 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 17 May 2012 17:49:46 +0100
Message-Id: <1337273391-20858-5-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
References: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V5 4/9] 85xx: LAW and LBC initialization
To: barebox@lists.infradead.org

This patch includes functions to initialize LAW registers and
the chip select 0 of the CPU.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/fsl_law.c |  160 +++++++++++++++++++++++++++++++++++++++
 arch/ppc/mach-mpc85xx/fsl_lbc.c |   17 ++++
 2 files changed, 177 insertions(+), 0 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_law.c
 create mode 100644 arch/ppc/mach-mpc85xx/fsl_lbc.c

diff --git a/arch/ppc/mach-mpc85xx/fsl_law.c b/arch/ppc/mach-mpc85xx/fsl_law.c
new file mode 100644
index 0000000..422943d
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/fsl_law.c
@@ -0,0 +1,160 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ *
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
+#include <asm/config.h>
+#include <asm/fsl_law.h>
+
+#define FSL_HW_NUM_LAWS FSL_NUM_LAWS
+
+#define LAW_BASE (CFG_IMMR + 0xc08)
+#define LAWAR_ADDR(x) ((u32 *)LAW_BASE + 8 * (x) + 2)
+#define LAWBAR_ADDR(x) ((u32 *)LAW_BASE + 8 * (x))
+#define LAWBAR_SHIFT 12
+
+static inline phys_addr_t fsl_get_law_base_addr(int idx)
+{
+	return (phys_addr_t)in_be32(LAWBAR_ADDR(idx)) << LAWBAR_SHIFT;
+}
+
+static inline void fsl_set_law_base_addr(int idx, phys_addr_t addr)
+{
+	out_be32(LAWBAR_ADDR(idx), addr >> LAWBAR_SHIFT);
+}
+
+static void fsl_set_law(u8 idx, phys_addr_t addr, enum law_size sz,
+		    enum law_trgt_if id)
+{
+	out_be32(LAWAR_ADDR(idx), 0);
+	fsl_set_law_base_addr(idx, addr);
+	out_be32(LAWAR_ADDR(idx), LAW_EN | ((u32)id << 20) | (u32)sz);
+
+	/* Read back so that we sync the writes */
+	in_be32(LAWAR_ADDR(idx));
+}
+
+static int fsl_is_free_law(int idx)
+{
+	u32 lawar;
+
+	lawar = in_be32(LAWAR_ADDR(idx));
+	if (!(lawar & LAW_EN))
+		return 1;
+
+	return 0;
+}
+
+static void fsl_set_next_law(phys_addr_t addr, enum law_size sz,
+			enum law_trgt_if id)
+{
+	u32 idx;
+
+	for (idx = 0; idx < FSL_HW_NUM_LAWS; idx++) {
+		if (fsl_is_free_law(idx)) {
+			fsl_set_law(idx, addr, sz, id);
+			break;
+		}
+	}
+
+	if (idx >= FSL_HW_NUM_LAWS)
+		panic("No more LAWS available\n");
+}
+
+static void fsl_set_last_law(phys_addr_t addr, enum law_size sz,
+			enum law_trgt_if id)
+{
+	u32 idx;
+
+	for (idx = (FSL_HW_NUM_LAWS - 1); idx >= 0; idx--) {
+		if (fsl_is_free_law(idx)) {
+			fsl_set_law(idx, addr, sz, id);
+			break;
+		}
+	}
+
+	if (idx < 0)
+		panic("No more LAWS available\n");
+}
+
+/* use up to 2 LAWs for DDR, use the last available LAWs */
+int fsl_set_ddr_laws(u64 start, u64 sz, enum law_trgt_if id)
+{
+	u64 start_align, law_sz;
+	int law_sz_enc;
+
+	if (start == 0)
+		start_align = 1ull << (LAW_SIZE_32G + 1);
+	else
+		start_align = 1ull << (ffs64(start) - 1);
+
+	law_sz = min(start_align, sz);
+	law_sz_enc = __ilog2_u64(law_sz) - 1;
+
+	fsl_set_last_law(start, law_sz_enc, id);
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
+		fsl_set_last_law(start, law_sz_enc, id);
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
+
+void fsl_init_laws(void)
+{
+	int i;
+
+	if (FSL_HW_NUM_LAWS > 32)
+		panic("FSL_HW_NUM_LAWS can not be > 32 w/o code changes");
+
+	for (i = 0; i < num_law_entries; i++) {
+		if (law_table[i].index == -1)
+			fsl_set_next_law(law_table[i].addr,
+					law_table[i].size,
+					law_table[i].trgt_id);
+		else
+			fsl_set_law(law_table[i].index, law_table[i].addr,
+				law_table[i].size, law_table[i].trgt_id);
+	}
+}
diff --git a/arch/ppc/mach-mpc85xx/fsl_lbc.c b/arch/ppc/mach-mpc85xx/fsl_lbc.c
new file mode 100644
index 0000000..ac9ca74
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/fsl_lbc.c
@@ -0,0 +1,17 @@
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
+#include <mach/immap_85xx.h>
+
+void fsl_init_early_memctl_regs(void)
+{
+	fsl_set_lbc_br(0, CFG_BR0_PRELIM);
+	fsl_set_lbc_or(0, CFG_OR0_PRELIM);
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
