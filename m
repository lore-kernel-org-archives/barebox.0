Delivery-date: Thu, 04 Jan 2024 15:19:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYv-003cQj-0W
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYt-0005Cc-Qz
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EDDektEYNRmdVdjGsj/Uw9iPzecRtPOEkureU44TPlI=; b=GYuA3ZL5bXMjFFTQoZOV3YvnBW
	uqRXjYwxepaamH5SfmQw4LjMUfEx7hpR5rAcO/p3FwMUuPDrL4LoTkIGIj41K++RRthuEzy1IBYyk
	zs15TXLYR8sDUQ4jb2O+IPUJO6t89xA12vR04bm+H6zhpOJcwUrrfAHlvSS0ojGdAORhuHg16P+9x
	Rgr0ED26s7O9YTInwPEulc/7DiCgtx9soUc1Bl0UJK7YhW9SEzP+j+bdGBXdQPr2NHVNxOIojxEmV
	aAF4WRO7LGtTWreqIYl7jF2QPaIA5vtck4zP8BWYH1GG6yIDAN6cI0YbYRMG4wzCSi0z0vsaKX8l2
	1wlRSQRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXn-00EJ6C-38;
	Thu, 04 Jan 2024 14:17:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIzC-2M
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004HY-JE; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000MyK-Nw; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017yd-2B;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:36 +0100
Message-Id: <20240104141746.165014-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061751_827880_786981F4 
X-CRM114-Status: GOOD (  11.38  )
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
Subject: [PATCH 09/19] ARM: Layerscape: pass base addresses to errata functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/errata.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-layerscape/errata.c b/arch/arm/mach-layerscape/errata.c
index 4a8309167c..fe0d0ab45e 100644
--- a/arch/arm/mach-layerscape/errata.c
+++ b/arch/arm/mach-layerscape/errata.c
@@ -93,11 +93,10 @@ static void erratum_a009798_ls1046a(void)
 	set_usb_sqrxtune(scfg, SCFG_USB3PRM1CR_USB3);
 }
 
-static void erratum_a008850_early(void)
+static void erratum_a008850_early(struct ccsr_cci400 __iomem *cci,
+				  struct ccsr_ddr __iomem *ddr)
 {
 	/* part 1 of 2 */
-	struct ccsr_cci400 __iomem *cci = IOMEM(LSCH2_CCI400_ADDR);
-	struct ccsr_ddr __iomem *ddr = IOMEM(LSCH2_DDR_ADDR);
 
 	/* Skip if running at lower exception level */
 #if __LINUX_ARM_ARCH__ > 7
@@ -112,14 +111,9 @@ static void erratum_a008850_early(void)
 	ddr_out32(&ddr->eor, DDR_EOR_RD_REOD_DIS | DDR_EOR_WD_REOD_DIS);
 }
 
-static void layerscape_errata(void)
-{
-	erratum_a008850_early();
-}
-
 void ls1046a_errata(void)
 {
-	layerscape_errata();
+	erratum_a008850_early(IOMEM(LSCH2_CCI400_ADDR), IOMEM(LSCH2_DDR_ADDR));
 	erratum_a009008_ls1046a();
 	erratum_a009798_ls1046a();
 	erratum_a008997_ls1046a();
@@ -128,18 +122,17 @@ void ls1046a_errata(void)
 
 void ls1021a_errata(void)
 {
-	layerscape_errata();
+	erratum_a008850_early(IOMEM(LSCH2_CCI400_ADDR), IOMEM(LSCH2_DDR_ADDR));
 	erratum_a009008_ls1021a();
 	erratum_a009798_ls1021a();
 	erratum_a008997_ls1021a();
 	erratum_a009007_ls1021a();
 }
 
-static void erratum_a008850_post(void)
+static void erratum_a008850_post(struct ccsr_cci400 __iomem *cci,
+				 struct ccsr_ddr __iomem *ddr)
 {
 	/* part 2 of 2 */
-	struct ccsr_cci400 __iomem *cci = IOMEM(LSCH2_CCI400_ADDR);
-	struct ccsr_ddr __iomem *ddr = IOMEM(LSCH2_DDR_ADDR);
 	u32 tmp;
 
 	/* Skip if running at lower exception level */
@@ -227,11 +220,11 @@ static void erratum_a009942_check_cpo(void)
 
 void ls1046a_errata_post_ddr(void)
 {
-	erratum_a008850_post();
+	erratum_a008850_post(IOMEM(LSCH2_CCI400_ADDR), IOMEM(LSCH2_DDR_ADDR));
 	erratum_a009942_check_cpo();
 }
 
 void ls1021a_errata_post_ddr(void)
 {
-	erratum_a008850_post();
+	erratum_a008850_post(IOMEM(LSCH2_CCI400_ADDR), IOMEM(LSCH2_DDR_ADDR));
 }
-- 
2.39.2



