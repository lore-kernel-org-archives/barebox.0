Delivery-date: Tue, 12 May 2026 14:44:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMmTj-000tb9-10
	for lore@lore.pengutronix.de;
	Tue, 12 May 2026 14:44:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wMmTd-0003lu-BT
	for lore@pengutronix.de; Tue, 12 May 2026 14:44:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mB0JPTIPeMCBPSNl5MdZI+58z6mU/UBJvRJ2ZjVW1mw=; b=EJfa8jDOqEeSGQ0Uy0x/76gYiz
	UBJpd+EtHReQxRl35mOrFy3r1USza6hkyUV0lyEl+CjQ6kL+dyWEnlOUFfcYrZAmutzR0mSM4dqUL
	jlvwo/g+oW8uLA2xRkWwq8rtyhmkCU7VrTkHVLtGQtt/zNSgINwFmTeGoBl1BDA+zBrr32++X9J34
	4Vx37rLtcYCtmnkwc86UHqbXsy+8gN/jG1Oxo4Pzg31kkRCb+m3mdRyOASfO8bg4hn+IU4I00xK/c
	r0EdGolvv8rX5pH9+s64/fH9+OGlMnnOZVlOtyymC2Hb3xY05oj848URRoN0sycw6UDeNuUAhYm1D
	p382N/Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmS4-0000000GhNk-2gvr;
	Tue, 12 May 2026 12:43:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmS1-0000000GhMH-0fgJ
	for barebox@lists.infradead.org;
	Tue, 12 May 2026 12:43:07 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wMmRy-0003KH-A5; Tue, 12 May 2026 14:43:02 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 12 May 2026 14:42:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260512-socfpga-agilex5-dwmac-v2-1-f1008a19eb27@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAE4gA2oC/4WNTQ6CMBBGr0K6dgwtPwIr72FYjO1QJtGWtIgYw
 t2tXMDle8n3vk1ECkxRdNkmAi0c2bsE6pQJPaKzBGwSC5WrOi+Vguj1MFkEtPygtQLzfqKG1pQ
 VXrRUBTYibadAA69H99YnHjnOPnyOm0X+7L/iIkFCXTZYFHfTklbXiZx9zcE7Xs+GRL/v+xeb3
 4SkvwAAAA==
X-Change-ID: 20260422-socfpga-agilex5-dwmac-9d45a7c123a8
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_054305_201357_F073BCE2 
X-CRM114-Status: UNSURE (   9.81  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: dts: socfpga: AXE5-Eagle: fix phy reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The snps,reset-gpio is a property of the Synopsys DesignWare MAC and
belongs into the gmac node. However, this property is deprecated and
shall be replaced by regular gpio reset at the phy.

Switch the PHY to a proper reset-gpios property.

While at it, move the reset-gpios property below the reg property.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- Remove deprecated binding and switch to reset-gpios
- Link to v1: https://patch.msgid.link/20260422-socfpga-agilex5-dwmac-v1-1-648a33bd9ec2@pengutronix.de
---
Changes in v2:
- Remove deprecated binding and switch to reset-gpios
---
 arch/arm/dts/socfpga_agilex5_axe5_eagle.dts | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
index 16491323da6c..4cae3979e166 100644
--- a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
+++ b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
@@ -81,9 +81,10 @@ mdio0 {
 		#size-cells = <0>;
 		compatible = "snps,dwmac-mdio";
 		emac2_phy0: ethernet-phy@1 {
-			snps,reset-gpio = <&portb 10 GPIO_ACTIVE_LOW>;
-			snps,reset-delays-us = <0 10000 10000>;
 			reg = <0x1>;
+			reset-gpios = <&portb 10 GPIO_ACTIVE_LOW>;
+			reset-assert-us = <10000>;
+			reset-deassert-us = <10000>;
 			adi,rx-internal-delay-ps = <2000>;
 			adi,tx-internal-delay-ps = <2000>;
 		};

---
base-commit: 2cb5e0014a37160731ad6eb6d7f7d846394db362
change-id: 20260422-socfpga-agilex5-dwmac-9d45a7c123a8

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



