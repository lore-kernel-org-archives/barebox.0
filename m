Delivery-date: Wed, 22 Apr 2026 17:57:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFZwl-00F9ja-0d
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 17:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFZwk-0007sd-LM
	for lore@pengutronix.de; Wed, 22 Apr 2026 17:57:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J5Me/Gb+JvRwZ9SvFAe6j6J6qcAqodf7l796ms71ncE=; b=IAO/CR7GQP+mkVCI/xBuv8hs8C
	XofW00WeOa9QbokFGbc2Cz/89IlNIrCFJVtNMNmkbbojd3NcfPZv5jvORh8SXxIS5kpMLZfwIsfyn
	Nj4iK1VFgWqb7sjidyzmQmP16BoD6jrNT20FP+k+R0c2XxUKjQ9ivhU1fB1ZXqFUPyGFsxwMHUCeB
	OlfGVz0SDyXoDqNa0WnXPIWx3PCIzipkTUpBwJH4Ugl7VY+zQ8xRAlMepa4ATEDMKSDtkNXZFFzdE
	ZSphXNhC6EzjPR3NcIRVnJ9VKXEdT4dBq3cLOy9d1llYtpuVSi3sztBekxl595EE5PWgAisaGtISm
	I/jvAmNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFZw6-0000000ASSz-1Gur;
	Wed, 22 Apr 2026 15:56:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFZw3-0000000ASSb-2cDx
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 15:56:21 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wFZw0-0007ki-9M; Wed, 22 Apr 2026 17:56:16 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 22 Apr 2026 17:56:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260422-socfpga-agilex5-dwmac-v1-1-648a33bd9ec2@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAJrv6GkC/x3MSQqAMAxA0atI1gY0zl5FXIQ21oATLagg3t3i8
 i3+fyCIVwnQJw94OTXovkXkaQJm5s0Jqo0GyqjOSiIMu5kOx8hOF7krtNfKBjtbVtyYnApuIba
 Hl0nv/zuM7/sBkI73z2cAAAA=
X-Change-ID: 20260422-socfpga-agilex5-dwmac-9d45a7c123a8
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_085619_750061_08B113B1 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: socfpga: AXE5-Eagle: fix phy reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The snps,reset-gpio is a property of the Synopsys DesignWare MAC and
belongs into the gmac node.

The property is deprecated and shall be replaced by regular gpio reset
at the phy. However, use the deprecated binding to be sure that the
dwmac driver handles the reset for now.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/dts/socfpga_agilex5_axe5_eagle.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
index f67b974f2adc..732d6142dcb1 100644
--- a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
+++ b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
@@ -74,16 +74,16 @@ &gmac2 {
 	status = "okay";
 	phy-mode = "rgmii-id";
 	phy-handle = <&emac2_phy0>;
-
 	max-frame-size = <9000>;
+	snps,reset-gpio = <&portb 10 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 10000 10000>;
 
 	mdio0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 		compatible = "snps,dwmac-mdio";
 		emac2_phy0: ethernet-phy@1 {
-			snps,reset-gpio = <&portb 10 GPIO_ACTIVE_LOW>;
-			snps,reset-delays-us = <0 10000 10000>;
 			reg = <0x1>;
 			adi,rx-internal-delay-ps = <2000>;
 			adi,tx-internal-delay-ps = <2000>;

---
base-commit: 7b492daea9347fd55bf29560c2ec494ca1040f95
change-id: 20260422-socfpga-agilex5-dwmac-9d45a7c123a8

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



