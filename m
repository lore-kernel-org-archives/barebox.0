Delivery-date: Fri, 19 Sep 2025 12:23:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzYHI-004ohg-2r
	for lore@lore.pengutronix.de;
	Fri, 19 Sep 2025 12:23:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzYHI-0002VH-Ay
	for lore@pengutronix.de; Fri, 19 Sep 2025 12:23:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AApHT5NFHlj6qddsNiBQX2gxg55riguoQ23V7G8DquI=; b=DtKJ95HKcJPjQuN+P1basMZarV
	EB92t9+/O7chvoSHWogPIUOM8FDG/QbOh2U7v6Rf+oChH8Iygs6Dqoc0WdzOyoOXLxW6rHeJo2c7s
	NmqGtxCX+y/8w3dNbxGNm2tAM5Jso5kW25dXZK7Ek6FHcZHYFJvwHaglCDsR6bnmT3VJf7ZXwPSDF
	WRZJdbDcxm+MmuIMuRKsPTqvHKPdCLXAwrKQgE15A3/y/k2WRPG7wJy4azw0In/JyJ4mk6yLV0OxM
	odgpWL2iCA9C/fqP/8R4ItVyLO87oqTIl0RY7+WNeBCwehvuxfMNXZAPqXH3QtfrhjMlmABYa2PsB
	XzIOVQQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzYGc-00000002Xr1-3gFN;
	Fri, 19 Sep 2025 10:23:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzYGZ-00000002XpB-1q4h
	for barebox@lists.infradead.org;
	Fri, 19 Sep 2025 10:23:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzYGW-0002MK-RZ; Fri, 19 Sep 2025 12:22:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzYGW-0025cJ-29;
	Fri, 19 Sep 2025 12:22:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzYGW-000000086Av-2ILd;
	Fri, 19 Sep 2025 12:22:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 19 Sep 2025 12:22:55 +0200
Message-ID: <20250919102255.1928858-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_032259_477451_254E0116 
X-CRM114-Status: GOOD (  12.51  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: am62l: fix mdio clock id
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Based on this commit found in the TI downstream repository:

| commit 20778f6c125dc24e62767dc4837d793a0f18c319
| Author: Siddharth Vadapalli <s-vadapalli@ti.com>
| Date:   Wed Jun 4 15:41:53 2025 +0530
|
|    PENDING: arm64: dts: ti: k3-am62l-main: Fix MDIO clock
|
|    Based on the Clock ID documentation for AM62L [0], the Clock ID for the
|    MDIO module within CPSW3G should be '9' instead of '13'. Hence, fix it.
|
|    [0]: https://github.com/TexasInstruments/arm-trusted-firmware/blob/ti-master/docs/plat/ti-am62l.rst#am62l-clock-scmi-id-list
|    Fixes: 12b7268608d8 ("PENDING: arm64: dts: ti: k3-am62l-main: Add CPSW3G DT node")
|    Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-main.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/k3-am62l-main.dtsi b/arch/arm/dts/k3-am62l-main.dtsi
index cd9506aee7..267664eecd 100644
--- a/arch/arm/dts/k3-am62l-main.dtsi
+++ b/arch/arm/dts/k3-am62l-main.dtsi
@@ -760,7 +760,7 @@ cpsw3g_mdio: mdio@f00 {
 			reg = <0x00 0xf00 0x00 0x100>;
 			#address-cells = <1>;
 			#size-cells = <0>;
-			clocks = <&scmi_clk 13 0>;
+			clocks = <&scmi_clk 9>;
 			clock-names = "fck";
 			bus_freq = <1000000>;
 			status = "disabled";
-- 
2.47.3



