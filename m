Delivery-date: Tue, 13 Sep 2022 11:55:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY2dG-003VMH-FY
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 11:55:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY2dF-0006kQ-3y
	for lore@pengutronix.de; Tue, 13 Sep 2022 11:55:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hb83ViH6HYrZkzbTB2L+Mzn39D5xL5FkE6te/dxgqUU=; b=YpWShmhxaYFmFA
	xrnotL90A4CsheD7cuiSNRXnzF1C/oTfozdHV+RAjvZVZhbZjUtitgaBoiRB2EvHo0a9oeZ+qbdEw
	cHG0HIYGLN5//il3ylSiKyWCAY6CQsOpVIA9zJ0m7jPKyAegWYOZ1a4zxcVIoD9e5icLqvzBDT46N
	kaNKQKxRn1YyakPaHdT+JpYE7+GpAZL/MycgOVC4yStagaF3fMIlow0cWe/Q/pFjaS6iyi67BJ2oj
	8Y480zVVDqIDybimhf87B02WVdp7HSiibLsMBXniKdSq1ND0cUBbUGR+WW5n5v0HarQI4ZM2A+/7l
	yo8ibmOY9NeXGu37Q/zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2bT-005h4b-Ky; Tue, 13 Sep 2022 09:53:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2Y7-005dlX-8e
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 09:49:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY2Y5-00061Z-Vl; Tue, 13 Sep 2022 11:49:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oY2Y6-000TKN-O7; Tue, 13 Sep 2022 11:49:45 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oY2Y4-000Q7m-L2; Tue, 13 Sep 2022 11:49:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Sep 2022 11:49:43 +0200
Message-Id: <20220913094943.100107-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220913094943.100107-1-s.hauer@pengutronix.de>
References: <20220913094943.100107-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_024947_492229_A833D4B2 
X-CRM114-Status: GOOD (  13.08  )
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
Subject: [PATCH 2/2] ARM: rdu2: fix dtc warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fixes:

dts/src/arm/imx6qdl.dtsi:1332.32-1334.7: Warning (graph_endpoint): /soc/ipu@2400000/port@2/endpoint@0: graph connection to node '/soc/bus@2100000/i2c@21a0000/edp-bridge@68/ports/port@1/endpoint' is not bidirectional
  also defined at dts/src/arm/imx6qdl-zii-rdu2.dtsi:647.17-649.3
  also defined at arch/arm/dts/imx6qdl-zii-rdu2.dtsi:246.17-248.3
dts/src/arm/imx6qdl-zii-rdu2.dtsi:186.25-188.6: Warning (graph_endpoint): /disp0/port@0/endpoint: graph connection to node '/soc/ipu@2400000/port@2/endpoint@0' is not bidirectional
dts/src/arm/imx6qdl.dtsi:1332.32-1334.7: Warning (graph_endpoint): /soc/ipu@2400000/port@2/endpoint@0: graph connection to node '/soc/bus@2100000/i2c@21a0000/edp-bridge@68/ports/port@1/endpoint' is not bidirectional
  also defined at dts/src/arm/imx6qdl-zii-rdu2.dtsi:647.17-649.3
  also defined at arch/arm/dts/imx6qdl-zii-rdu2.dtsi:246.17-248.3
dts/src/arm/imx6qdl-zii-rdu2.dtsi:186.25-188.6: Warning (graph_endpoint): /disp0/port@0/endpoint: graph connection to node '/soc/ipu@2400000/port@2/endpoint@0' is not bidirectional

I don't know if the link is non biderectional intentionally, it might
have something to do with the runtime dts adjustments. The warning
is around for a long time now without anybody caring, so just get
rid of it and see if somebody can explain the backgrounds or provide
a proper solution for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
index 59f7656139..714ba8e755 100644
--- a/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/dts/imx6qdl-zii-rdu2.dtsi
@@ -243,10 +243,6 @@
 	};
 };
 
-&ipu1_di0_disp0 {
-	remote-endpoint = <&tc358767_in>;
-};
-
 &ldb {
 	lvds-channel@0 {
 		fsl,data-width = <24>;
-- 
2.30.2



