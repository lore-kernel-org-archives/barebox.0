Delivery-date: Tue, 13 Sep 2022 11:55:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY2dH-003VMd-Ea
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 11:55:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY2dF-0006kk-Uu
	for lore@pengutronix.de; Tue, 13 Sep 2022 11:55:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4h+Pfb+Hq9hc82rAL3fGsmOdMAkAobHU16WghQbrKYs=; b=0VJ+/XvJ+mrzJn
	Em9C2AjLJ0wrHbPx+iFeGJjbUaRYItFOP/D8oiVyrr0rYPhYlGM2LZKt7BO7n6y71QSXNZuAiNt8J
	j05ZvXQrvhiPQcOK+M/wP8S3A4rZDO5wVl2vNqBEpdOsVvJRorfXI1gdAzGrqstWd1escouDz5TjC
	XxS2KceF/uTGer1srdhpx4v1dLzBX49xdfbvy7yNGDr+RoBthTVMTDYzFbBXAnxhgtt04vxZCBfH/
	a6S6lqWV/Sgu0myzmzxKQ/+PtGBkALVqhrkFYnj1+bvCC7ka27iHKe8P1k1lY7mzUfN0jfnsSzcUh
	2vCk0cbnIrPGPldO441A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2bN-005gx7-Hl; Tue, 13 Sep 2022 09:53:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2Y7-005dlW-8Y
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 09:49:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY2Y5-00061Y-TT; Tue, 13 Sep 2022 11:49:45 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oY2Y6-000TKK-Lz; Tue, 13 Sep 2022 11:49:45 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oY2Y4-000Q7a-KS; Tue, 13 Sep 2022 11:49:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Sep 2022 11:49:42 +0200
Message-Id: <20220913094943.100107-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_024947_445118_1F567BEA 
X-CRM114-Status: UNSURE (   9.45  )
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
Cc: lst@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: rdu2: Drop redundant of graph link
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The link is also present in the upstream dtsi file in the same way, so
remove it from the barebox overlay.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index b593545ffe..59f7656139 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -234,16 +234,6 @@
 &i2c1 {
 	edp-bridge@68 {
 		pinctrl-0 = <&pinctrl_tc358767>, <&pinctrl_disp0>;
-
-		ports {
-			port@1 {
-				reg = <1>;
-
-				tc358767_in: endpoint {
-					remote-endpoint = <&disp0_out>;
-				};
-			};
-		};
 	};
 };
 
-- 
2.30.2



