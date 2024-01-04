Delivery-date: Thu, 04 Jan 2024 15:19:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYw-003cRJ-2r
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYv-0005Ek-E3
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mkL/0q++7zaAXYJY3iA4LymXq+ckRvPeynqzndaoSC4=; b=e7IyD4GOB5xUzGYcKHCAb75zMS
	WtqE60qcMQhwiLTwb8dtFbjlFWLZvmn5VATN5T6LcrFOGJCQGLjrCcSeF5ytOqnzV8uPDqnEwr5+M
	n+rVPNSAy8J1SAK++5LUhT88UORkLTxGqi9TR2UJMwdxGmgZD81FI5yxSZ49/yfWK7arxe8qNx9t2
	CiM+w3d5CPj3Wu9UMgUx2XigMoYOGMhTC9rgbN+bED46iC9MwiLmoLnM4xtb33cMNFiq9X3rI7G2f
	mplfcywPJm+s9JSgxDISBi+iZh2TvWhwqw+o+piQ8mCT8Vhm5RAvk7BL9db9CVmabzf5rRpFkLugW
	6p1Lgb3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXj-00EJ32-2D;
	Thu, 04 Jan 2024 14:17:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIyz-2M
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004HT-8n; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000My8-LW; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017xy-1w;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:32 +0100
Message-Id: <20240104141746.165014-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Subject: [PATCH 05/19] ARM: layerscape: cleanup erratum_a008997
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Drop generic erratum_a008997_layerscape() and move its implementation
into the SoC specific pendants to make the way free for more SoC
support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/errata.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-layerscape/errata.c b/arch/arm/mach-layerscape/errata.c
index 8feb98b0f7..e3093c07af 100644
--- a/arch/arm/mach-layerscape/errata.c
+++ b/arch/arm/mach-layerscape/errata.c
@@ -15,7 +15,7 @@ static inline void set_usb_pcstxswingfull(u32 __iomem *scfg, u32 offset)
 			SCFG_USB_PCSTXSWINGFULL << 9);
 }
 
-static void erratum_a008997_layerscape(void)
+static void erratum_a008997_ls1021a(void)
 {
 	u32 __iomem *scfg = (u32 __iomem *)LSCH2_SCFG_ADDR;
 
@@ -26,6 +26,7 @@ static void erratum_a008997_ls1046a(void)
 {
 	u32 __iomem *scfg = (u32 __iomem *)LSCH2_SCFG_ADDR;
 
+	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB1);
 	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB2);
 	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB3);
 }
@@ -121,7 +122,6 @@ static void layerscape_errata(void)
 	erratum_a008850_early();
 	erratum_a009008_layerscape();
 	erratum_a009798_layerscape();
-	erratum_a008997_layerscape();
 }
 
 void ls1046a_errata(void)
@@ -136,6 +136,7 @@ void ls1046a_errata(void)
 void ls1021a_errata(void)
 {
 	layerscape_errata();
+	erratum_a008997_ls1021a();
 	erratum_a009007_ls1021a();
 	erratum_a009008_ls1021a();
 }
-- 
2.39.2



