Delivery-date: Tue, 30 Aug 2022 09:58:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSw8T-001Uw6-Pm
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:58:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSw8R-0007Mh-RO
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:58:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pkDWrUEScRpYV+cSYlY/VqqhQuVKwFCVUtp+YP8wRvw=; b=H0PjKxcwi9IDCjBvhNHrEemIUL
	SqGBw35aUiENOExKEYlrlF9Kc1bAjKFLXCguxr45+0OHnyt+jkGUqgPSiKO22vbuXgnSCLnQsPt/8
	k5cE6aMrGVD1p+XtGWH9JFafERtjrHAgY7JziTYZufgusXyxWOKI3LK4rPEPorfBNipDf4BGjiA7o
	kk/l6UWINwZ3+o8ipA+qFm7qdZXkH1FlmHu+Tl+XlYVV8jGTcb4FP8Lx/Sc+IdkeSNguwtP5MQQ+g
	uzE/y8akXtva/RczTvlnFIgLYRUvULwZHeEY9/ZP0aOLPhD5/K5iEvO4fk1MBB5Nd8svJxG27+uQU
	pu8xNqTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSw6y-00Exuk-QO; Tue, 30 Aug 2022 07:56:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSw1L-00Ev8S-RU
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:50:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oSw1I-00068l-Jv; Tue, 30 Aug 2022 09:50:48 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oSw1H-002pIY-TH; Tue, 30 Aug 2022 09:50:47 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oSw1H-004RrE-6v; Tue, 30 Aug 2022 09:50:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Aug 2022 09:50:45 +0200
Message-Id: <20220830075045.1052357-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_005051_941623_A710A48D 
X-CRM114-Status: GOOD (  11.26  )
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
Subject: [PATCH v2] ARM: dts: i.MX8MM: describe feature controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now with i.MX8M feature controller driver support available, have the
OCOTP provide feature control on the i.MX8MM to ensure the kernel DT
does not cause Linux to access the VPU and its power domains,
when barebox knows them to be unavailable.

This is needed because the upstream kernel imx8mm.dtsi only
describes the full-featured SoC, which can lead to hangs when
instantiating drivers for hardware that's unavailable in a
less-featureful variant of the SoC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 was RFC patch 10/10 of:
https://lore.barebox.org/barebox/20220818051955.2088238-11-a.fatoum@pengutronix.de/T/#u

Patches 01-08 are still applicable, this replaces the approach in v1
with a standalone feature controller with having the OCOTP as feature
controller, like is done for i.MX8MN in patch 08/10 of above referenced
series.
---
 arch/arm/dts/imx8mm.dtsi | 52 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm/dts/imx8mm.dtsi b/arch/arm/dts/imx8mm.dtsi
index cdf212820594..1e81d03d6b84 100644
--- a/arch/arm/dts/imx8mm.dtsi
+++ b/arch/arm/dts/imx8mm.dtsi
@@ -1,10 +1,18 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+#include <dt-bindings/features/imx8m.h>
+
 / {
 	aliases {
 		gpr.reboot_mode = &reboot_mode_gpr;
 	};
 };
 
+feat: &ocotp {
+	#feature-cells = <1>;
+	barebox,feature-controller;
+};
+
 &pgc_otg1 {
 	barebox,allow-dummy;
 };
@@ -24,3 +32,47 @@
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



