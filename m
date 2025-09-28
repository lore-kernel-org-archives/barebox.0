Delivery-date: Sun, 28 Sep 2025 15:29:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v2rSo-0024UG-2A
	for lore@lore.pengutronix.de;
	Sun, 28 Sep 2025 15:29:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v2rSo-0006wP-5W
	for lore@pengutronix.de; Sun, 28 Sep 2025 15:29:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P1ulZEsYS+yZY+B1ossYjA7osiTOma1Hp8xQkoXNCgw=; b=J3t0F4q8n0x9mcKocj9R5txRP2
	FydPEfGbeBAyq2cEfL3ZZbMypq1gpUFr6SPqDXUmdCv3RmHlKqZB2+aQ9fUZ59aD3Y3bsVC5Y8eHd
	wU9WObj57GSeFBj7tg2ts4I0NIGYeVSOqV10Rl0Kll1uGgFizKacwyhGCmabtCwOmOAmXRnvqM88d
	y6CfNOKIz9f+lJnlwjS0sVJnDAnm/RA5bnfPvIIdWRr/SVYmyWkFZZTVGFv9H+OcTZvClIX+q1QSQ
	V97l93+70kF9vcLJoyvR7An1Ht3ACaWaoF5kQTbzbsOmJn7dUaP+PK7Mzqx/GO7Y3rVHKZMK94eI6
	r6+wDp+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2rS0-0000000Fk28-109I;
	Sun, 28 Sep 2025 13:28:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2rRx-0000000Fjyr-1XNo
	for barebox@lists.infradead.org;
	Sun, 28 Sep 2025 13:28:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1v2rRs-0006lm-TX
	for barebox@lists.infradead.org; Sun, 28 Sep 2025 15:28:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <l.stach@pengutronix.de>)
	id 1v2rRr-000v1F-00
	for barebox@lists.infradead.org;
	Sun, 28 Sep 2025 15:28:19 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 28 Sep 2025 15:28:18 +0200
Message-ID: <20250928132818.3564333-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_062825_408942_8A6E0DCC 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ARM: boards: Add support for PRT8ML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Include Barebox specific DT to enabled Barebox features
like memory size detection and the feature controller.
---
 arch/arm/dts/imx8mp-prt8ml.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/imx8mp-prt8ml.dts b/arch/arm/dts/imx8mp-prt8ml.dts
index 4072d595ad0f..15c3e710ae12 100644
--- a/arch/arm/dts/imx8mp-prt8ml.dts
+++ b/arch/arm/dts/imx8mp-prt8ml.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 #include "imx8mp-prt8ml.dtsi"
+#include "imx8mp.dtsi"
 
 / {
 	chosen {
-- 
2.47.3



