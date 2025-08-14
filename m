Delivery-date: Thu, 14 Aug 2025 15:15:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXo2-000WCo-0w
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:15:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXo1-0007j6-0R
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:15:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rWRbDd1qh2CHyYcgZ/wdpKXBNk1PTkc6eJ3EYD+pxLY=; b=M2Qr244EJOAImlVZvHRh7aLcgr
	cMvsT1WmmBQXzERnWOlnM6z+KoW6wOP8Ryi0M/m8d42+FH7zlNi9Kp4HGpbHR4/aVy72Tyg9WIoLb
	pXjmLn/vz5IM1H4S3vjjCtcOzWoRC04SOMnl1DwauL7qn6P3b9vPhRXYNaNNX/Xa11WRLmwGsKx40
	AALBhXa6Egfu4KWJT+LWEfrUs7n/gkZgyPEMoJedpCR69IYfwvbnde5R3Sh9ins2y6XJuxCM/jqmN
	kza3QDKgRcU1h2Hn6VlNyWXdm4eHSNZua2OwZDQnL2bAcvotxYciuhsiPd86k3PtZq4i4n7hWDS8H
	l04BMj8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXnG-0000000Gxyv-2XJR;
	Thu, 14 Aug 2025 13:14:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUhZ-0000000GVBN-0iJ6
	for barebox@bombadil.infradead.org;
	Thu, 14 Aug 2025 09:56:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rWRbDd1qh2CHyYcgZ/wdpKXBNk1PTkc6eJ3EYD+pxLY=; b=A+VVa2Uqr8Iv14H4PNTeFjij6o
	xMmpL255AANEw1vqDyg6SVhThi/NpROh6M8nLuccDu114CDV9O2QJlKg0oMappo9RLHMAyDyyq6fu
	FcUkXPgt2MDaG7Y26o1JccbFy5ygYJg39ichm1lp0shmlAU/tHgCi3QKgpNI2jsgqtrV3leGl7hEy
	jZWphjpJ/x4ZNnsd1gcC2iAZhsDJRBPw7rzp5BnmhGRoF/F/68nydoaTEfCbFaRyos9UU2DnR9O6K
	WYV8ARiDFV4mHkMmCWGQl894jli2JPNNZpJQuxrHLGQApryAjdFEobYIHHKJLluk0DdHh2FCjjIid
	FzK4PU2g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUhV-0000000GLUg-39UK
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 09:56:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umUhS-0002TN-5g; Thu, 14 Aug 2025 11:56:46 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umUhR-000EXh-3C;
	Thu, 14 Aug 2025 11:56:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umUhR-004kUc-2r;
	Thu, 14 Aug 2025 11:56:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Aug 2025 11:56:43 +0200
Message-Id: <20250814095643.1132022-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814095643.1132022-1-s.hauer@pengutronix.de>
References: <20250814095643.1132022-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_105649_856593_9CED982F 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: dts: AM62L: switch watchdog to SoC specific compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Due to different watchdog output routing on the AM62L we need a SoC
specific compatible for the AM62L watchdog. It's already handled in
the driver, so change the compatible to make the watchdog work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-main.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/k3-am62l-main.dtsi b/arch/arm/dts/k3-am62l-main.dtsi
index 95d387afd1..b7b52d6b56 100644
--- a/arch/arm/dts/k3-am62l-main.dtsi
+++ b/arch/arm/dts/k3-am62l-main.dtsi
@@ -212,7 +212,7 @@ epwm_tbclk: clock-controller@1e9100 {
 	};
 
 	rti0: watchdog@e000000 {
-		compatible = "ti,j7-rti-wdt";
+		compatible = "ti,am62l-rti-wdt";
 		reg = <0x00 0x0e000000 0x00 0x100>;
 		clocks = <&scmi_clk 273>;
 		power-domains = <&scmi_pds 60>;
@@ -221,7 +221,7 @@ rti0: watchdog@e000000 {
 	};
 
 	rti1: watchdog@e010000 {
-		compatible = "ti,j7-rti-wdt";
+		compatible = "ti,am62l-rti-wdt";
 		reg = <0x00 0x0e010000 0x00 0x100>;
 		clocks = <&scmi_clk 279>;
 		power-domains = <&scmi_pds 61>;
-- 
2.39.5



