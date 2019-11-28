Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaG85-0003Si-Ug
 for barebox@lists.infradead.org; Thu, 28 Nov 2019 09:30:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Nov 2019 10:30:26 +0100
Message-Id: <20191128093026.5673-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: Layerscape: PPA: Disable CAAM JR used by secure firmware
To: Barebox List <barebox@lists.infradead.org>

JR3 is used by the secure firmware. We have to remove the node from
the Linux device tree to prevent Linux from using it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/ppa.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index 6070451020..c5eba35b33 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -18,14 +18,33 @@
 int ppa_entry(const void *, u32 *, u32 *);
 void dma_flush_range(void *ptr, size_t size);
 
+#define SEC_JR3_OFFSET                     0x40000
+
 static int of_psci_do_fixup(struct device_node *root, void *unused)
 {
 	unsigned long psci_version;
+	struct device_node *np;
 	struct arm_smccc_res res = {};
 
 	arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION, 0, 0, 0, 0, 0, 0, 0, &res);
 	psci_version = res.a0;
 
+	for_each_compatible_node_from(np, root, NULL, "fsl,sec-v4.0-job-ring") {
+		const void *reg;
+		int na = of_n_addr_cells(np);
+		u64 offset;
+
+		reg = of_get_property(np, "reg", NULL);
+		if (!reg)
+			continue;
+
+		offset = of_read_number(reg, na);
+		if (offset != SEC_JR3_OFFSET)
+			continue;
+
+		of_delete_node(np);
+	}
+
 	return of_psci_fixup(root, psci_version);
 }
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
