Delivery-date: Thu, 31 Aug 2023 15:07:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbhOT-00FyfF-CT
	for lore@lore.pengutronix.de; Thu, 31 Aug 2023 15:07:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbhOR-0005I1-8G
	for lore@pengutronix.de; Thu, 31 Aug 2023 15:07:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EGWUdSzD07Rvs7dGqY5j9l713+3hFkXAjffzYCOcnDY=; b=2QFP4xZ9tFxMINQqPb7Vi/20Nt
	0CxxcuQByVMd5wIFgqgZiV6WWo2sx7srK9qN0zeJrUsizS5zt859AKOqEW/cNNgE+DoCaVFdiqM9N
	DFAnHzVQDUffjUH9+LYWUbu10HEbnlvOfJmmon9kBbfOMnbALRmSA2nsXjUFKKnhICTl4AHgtKXnm
	mOBVpvphdLhGznHk/f8Lh8MX0lKMk9b7wuZ6n3dCUKX6jDamGrpbcZfU7hvyawGRnLqxrkG0lpx9b
	EUYzl5tv6myIdoBBxsuGCd38ZZ5Qe/TQocha0qu6o/tqmctAYQzH92zVtGjKb2QzQ1hgilxO1++Xr
	KANCBMoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbhN1-00FKQi-2P;
	Thu, 31 Aug 2023 13:05:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbhMx-00FKPo-2b
	for barebox@lists.infradead.org;
	Thu, 31 Aug 2023 13:05:57 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qbhMt-000551-0K
	for barebox@lists.infradead.org; Thu, 31 Aug 2023 15:05:51 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 31 Aug 2023 15:05:48 +0200
Message-Id: <20230831130549.3357673-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_060555_866007_993269AA 
X-CRM114-Status: GOOD (  12.04  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX: esdctl: add force_split option to add_mem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently add_mem() tries to merge the memory banks if they are
continuous. Add a option to avoid this merge which is not always useful
e.g. for devices with memory > 4G.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 1798ad48e50a..54c62c47338e 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -183,14 +183,14 @@ static inline u64 __imx6_mmdc_sdram_size(void __iomem *mmdcbase, int cs)
 }
 
 static int add_mem(unsigned long base0, unsigned long size0,
-		unsigned long base1, unsigned long size1)
+		   unsigned long base1, unsigned long size1, bool force_split)
 {
 	int ret0 = 0, ret1 = 0;
 
 	debug("%s: cs0 base: 0x%08lx cs0 size: 0x%08lx\n", __func__, base0, size0);
 	debug("%s: cs1 base: 0x%08lx cs1 size: 0x%08lx\n", __func__, base1, size1);
 
-	if (base0 + size0 == base1 && size1 > 0) {
+	if (!force_split && base0 + size0 == base1 && size1 > 0) {
 		/*
 		 * concatenate both chip selects to a single bank
 		 */
@@ -229,13 +229,13 @@ static inline void imx_esdctl_v2_disable_default(void __iomem *esdctlbase)
 static int imx_esdctl_v1_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
 	return add_mem(data->base0, imx_v1_sdram_size(esdctlbase, 0),
-			data->base1, imx_v1_sdram_size(esdctlbase, 1));
+		       data->base1, imx_v1_sdram_size(esdctlbase, 1), false);
 }
 
 static int imx_esdctl_v2_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
 	return add_mem(data->base0, imx_v2_sdram_size(esdctlbase, 0),
-			data->base1, imx_v2_sdram_size(esdctlbase, 1));
+		       data->base1, imx_v2_sdram_size(esdctlbase, 1), false);
 }
 
 static int imx_esdctl_v2_bug_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
@@ -243,19 +243,19 @@ static int imx_esdctl_v2_bug_add_mem(void *esdctlbase, struct imx_esdctl_data *d
 	imx_esdctl_v2_disable_default(esdctlbase);
 
 	return add_mem(data->base0, imx_v2_sdram_size(esdctlbase, 0),
-			data->base1, imx_v2_sdram_size(esdctlbase, 1));
+		       data->base1, imx_v2_sdram_size(esdctlbase, 1), false);
 }
 
 static int imx_esdctl_v3_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
 	return add_mem(data->base0, imx_v3_sdram_size(esdctlbase, 0),
-			data->base1, imx_v3_sdram_size(esdctlbase, 1));
+		       data->base1, imx_v3_sdram_size(esdctlbase, 1), false);
 }
 
 static int imx_esdctl_v4_add_mem(void *esdctlbase, struct imx_esdctl_data *data)
 {
 	return add_mem(data->base0, imx_v4_sdram_size(esdctlbase, 0),
-			data->base1, imx_v4_sdram_size(esdctlbase, 1));
+		       data->base1, imx_v4_sdram_size(esdctlbase, 1), false);
 }
 
 /*
-- 
2.39.2



