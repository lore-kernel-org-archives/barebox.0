Delivery-date: Wed, 19 Oct 2022 12:42:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol6X3-000aaZ-Kn
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 12:42:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol6X1-0006tI-0z
	for lore@pengutronix.de; Wed, 19 Oct 2022 12:42:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=21kkybbN/DsaMG3OfGVKPEMu6J/PrRLlNvOWPeOWc7Q=; b=oGs9N0FMcRDW4qxU6jCirRZUxs
	OiLRTWNoz832a2YNCbBpeVOmlf/VLs0iEksbZvDH8G6plBDEZU1CLUywxi+6LR7BPXXd+wauqhR7y
	7Fm9oLYKFLfRsG2e4xW6LiQ84A6o3l2vxHR51D4pv1iUj1elEpGn4ecrdHTmfQMlpx+OQ3dvMHTiI
	oo75iu/hDsenJtYiCraHgO0jol4Two3A+lAEFgpZ5LvnPZZdlo+lXm68jFnoGZfH6/kvlZgPc3oAd
	pR0FwKETbTdGMdqHyYfwutFZLmWDANFDQtnSsC2lBZs1d5mA0R6RMnkom7dUT7935YQLzjJmonWYd
	Cv+PwshQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol6V3-000NvF-FX; Wed, 19 Oct 2022 10:40:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol6Uy-000NmT-5p
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 10:40:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ol6Ur-0006Xf-BM; Wed, 19 Oct 2022 12:40:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ol6Uq-0006GD-M8; Wed, 19 Oct 2022 12:40:24 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ol6Up-00AmFQ-Rd; Wed, 19 Oct 2022 12:40:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Oct 2022 12:40:21 +0200
Message-Id: <20221019104022.2568647-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221019104022.2568647-1-s.hauer@pengutronix.de>
References: <20221019104022.2568647-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_034032_266646_CEE70B00 
X-CRM114-Status: UNSURE (   9.95  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: imx6qdl-phytec-pfla02: Remove unused environment nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The environment nodes for sd1, sd2 and sd4 reference a
partname:barebox-environment partition, but that isn't defined anywhere.
Remove the unused nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index ada1607688..7d6bd387fa 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -25,29 +25,11 @@
 			status = "disabled";
 		};
 
-		environment-sd1 {
-			compatible = "barebox,environment";
-			device-path = &usdhc1, "partname:barebox-environment";
-			status = "disabled";
-		};
-
-		environment-sd2 {
-			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
-			status = "disabled";
-		};
-
 		environment-sd3 {
 			compatible = "barebox,environment";
 			device-path = &usdhc3, "partname:barebox-environment";
 			status = "disabled";
 		};
-
-		environment-sd4 {
-			compatible = "barebox,environment";
-			device-path = &usdhc4, "partname:barebox-environment";
-			status = "disabled";
-		};
 	};
 };
 
-- 
2.30.2



