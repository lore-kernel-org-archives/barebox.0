Delivery-date: Thu, 18 Aug 2022 07:21:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyN-002dPQ-VI
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:21:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyL-0000g5-P9
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:21:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pq/k5WBraocy3XTyVBpM9fOcQtbb7NeAQGzPK0KclK0=; b=RbqZu5nVQ46ixkKgASbjxgYp5H
	D4TTESnv1ks0PSnIvuwNVDOcZjCGQPYrf2klrES1GZwigp7BWR/zb7PpEk7Z4HLe1cQr9HXg3Cor8
	UXi//AHq0SoNuvJFO0slQsYZxFJwm0L1zy1j+QE9bx7vIEwlAs5cvUd7C4NCE0BBHW23vEl+0uxV0
	FC9wHNBvptcmiJpg76u/7c20aXECzMt2tZOeTcw/6K4ylpJeyG3PeNnpLW2kXs9l5HOlO8wrJDOYq
	K2RBERRjLgdEOf7mvcZc1JAN2YJox8oslTRlfuwZuwBdU5ckFRAugg4fIaknlJfLrzc+k8bNb9cZ0
	ERCd+sCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXx3-00Fnea-Dh; Thu, 18 Aug 2022 05:20:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwn-00Fn3g-2x
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwl-0008Hr-Hf; Thu, 18 Aug 2022 07:19:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-000S3m-Ng; Thu, 18 Aug 2022 07:19:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHt-Ns; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:19:55 +0200
Message-Id: <20220818051955.2088238-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222001_242644_0EBD767A 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 10/10] RFC: ARM: dts: i.MX8MM: describe standlone feature controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now with i.MX8M feature controller driver support available, define it
for the i.MX8MM to ensure the kernel DT does not attempt accessing VPUs
and their power domain/blkctrl if barebox knows them to be unavailable.

This is needed because the upstream kernel imx8mm.dtsi only describes
the full-featured SoC, which can lead to hangs when instantiating
drivers for hardware that's unavailable in a less-featureful variant of
the SoC.

[afa: This is one possibility for the binding. My favourite would
 be having the ocotp be the feature-controller, see previous commits]

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mm.dtsi | 61 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
index cdf212820594..bef791739e72 100644
--- a/arch/arm/dts/imx8mm.dtsi
+++ b/arch/arm/dts/imx8mm.dtsi
@@ -1,8 +1,25 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include <dt-bindings/features/imx8m.h>
+
 / {
 	aliases {
 		gpr.reboot_mode = &reboot_mode_gpr;
 	};
+
+	feat: imx8m-feature-controller {
+		compatible = "barebox,imx8mm-featctrl";
+		#feature-cells = <1>;
+		barebox,feature-controller;
+		nvmem-cell-names = "tester4";
+		nvmem-cells = <&soc_tester4>;
+	};
+};
+
+&ocotp {
+	soc_tester4: tester4@14 {
+		reg = <0x14 4>;
+	};
 };
 
 &pgc_otg1 {
@@ -24,3 +41,47 @@
 		mode-serial = <0x00000010>, <0x40000000>;
 	};
 };
+
+&A53_1 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_CPU_DUAL>;
+};
+
+&A53_2 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_CPU_QUAD>;
+};
+
+&A53_3 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_CPU_QUAD>;
+};
+
+&gpc {
+	barebox,feature-gates = <&feat 0>;
+};
+
+&vpu_g1 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&vpu_g2 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&vpu_blk_ctrl {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&pgc_vpumix {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&pgc_vpu_g1 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&pgc_vpu_g2 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
+
+&pgc_vpu_h1 {
+	barebox,feature-gates = <&feat IMX8M_FEAT_VPU>;
+};
-- 
2.30.2



