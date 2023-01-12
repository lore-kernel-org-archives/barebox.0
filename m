Delivery-date: Thu, 12 Jan 2023 16:21:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFzOn-009tJo-Ck
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 16:21:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFzOl-0008Lc-5P
	for lore@pengutronix.de; Thu, 12 Jan 2023 16:21:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3vH/hAaPYrQPhmwGBZ9HBCiaC5tZ5FfL4ZVmy/nJNEs=; b=eDx2/xJUmmA1/MxvD5dHa/FQkl
	X8x0j7pcNfFTT3X+wJUNtbClKTDNArH9wprqLGD+whXdUYifqlqf7GesLYTmi1PI/6fFbsISjb41L
	79fI+iG8z5eY8etLBXXp2Jd2YdxTa3p91G1w9aKmMJTwcouGeBGrlXaZvY1AYgAaTmE5s27yE+0i4
	dzYRChaF4A2nRJAXSSSsdBKrggXr+Jn6sCo0GriuzKmLlpQq0km7T/zYO/unBTH2QLwkobwITOf4T
	I4DVZl4teoFiNn4gpKoSemvRHyoI0b8KQnw/LNWxvOs7DVd+DUFesVPCeBDMee7xVyQI31B5h1Fwe
	oFpmdPbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzNR-00Fau7-MG; Thu, 12 Jan 2023 15:20:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFzML-00FaQy-2h
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 15:19:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFzMJ-0007cV-Nq; Thu, 12 Jan 2023 16:19:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pFzMJ-005ZOl-3N; Thu, 12 Jan 2023 16:19:15 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pFzMI-00EBMN-Ak; Thu, 12 Jan 2023 16:19:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 12 Jan 2023 16:19:13 +0100
Message-Id: <20230112151913.3380033-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_071917_146027_353C3E4B 
X-CRM114-Status: UNSURE (   9.00  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: remove duplicate reserved-memory nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

reseved-memory nodes are duplicated in some dts file, remove the
duplicates.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-prti6q-emmc.dtsi | 11 -----------
 arch/arm/dts/imx6ul-prti6g.dts        | 11 -----------
 arch/arm/dts/imx6ull-jozacp.dts       | 11 -----------
 3 files changed, 33 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
index 453bf80ea1..8ad41174d4 100644
--- a/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
+++ b/arch/arm/dts/imx6qdl-prti6q-emmc.dtsi
@@ -88,17 +88,6 @@
 			compatible = "ramoops";
 		};
 	};
-
-	reserved-memory {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		/* Address will be determined by the bootloader */
-		ramoops {
-			compatible = "ramoops";
-		};
-	};
 };
 
 &usdhc3 {
diff --git a/arch/arm/dts/imx6ul-prti6g.dts b/arch/arm/dts/imx6ul-prti6g.dts
index 8f17ad976f..3efbf357f1 100644
--- a/arch/arm/dts/imx6ul-prti6g.dts
+++ b/arch/arm/dts/imx6ul-prti6g.dts
@@ -23,17 +23,6 @@
 			compatible = "ramoops";
 		};
 	};
-
-	reserved-memory {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		/* Address will be determined by the bootloader */
-		ramoops {
-			compatible = "ramoops";
-		};
-	};
 };
 
 &ecspi1 {
diff --git a/arch/arm/dts/imx6ull-jozacp.dts b/arch/arm/dts/imx6ull-jozacp.dts
index c7f05f12e8..c30ba759ee 100644
--- a/arch/arm/dts/imx6ull-jozacp.dts
+++ b/arch/arm/dts/imx6ull-jozacp.dts
@@ -23,17 +23,6 @@
 			compatible = "ramoops";
 		};
 	};
-
-	reserved-memory {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges;
-
-		/* Address will be determined by the bootloader */
-		ramoops {
-			compatible = "ramoops";
-		};
-	};
 };
 
 &usdhc1 {
-- 
2.30.2



