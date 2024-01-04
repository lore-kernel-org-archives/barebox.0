Delivery-date: Thu, 04 Jan 2024 15:19:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYz-003cTE-1K
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYy-0005HK-3o
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b4c0bb8pAFGEWQi3RDA3x3aqUe/kGV+v68eiK9uZqSk=; b=LLCOVrL2L1kqKpTQcSVRZV1lvq
	I87gDTKaeexG+1JttCeWNoerwRuHu0bzVxRbN/gUw9redXZJaKPa3BfifrHxVhNYfKjrNwsFNYQPj
	ghujMN17UT2eqkAGZB5ZMrs9m4T1WgxfpRCGJNGI0wwiuqt8gi8HD6MzIo/SIWA0LHyvunpVVs8FT
	IK1wTe7LLlfpuWV+GopgcPvqhllGpYnbOTXTgSjoJhTyIXINz7POlxpdSqC0ZyMuvPb3a3F3LObwC
	ly/peXmO9U0JoBdwEVGWOsMqfv+2NgtpPnVaTjZLo01bgTnbLqhd2U994Nc3RxYQ4CxEoyQ8nZqIx
	tR/K+zBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOY0-00EJIe-25;
	Thu, 04 Jan 2024 14:18:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXm-00EJ4O-01
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:18:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004Hc-NK; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000MyN-PJ; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017ys-2H;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:38 +0100
Message-Id: <20240104141746.165014-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061758_054291_1E8819C2 
X-CRM114-Status: GOOD (  12.17  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 11/19] ARM: layerscape: implement ls1028a errata
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/errata.c | 49 +++++++++++++++++++++++++++++++
 include/mach/layerscape/errata.h  |  2 ++
 2 files changed, 51 insertions(+)

diff --git a/arch/arm/mach-layerscape/errata.c b/arch/arm/mach-layerscape/errata.c
index fe0d0ab45e..deab584243 100644
--- a/arch/arm/mach-layerscape/errata.c
+++ b/arch/arm/mach-layerscape/errata.c
@@ -2,6 +2,7 @@
 #include <common.h>
 #include <io.h>
 #include <soc/fsl/immap_lsch2.h>
+#include <soc/fsl/immap_lsch3.h>
 #include <soc/fsl/fsl_ddr_sdram.h>
 #include <asm/system.h>
 #include <mach/layerscape/errata.h>
@@ -22,6 +23,15 @@ static void erratum_a008997_ls1021a(void)
 	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB1);
 }
 
+static void erratum_a008997_ls1028a(void)
+{
+	void __iomem *dcsr = IOMEM(LSCH3_DCSR_BASE);
+
+	clrsetbits_le32(dcsr + LSCH3_DCSR_USB_IOCR1,
+			0x7f << 11,
+			LSCH3_DCSR_USB_PCSTXSWINGFULL << 11);
+}
+
 static void erratum_a008997_ls1046a(void)
 {
 	u32 __iomem *scfg = (u32 __iomem *)LSCH2_SCFG_ADDR;
@@ -56,6 +66,11 @@ static inline void set_usb_txvreftune(u32 __iomem *scfg, u32 offset)
 	scfg_clrsetbits32(scfg + offset / 4, 0xf << 6, SCFG_USB_TXVREFTUNE << 6);
 }
 
+static void erratum_a009007_ls1028a(void)
+{
+	erratum_a009007(IOMEM(LSCH3_DCSR_BASE), 0x0000, 0x0080, 0x0380, 0x0b80);
+}
+
 static void erratum_a009008_ls1021a(void)
 {
 	u32 __iomem *scfg = IOMEM(LSCH2_SCFG_ADDR);
@@ -111,6 +126,26 @@ static void erratum_a008850_early(struct ccsr_cci400 __iomem *cci,
 	ddr_out32(&ddr->eor, DDR_EOR_RD_REOD_DIS | DDR_EOR_WD_REOD_DIS);
 }
 
+/*
+ * This erratum requires a register write before being Memory
+ * controller 3 being enabled.
+ */
+static void erratum_a008514(void)
+{
+	u32 *eddrtqcr1;
+
+	eddrtqcr1 = IOMEM(LSCH3_DCSR_DDR3_ADDR) + 0x800;
+	out_le32(eddrtqcr1, 0x63b20002);
+}
+
+static void erratum_a009798(void)
+{
+        u32 __iomem *scfg = IOMEM(LSCH3_SCFG_BASE);
+
+        clrbits_be32(scfg + LSCH3_SCFG_USB3PRM1CR / 4,
+                        LSCH3_SCFG_USB_SQRXTUNE_MASK << 23);
+}
+
 void ls1046a_errata(void)
 {
 	erratum_a008850_early(IOMEM(LSCH2_CCI400_ADDR), IOMEM(LSCH2_DDR_ADDR));
@@ -129,6 +164,15 @@ void ls1021a_errata(void)
 	erratum_a009007_ls1021a();
 }
 
+void ls1028a_errata(void)
+{
+	erratum_a008850_early(IOMEM(LSCH3_CCI400_ADDR), IOMEM(LSCH3_DDR_ADDR));
+	erratum_a009007_ls1028a();
+	erratum_a008997_ls1028a();
+	erratum_a008514();
+	erratum_a009798();
+}
+
 static void erratum_a008850_post(struct ccsr_cci400 __iomem *cci,
 				 struct ccsr_ddr __iomem *ddr)
 {
@@ -228,3 +272,8 @@ void ls1021a_errata_post_ddr(void)
 {
 	erratum_a008850_post(IOMEM(LSCH2_CCI400_ADDR), IOMEM(LSCH2_DDR_ADDR));
 }
+
+void ls1028a_errata_post_ddr(void)
+{
+	erratum_a008850_post(IOMEM(LSCH3_CCI400_ADDR), IOMEM(LSCH3_DDR_ADDR));
+}
diff --git a/include/mach/layerscape/errata.h b/include/mach/layerscape/errata.h
index 4755031717..0611bd5f0f 100644
--- a/include/mach/layerscape/errata.h
+++ b/include/mach/layerscape/errata.h
@@ -4,8 +4,10 @@
 #define __MACH_ERRATA_H
 
 void ls1046a_errata(void);
+void ls1028a_errata(void);
 void ls1021a_errata(void);
 void ls1046a_errata_post_ddr(void);
+void ls1028a_errata_post_ddr(void);
 void ls1021a_errata_post_ddr(void);
 
 #endif /* __MACH_ERRATA_H */
-- 
2.39.2



