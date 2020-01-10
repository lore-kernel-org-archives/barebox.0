Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsrk-0006Mi-Us
 for barebox@lists.infradead.org; Fri, 10 Jan 2020 11:54:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2020 12:54:10 +0100
Message-Id: <20200110115410.18265-6-s.hauer@pengutronix.de>
In-Reply-To: <20200110115410.18265-1-s.hauer@pengutronix.de>
References: <20200110115410.18265-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: Layerscape: setup icids for the IOMMU
To: Barebox List <barebox@lists.infradead.org>

The Isolation Context Identifiers (icid) have to be configured in the
hardware and communicated to the Kernel via device tree fixups. This
adds the missing bits and pieces to make the IOMMU work under Linux.

As of Linux-5.5 the SMMU doesn't work out of the box. This series has
been tested in conjunction with this Kernel series:
https://lore.kernel.org/patchwork/cover/997994/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c | 281 ++++++++++++++++++++++++++++++--
 include/soc/fsl/immap_lsch2.h   |   1 +
 2 files changed, 266 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index 62c2d356e2..b574a554ab 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <io.h>
 #include <init.h>
+#include <of_address.h>
 #include <soc/fsl/immap_lsch2.h>
 #include <soc/fsl/fsl_qbman.h>
 #include <soc/fsl/fsl_fman.h>
@@ -154,25 +155,25 @@ struct icid_id_table icid_tbl_ls1046a[] = {
 		.compat = "fsl,sec-v4.0-job-ring",
 		.id = DPAA1_SID_START + 3,
 		.reg = (((DPAA1_SID_START + 3) << 16) | (DPAA1_SID_START + 3)),
-		.compat_addr = SEC_IRBAR_JRn(0),
+		.compat_addr = LSCH2_SEC_ADDR + SEC_IRBAR_JRn(0),
 		.reg_addr = SEC_JRnICID_LS(0) + LSCH2_SEC_ADDR,
 	}, {
 		.compat = "fsl,sec-v4.0-job-ring",
 		.id = DPAA1_SID_START + 4,
 		.reg = (((DPAA1_SID_START + 4) << 16) | (DPAA1_SID_START + 4)),
-		.compat_addr = SEC_IRBAR_JRn(1),
+		.compat_addr = LSCH2_SEC_ADDR + SEC_IRBAR_JRn(1),
 		.reg_addr = SEC_JRnICID_LS(1) + LSCH2_SEC_ADDR,
 	}, {
 		.compat = "fsl,sec-v4.0-job-ring",
 		.id = DPAA1_SID_START + 5,
 		.reg = (((DPAA1_SID_START + 5) << 16) | (DPAA1_SID_START + 5)),
-		.compat_addr = SEC_IRBAR_JRn(2),
+		.compat_addr = LSCH2_SEC_ADDR + SEC_IRBAR_JRn(2),
 		.reg_addr = SEC_JRnICID_LS(2) + LSCH2_SEC_ADDR,
 	}, {
 		.compat = "fsl,sec-v4.0-job-ring",
 		.id = DPAA1_SID_START + 6,
 		.reg = (((DPAA1_SID_START + 6) << 16) | (DPAA1_SID_START + 6)),
-		.compat_addr = SEC_IRBAR_JRn(3),
+		.compat_addr = LSCH2_SEC_ADDR + SEC_IRBAR_JRn(3),
 		.reg_addr = SEC_JRnICID_LS(3) + LSCH2_SEC_ADDR,
 	}, {
 		.id = DPAA1_SID_START + 7,
@@ -275,35 +276,283 @@ struct fman_icid_id_table fman_icid_tbl_ls1046a[] = {
 	},
 };
 
-static void set_icid(struct icid_id_table *tbl, int size)
+static int get_fman_port_icid(int port_id, struct fman_icid_id_table *tbl,
+		       const int size)
 {
 	int i;
 
-	for (i = 0; i < size; i++)
-		out_be32((u32 *)(tbl[i].reg_addr), tbl[i].reg);
+	for (i = 0; i < size; i++) {
+		if (tbl[i].port_id == port_id)
+			return tbl[i].icid;
+	}
+
+	return -ENODEV;
+}
+
+static void fdt_set_iommu_prop(struct device_node *np, phandle iommu_handle,
+			       int stream_id)
+{
+	u32 prop[2];
+
+	prop[0] = cpu_to_fdt32(iommu_handle);
+	prop[1] = cpu_to_fdt32(stream_id);
+
+	of_set_property(np, "iommus", prop, sizeof(prop), 1);
+}
+
+static void fdt_fixup_fman_port_icid_by_compat(struct device_node *root,
+					       phandle iommu_handle,
+					       const char *compat)
+{
+	struct device_node *np;
+	int ret;
+	u32 cell_index, icid;
+
+	for_each_compatible_node_from(np, root, NULL, compat) {
+		ret = of_property_read_u32(np, "cell-index", &cell_index);
+		if (ret)
+			continue;
+
+		icid = get_fman_port_icid(cell_index, fman_icid_tbl_ls1046a,
+					  ARRAY_SIZE(fman_icid_tbl_ls1046a));
+		if (icid < 0) {
+			printf("WARNING unknown ICID for fman port %u\n",
+			       cell_index);
+			continue;
+		}
+
+		fdt_set_iommu_prop(np, iommu_handle, icid);
+	}
 }
 
-static void set_fman_icids(struct fman_icid_id_table *tbl, int size)
+static void fdt_fixup_fman_icids(struct device_node *root, phandle iommu_handle)
 {
+	static const char * const compats[] = {
+		"fsl,fman-v3-port-oh",
+		"fsl,fman-v3-port-rx",
+		"fsl,fman-v3-port-tx",
+	};
 	int i;
-	struct ccsr_fman *fm = (void *)LSCH2_FM1_ADDR;
 
-	for (i = 0; i < size; i++) {
-		out_be32(&fm->fm_bmi_common.fmbm_ppid[tbl[i].port_id - 1],
-			 tbl[i].icid);
+	for (i = 0; i < ARRAY_SIZE(compats); i++)
+		fdt_fixup_fman_port_icid_by_compat(root, iommu_handle, compats[i]);
+}
+
+struct qportal_info {
+	u16 dicid;  /* DQRR ICID */
+	u16 ficid;  /* frame data ICID */
+	u16 icid;
+	u8 sdest;
+};
+
+struct qportal_info qp_info[] = {
+	{
+		.dicid = DPAA1_SID_END,
+		.ficid = DPAA1_SID_END,
+		.icid = DPAA1_SID_END,
+		.sdest = 0,
+	}, {
+		.dicid = DPAA1_SID_END,
+		.ficid = DPAA1_SID_END,
+		.icid = DPAA1_SID_END,
+		.sdest = 0,
+	}, {
+		.dicid = DPAA1_SID_END,
+		.ficid = DPAA1_SID_END,
+		.icid = DPAA1_SID_END,
+		.sdest = 0,
+	}, {
+		.dicid = DPAA1_SID_END,
+		.ficid = DPAA1_SID_END,
+		.icid = DPAA1_SID_END,
+		.sdest = 0,
+	}, {
+		.dicid = DPAA1_SID_END,
+		.ficid = DPAA1_SID_END,
+		.icid = DPAA1_SID_END,
+		.sdest = 0,
+	}, {
+		.dicid = DPAA1_SID_END,
+		.ficid = DPAA1_SID_END,
+		.icid = DPAA1_SID_END,
+		.sdest = 0,
+	}, {
+		.dicid = DPAA1_SID_END,
+		.ficid = DPAA1_SID_END,
+		.icid = DPAA1_SID_END,
+		.sdest = 0,
+	}, {
+		.dicid = DPAA1_SID_END,
+		.ficid = DPAA1_SID_END,
+		.icid = DPAA1_SID_END,
+		.sdest = 0,
+	}, {
+		.dicid = DPAA1_SID_END,
+		.ficid = DPAA1_SID_END,
+		.icid = DPAA1_SID_END,
+		.sdest = 0,
+	}, {
+		.dicid = DPAA1_SID_END,
+		.ficid = DPAA1_SID_END,
+		.icid = DPAA1_SID_END,
+		.sdest = 0,
+	},
+};
+
+#define BMAN_NUM_PORTALS     10
+#define BMAN_MEM_BASE        0x508000000
+#define BMAN_MEM_SIZE        0x08000000
+#define BMAN_SP_CINH_SIZE    0x10000
+#define BMAN_CENA_SIZE       (BMAN_MEM_SIZE >> 1)
+#define BMAN_CINH_BASE       (BMAN_MEM_BASE + BMAN_CENA_SIZE)
+#define BMAN_SWP_ISDR_REG    0x3e80
+#define QMAN_MEM_BASE        0x500000000
+#define QMAN_MEM_PHYS        QMAN_MEM_BASE
+#define QMAN_MEM_SIZE        0x08000000
+#define QMAN_SP_CINH_SIZE    0x10000
+#define QMAN_CENA_SIZE       (QMAN_MEM_SIZE >> 1)
+#define QMAN_CINH_BASE       (QMAN_MEM_BASE + QMAN_CENA_SIZE)
+#define QMAN_SWP_ISDR_REG    0x3680
+
+static void inhibit_portals(void __iomem *addr, int max_portals,
+			    int portal_cinh_size)
+{
+	int i;
+
+	for (i = 0; i < max_portals; i++) {
+		out_be32(addr, -1);
+		addr += portal_cinh_size;
+	}
+}
+
+static void setup_qbman_portals(void)
+{
+	void __iomem *bpaddr = (void *)BMAN_CINH_BASE + BMAN_SWP_ISDR_REG;
+	void __iomem *qpaddr = (void *)QMAN_CINH_BASE + QMAN_SWP_ISDR_REG;
+	struct ccsr_qman_v3 *qman = IOMEM(LSCH2_QMAN_ADDR);
+	int i;
+
+	/* Set the Qman initiator BAR to match the LAW (for DQRR stashing) */
+	out_be32(&qman->qcsp_bare, (u32)(QMAN_MEM_PHYS >> 32));
+	out_be32(&qman->qcsp_bar, (u32)QMAN_MEM_PHYS);
+
+	for (i = 0; i < ARRAY_SIZE(qp_info); i++) {
+		struct qportal_info *qi = &qp_info[i];
+
+		out_be32(&qman->qcsp[i].qcsp_lio_cfg, (qi->icid << 16) | qi->dicid);
+		/* set frame icid */
+		out_be32(&qman->qcsp[i].qcsp_io_cfg, (qi->sdest << 16) | qi->ficid);
+	}
+
+	/* Change default state of BMan ISDR portals to all 1s */
+	inhibit_portals(bpaddr, BMAN_NUM_PORTALS, BMAN_SP_CINH_SIZE);
+	inhibit_portals(qpaddr, ARRAY_SIZE(qp_info), QMAN_SP_CINH_SIZE);
+}
+
+static void fdt_set_qportal_iommu_prop(struct device_node *np, phandle iommu_handle,
+			       struct qportal_info *qp_info)
+{
+	u32 prop[6];
+
+	prop[0] = cpu_to_fdt32(iommu_handle);
+	prop[1] = cpu_to_fdt32(qp_info->icid);
+	prop[2] = cpu_to_fdt32(iommu_handle);
+	prop[3] = cpu_to_fdt32(qp_info->dicid);
+	prop[4] = cpu_to_fdt32(iommu_handle);
+	prop[5] = cpu_to_fdt32(qp_info->ficid);
+
+	of_set_property(np, "iommus", prop, sizeof(prop), 1);
+}
+
+static void fdt_fixup_qportals(struct device_node *root, phandle iommu_handle)
+{
+	struct device_node *np;
+	unsigned int maj, min;
+	unsigned int ip_cfg;
+	struct ccsr_qman_v3 *qman = IOMEM(LSCH2_QMAN_ADDR);
+	u32 rev_1 = in_be32(&qman->ip_rev_1);
+	u32 rev_2 = in_be32(&qman->ip_rev_2);
+	u32 cell_index;
+	int ret;
+
+	maj = (rev_1 >> 8) & 0xff;
+	min = rev_1 & 0xff;
+	ip_cfg = rev_2 & 0xff;
+
+	for_each_compatible_node_from(np, root, NULL, "fsl,qman-portal") {
+		ret = of_property_read_u32(np, "cell-index", &cell_index);
+		if (ret)
+			continue;
+
+		fdt_set_qportal_iommu_prop(np, iommu_handle, &qp_info[cell_index]);
+	}
+}
+
+static int icid_of_fixup(struct device_node *root, void *context)
+{
+	int i;
+	struct device_node *iommu;
+	phandle iommu_handle;
+
+	iommu = of_find_compatible_node(root, NULL, "arm,mmu-500");
+	if (!iommu)
+		return -ENOENT;
+
+	iommu_handle = of_node_create_phandle(iommu);
+
+	for (i = 0; i < ARRAY_SIZE(icid_tbl_ls1046a); i++) {
+		struct icid_id_table *icid = &icid_tbl_ls1046a[i];
+		struct device_node *np;
+
+		if (!icid->compat)
+			continue;
+
+		for_each_compatible_node_from(np, root, NULL, icid->compat) {
+			struct resource res;
+
+			if (of_address_to_resource(np, 0, &res))
+				continue;
+
+			if (res.start == icid->compat_addr) {
+				fdt_set_iommu_prop(np, iommu_handle, icid->id);
+				break;
+			}
+		}
 	}
+
+	fdt_fixup_fman_icids(root, iommu_handle);
+	fdt_fixup_qportals(root, iommu_handle);
+
+	return 0;
 }
 
-static int set_icids(void)
+static int layerscape_setup_icids(void)
 {
+	int i;
+	struct ccsr_fman *fm = (void *)LSCH2_FM1_ADDR;
+
 	if (!of_machine_is_compatible("fsl,ls1046a"))
 		return 0;
 
 	/* setup general icid offsets */
-	set_icid(icid_tbl_ls1046a, ARRAY_SIZE(icid_tbl_ls1046a));
+	for (i = 0; i < ARRAY_SIZE(icid_tbl_ls1046a); i++) {
+		struct icid_id_table *icid = &icid_tbl_ls1046a[i];
+
+		out_be32((u32 *)(icid->reg_addr), icid->reg);
+	}
+
+	/* setup fman icids */
+	for (i = 0; i < ARRAY_SIZE(fman_icid_tbl_ls1046a); i++) {
+		struct fman_icid_id_table *icid = &fman_icid_tbl_ls1046a[i];
+
+		out_be32(&fm->fm_bmi_common.fmbm_ppid[icid->port_id - 1],
+			 icid->icid);
+	}
+
+	setup_qbman_portals();
 
-	set_fman_icids(fman_icid_tbl_ls1046a, ARRAY_SIZE(fman_icid_tbl_ls1046a));
+	of_register_fixup(icid_of_fixup, NULL);
 
 	return 0;
 }
-postcore_initcall(set_icids);
\ No newline at end of file
+coredevice_initcall(layerscape_setup_icids);
diff --git a/include/soc/fsl/immap_lsch2.h b/include/soc/fsl/immap_lsch2.h
index 4eb6658788..1b74c77908 100644
--- a/include/soc/fsl/immap_lsch2.h
+++ b/include/soc/fsl/immap_lsch2.h
@@ -56,6 +56,7 @@
 #define LSCH2_PCIE1_ADDR		(LSCH2_IMMR + 0x02400000)
 #define LSCH2_PCIE2_ADDR		(LSCH2_IMMR + 0x02500000)
 #define LSCH2_PCIE3_ADDR		(LSCH2_IMMR + 0x02600000)
+#define LSCH2_SEC_ADDR			(LSCH2_IMMR + 0x00700000)
 #define LSCH2_QDMA_BASE_ADDR		(LSCH2_IMMR + 0x07380000)
 #define LSCH2_EHCI_USB1_ADDR		(LSCH2_IMMR + 0x07600000)
 
-- 
2.25.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
