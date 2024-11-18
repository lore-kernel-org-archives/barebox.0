Delivery-date: Mon, 18 Nov 2024 17:45:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tD4s0-003V7i-2Y
	for lore@lore.pengutronix.de;
	Mon, 18 Nov 2024 17:45:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tD4s0-0007f4-8L
	for lore@pengutronix.de; Mon, 18 Nov 2024 17:45:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xWuR6rQYAF0ZUsieuVE/uODfVGKaW5wLrKcQyI1lTj8=; b=QBGffCCUi08QY6XdCnG6KfiklN
	tDfD5JMUicwHqbvdV/SVZTASoC/a1SaXP4szVVH5zsdloxZTW7WUb0pkpCdORU1O3f7NI6Fd+gnJL
	euimDYVAfBKYbOdkUP1Q36cTc2m1RAu+6OjyrZfxv1js4qXQjQdpuETzEE9jGJEiSpuvN/jdPucgC
	qwXkPczJQNx3VgpO7J5QIqoRivBezQJCAee6PuEM8q/hZPzpvI+ec/XhHaP1MwMm3231aiutXI6Gw
	0zOe0jdMFpuqjut5xAU/6ZW3BsahP2tqWUcZSnsUuPhwJ9hbuJ374UBLEgdOj5aiywnRbebBUO1jQ
	3iyOwt7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tD4rK-0000000A65a-1mgq;
	Mon, 18 Nov 2024 16:44:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tD4rI-0000000A64z-1NSr
	for barebox@lists.infradead.org;
	Mon, 18 Nov 2024 16:44:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.guest.stw.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1tD4rG-0007Sf-Ua; Mon, 18 Nov 2024 17:44:15 +0100
From: =?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Mon, 18 Nov 2024 17:43:44 +0100
Message-ID: <20241118164344.48806-1-s.pueschel@pengutronix.de>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_084416_363498_D3695AD6 
X-CRM114-Status: UNSURE (   8.49  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: i.MX8MP: imx8mp-skov: skip sd/sdio detection on the eMMC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Skip sd/sdio detection on the eMMC to reduce the detection time by
about 270ms. This change is already part of the kernel dtsi file
(see  dts/src/arm64/freescale/imx8mp-skov-reva.dtsi).

Signed-off-by: Sven Püschel <s.pueschel@pengutronix.de>
---
 arch/arm/dts/imx8mp-skov.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
index 0c0ada1a5c..5271c9deab 100644
--- a/arch/arm/dts/imx8mp-skov.dts
+++ b/arch/arm/dts/imx8mp-skov.dts
@@ -425,6 +425,8 @@ &usdhc3 {
 	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
 	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
 	bus-width = <8>;
+	no-sd;
+	no-sdio;
 	non-removable;
 	status = "okay";
 };
-- 
2.47.0



