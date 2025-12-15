Delivery-date: Mon, 15 Dec 2025 15:22:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Sb-00Blv4-20
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 15:22:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV9Sb-0002ab-2K
	for lore@pengutronix.de; Mon, 15 Dec 2025 15:22:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bx/hDwdlsnboPFFqfSC97reH17JSnyIAyQofmryf4CQ=; b=KeZYAVYu3F6S5a11d4RJvNCEvc
	61y/BdfiWToW8u5bs506oMK4D/lYJOffkFJoM+XPIGRnVz/KNcc4WdOukIQ5lTM+173KeBiKWl7Ho
	eiOq68uN72c3KBlO+/w/mO0e/qMRgnMehaQEDthU3ZYv1r985OstJKSlfmB5VWsIR7j7u6hwBiB4p
	MzPGGs4HXBiiXsWmHZllYjoksSBt1u6W8AuMlHkmE0iaYx3BS1Y6Cd18o+e8O8y4hhe6oMzvHyJSQ
	U83SQmbdpFbHCdd4kORTCPYaVy1OrF+dD5Lp7OtJ5yq6/qof376ILNDwG/R539DBJx77vzGDOgLhv
	MuJz+hCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9S9-00000003mkP-0iXd;
	Mon, 15 Dec 2025 14:21:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9S4-00000003mha-09j1
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 14:21:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vV9S2-0002Gv-K4; Mon, 15 Dec 2025 15:21:26 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 15 Dec 2025 15:21:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-2-11eea1b2ef41@pengutronix.de>
References: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
In-Reply-To: <20251215-v2025-11-0-topic-socfpga-agilex5-sdhci-v1-0-11eea1b2ef41@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_062128_075642_37980A72 
X-CRM114-Status: UNSURE (   8.11  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] dts: include: reset: rst-mgr-s10: add SOFTPYH_RESET
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 dts/include/dt-bindings/reset/altr,rst-mgr-s10.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h b/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h
index 04c4d0c6fd..e0f3d5395c 100644
--- a/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h
+++ b/dts/include/dt-bindings/reset/altr,rst-mgr-s10.h
@@ -22,7 +22,7 @@
 #define USB0_RESET		35
 #define USB1_RESET		36
 #define NAND_RESET		37
-/* 38 is empty */
+#define SOFTPHY_RESET		38
 #define SDMMC_RESET		39
 #define EMAC0_OCP_RESET		40
 #define EMAC1_OCP_RESET		41

-- 
2.51.0



