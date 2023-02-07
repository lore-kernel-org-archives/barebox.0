Delivery-date: Tue, 07 Feb 2023 21:06:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPUEu-00HMBX-FJ
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 21:06:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPUEr-0005VH-NM
	for lore@pengutronix.de; Tue, 07 Feb 2023 21:06:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3tOnUl3AZRaQKCJneku/ZiqBJaZ9mB/fjTbN8Duu86k=; b=QAxu9XxcmX1LMofUlXx6lU/Bso
	0JvP+0c95BUknp6kDO6nRP9BqBe7Avt8xfBp9RPwDqriHYs7/BR50NfuXtqzhBjhqj8JIZ79kNanV
	f5qMCEXHU77I3Trf/Q+QcUxx0l9/qoeyGky7RfKxnLl6AzhzARd3tGDyCdKoZ3PSfbegmGuW9XuMv
	ZaegOPzppoEG3gSvr3f4gWJ+hCJNfKK6M/sGK42+EAYGHLkPf02T0ZY/OGKagnx6urUM2RJXwBdj9
	kS9t1TKMu1wjCnqijixGz0lyXqSW+f7Gb/W4Ck9V2Qwam6R1Y9XXtobwjW6nGmQ0SIlCtOYhXXGWv
	melz83uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPUDn-00DHeX-5S; Tue, 07 Feb 2023 20:05:43 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPUDi-00DHdR-5l
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 20:05:39 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id B8937E74013; Tue,  7 Feb 2023 21:05:04 +0100 (CET)
Received: from astat.fritz.box (a89-183-230-107.net-htp.de [89.183.230.107])
	by lynxeye.de (Postfix) with ESMTPA id BD35BE74012
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 21:05:02 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  7 Feb 2023 21:04:59 +0100
Message-Id: <20230207200459.1078994-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230207200459.1078994-1-l.stach@pengutronix.de>
References: <20230207200459.1078994-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_120538_380477_4A8673BD 
X-CRM114-Status: GOOD (  10.15  )
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
Subject: [PATCH v2 3/3] ARM: dts: i.MX8MP: add DDRC compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The upstream DT currently only provides the Synopsis core compatible
for the DDRC node. Extend this with more machine specific compatibles
to allow our memory size detection to work.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 5da79f13d339..778e84318ce7 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -10,6 +10,10 @@
 	};
 };
 
+&edacmc {
+	compatible = "fsl,imx8mp-ddrc", "fsl,imx8m-ddrc", "snps,ddrc-3.80a";
+};
+
 feat: &ocotp {
 	#feature-cells = <1>;
 	barebox,feature-controller;
-- 
2.39.1



