Delivery-date: Tue, 19 Dec 2023 14:19:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa0F-004ZuG-04
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:19:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa0E-00089K-3D
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:19:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gUOchuJXQWZWJXiZhbHL8UHcq46dX0qJaFfVnl7oUgk=; b=O+UdN2Wb6qb7zy+jC8aNb8SPr6
	7qRGaFc3YK/GX7cu2b5bDfhsz1SzK9+RERmV72wbVFrovFBWmb8n7MNfHgykFJsPPXy12XvirzrQY
	nbvHPBDWhkDMS8m/WXogf5bj0rrKxYFPAbWkN/I+vhdS2aizfTH1aVmDetNhx19sUVQnGB53mIOnh
	btJyVxIB+fZYyOYYwmneMsBK6WDKf8FUoU3vcCctQOxZbK3ubBbdUmkjEWfsthjOQTRqQlvSySbmu
	N8wXCWS+8fdYvXaqeh0IRtX0bovVrpcNnO2R1tKh4RT5g7bdpzFEXDGdOSlqCu7JMeAw5Qh5LRhYS
	aNwK3+iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZz7-00EAUc-1x;
	Tue, 19 Dec 2023 13:18:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZz2-00EATr-2e
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:18:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZz1-0007bk-M4; Tue, 19 Dec 2023 14:18:03 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZz0-0001ng-5z; Tue, 19 Dec 2023 14:18:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZz1-0001xJ-0j;
	Tue, 19 Dec 2023 14:18:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:18:02 +0100
Message-Id: <20231219131802.7475-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219131802.7475-1-s.hauer@pengutronix.de>
References: <20231219131802.7475-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_051805_009712_4146FBD0 
X-CRM114-Status: GOOD (  16.68  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] fsl-ddr: make endianess runtime decision
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/ls1021aiot/lowlevel.c |  2 +-
 arch/arm/boards/ls1046ardb/lowlevel.c |  2 +-
 arch/arm/boards/tqmls1046a/lowlevel.c |  2 +-
 drivers/ddr/fsl/arm_ddr_gen3.c        |  7 ++-
 drivers/ddr/fsl/fsl_ddr_gen4.c        |  7 ++-
 drivers/ddr/fsl/main.c                | 13 ++++--
 include/soc/fsl/fsl_ddr_sdram.h       | 65 ++++++++++++++++++++-------
 7 files changed, 74 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/ls1021aiot/lowlevel.c b/arch/arm/boards/ls1021aiot/lowlevel.c
index f255c425b7..6bba528635 100644
--- a/arch/arm/boards/ls1021aiot/lowlevel.c
+++ b/arch/arm/boards/ls1021aiot/lowlevel.c
@@ -91,7 +91,7 @@ static noinline __noreturn void ls1021aiot_r_entry(void)
 	udelay(500);
 	putc_ll('>');
 
-	fsl_ddr_set_memctl_regs(&ddrc[0], 0);
+	fsl_ddr_set_memctl_regs(&ddrc[0], 0, false);
 
 	ls1021a_errata_post_ddr();
 
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index e7544df86a..408e6017f6 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -209,7 +209,7 @@ static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 		goto err;
 	}
 
-	memsize = fsl_ddr_sdram(&ls1046a_info);
+	memsize = fsl_ddr_sdram(&ls1046a_info, false);
 
 	ls1046a_errata_post_ddr();
 
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index dc64762433..6a5ad1f83a 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -108,7 +108,7 @@ static noinline __noreturn void tqmls1046a_r_entry(void)
 	udelay(500);
 	putc_ll('>');
 
-	fsl_ddr_set_memctl_regs(&ddrc[0], 0);
+	fsl_ddr_set_memctl_regs(&ddrc[0], 0, false);
 
 	ls1046a_errata_post_ddr();
 
diff --git a/drivers/ddr/fsl/arm_ddr_gen3.c b/drivers/ddr/fsl/arm_ddr_gen3.c
index a8b96f1261..1cbdb1446f 100644
--- a/drivers/ddr/fsl/arm_ddr_gen3.c
+++ b/drivers/ddr/fsl/arm_ddr_gen3.c
@@ -21,7 +21,7 @@
  * Dividing the initialization to two steps to deassert DDR reset signal
  * to comply with JEDEC specs for RDIMMs.
  */
-void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step)
+void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step, bool little_endian)
 {
 	struct ccsr_ddr __iomem *ddr = c->base;
 	const fsl_ddr_cfg_regs_t *regs = &c->fsl_ddr_config_reg;
@@ -30,6 +30,11 @@ void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step)
 	u32 total_gb_size_per_controller;
 	int timeout;
 
+	if (little_endian)
+		ddr_endianess = DDR_ENDIANESS_LE;
+	else
+		ddr_endianess = DDR_ENDIANESS_BE;
+
 	if (step == 2)
 		goto step2;
 
diff --git a/drivers/ddr/fsl/fsl_ddr_gen4.c b/drivers/ddr/fsl/fsl_ddr_gen4.c
index 147ff9916d..19aa4f22a9 100644
--- a/drivers/ddr/fsl/fsl_ddr_gen4.c
+++ b/drivers/ddr/fsl/fsl_ddr_gen4.c
@@ -36,7 +36,7 @@ static void set_wait_for_bits_clear(void *ptr, u32 value, u32 bits)
  * Dividing the initialization to two steps to deassert DDR reset signal
  * to comply with JEDEC specs for RDIMMs.
  */
-void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step)
+void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step, bool little_endian)
 {
 	struct ccsr_ddr __iomem *ddr = c->base;
 	const fsl_ddr_cfg_regs_t *regs = &c->fsl_ddr_config_reg;
@@ -53,6 +53,11 @@ void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step)
 	u32 cs0_bnds, cs1_bnds, cs2_bnds, cs3_bnds, cs0_config;
 	mod_bnds = regs->cs[0].config & CTLR_INTLV_MASK;
 
+	if (little_endian)
+		ddr_endianess = DDR_ENDIANESS_LE;
+	else
+		ddr_endianess = DDR_ENDIANESS_BE;
+
 	if (step == 2)
 		goto step2;
 
diff --git a/drivers/ddr/fsl/main.c b/drivers/ddr/fsl/main.c
index c05f6d52fb..27303fec7e 100644
--- a/drivers/ddr/fsl/main.c
+++ b/drivers/ddr/fsl/main.c
@@ -13,6 +13,8 @@
 #include <linux/log2.h>
 #include "fsl_ddr.h"
 
+enum ddr_endianess ddr_endianess;
+
 /*
  * ASSUMPTIONS:
  *    - Same number of CONFIG_DIMM_SLOTS_PER_CTLR on each controller
@@ -378,12 +380,17 @@ static unsigned long long fsl_ddr_compute(struct fsl_ddr_info *pinfo)
 	return total_mem;
 }
 
-phys_size_t fsl_ddr_sdram(struct fsl_ddr_info *pinfo)
+phys_size_t fsl_ddr_sdram(struct fsl_ddr_info *pinfo, bool little_endian)
 {
 	unsigned int i;
 	unsigned long long total_memory;
 	int deassert_reset = 0;
 
+	if (little_endian)
+		ddr_endianess = DDR_ENDIANESS_LE;
+	else
+		ddr_endianess = DDR_ENDIANESS_BE;
+
 	total_memory = fsl_ddr_compute(pinfo);
 
 	/* setup 3-way interleaving before enabling DDRC */
@@ -428,14 +435,14 @@ phys_size_t fsl_ddr_sdram(struct fsl_ddr_info *pinfo)
 		 * The following call with step = 1 returns before enabling
 		 * the controller. It has to finish with step = 2 later.
 		 */
-		fsl_ddr_set_memctl_regs(c, deassert_reset ? 1 : 0);
+		fsl_ddr_set_memctl_regs(c, deassert_reset ? 1 : 0, little_endian);
 	}
 	if (deassert_reset) {
 		for (i = 0; i < pinfo->num_ctrls; i++) {
 			struct fsl_ddr_controller *c = &pinfo->c[i];
 
 			/* Call with step = 2 to continue initialization */
-			fsl_ddr_set_memctl_regs(c, 2);
+			fsl_ddr_set_memctl_regs(c, 2, little_endian);
 		}
 	}
 
diff --git a/include/soc/fsl/fsl_ddr_sdram.h b/include/soc/fsl/fsl_ddr_sdram.h
index 23f0816599..c20bc027fe 100644
--- a/include/soc/fsl/fsl_ddr_sdram.h
+++ b/include/soc/fsl/fsl_ddr_sdram.h
@@ -449,21 +449,54 @@ struct fsl_ddr_info {
 	unsigned long long mem_base;
 };
 
-phys_size_t fsl_ddr_sdram(struct fsl_ddr_info *pinfo);
-void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step);
-
-#ifdef CONFIG_SYS_FSL_DDR_LE
-#define ddr_in32(a)	in_le32(a)
-#define ddr_out32(a, v)	out_le32(a, v)
-#define ddr_setbits32(a, v)	setbits_le32(a, v)
-#define ddr_clrbits32(a, v)	clrbits_le32(a, v)
-#define ddr_clrsetbits32(a, clear, set)	clrsetbits_le32(a, clear, set)
-#else
-#define ddr_in32(a)	in_be32(a)
-#define ddr_out32(a, v)	out_be32(a, v)
-#define ddr_setbits32(a, v)	setbits_be32(a, v)
-#define ddr_clrbits32(a, v)	clrbits_be32(a, v)
-#define ddr_clrsetbits32(a, clear, set)	clrsetbits_be32(a, clear, set)
-#endif
+phys_size_t fsl_ddr_sdram(struct fsl_ddr_info *pinfo, bool little_endian);
+void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step, bool little_endian);
+
+enum ddr_endianess {
+	DDR_ENDIANESS_LE,
+	DDR_ENDIANESS_BE,
+};
+
+extern enum ddr_endianess ddr_endianess;
+
+static inline u32 ddr_in32(void __iomem *reg)
+{
+	if (ddr_endianess == DDR_ENDIANESS_LE)
+		return in_le32(reg);
+	else
+		return in_be32(reg);
+}
+
+static inline void ddr_out32(void __iomem *reg, u32 val)
+{
+	if (ddr_endianess == DDR_ENDIANESS_LE)
+		out_le32(reg, val);
+	else
+		out_be32(reg, val);
+}
+
+static inline void ddr_setbits32(void __iomem *reg, u32 set)
+{
+	if (ddr_endianess == DDR_ENDIANESS_LE)
+		setbits_le32(reg, set);
+	else
+		setbits_be32(reg, set);
+}
+
+static inline void ddr_clrbits32(void __iomem *reg, u32 clr)
+{
+	if (ddr_endianess == DDR_ENDIANESS_LE)
+		clrbits_le32(reg, clr);
+	else
+		clrbits_be32(reg, clr);
+}
+
+static inline void ddr_clrsetbits32(void __iomem *reg, u32 clr, u32 set)
+{
+	if (ddr_endianess == DDR_ENDIANESS_LE)
+		clrsetbits_le32(reg, clr, set);
+	else
+		clrsetbits_be32(reg, clr, set);
+}
 
 #endif
-- 
2.39.2



