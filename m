Delivery-date: Thu, 18 Aug 2022 07:21:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyI-002dOX-0p
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:21:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyF-0000du-EQ
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:21:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sJspXrieP/q4Y56VULUWYjxg11sYzYVOQKejS5hhjps=; b=deieqaGfzVbUZgWWPGYNGaUf3I
	Qds94zuKGdXikUaTNRRxMT7Is+GgUIU1zEd9g6iw8ny76++4jwCAexIVQPACKt3HWwoqI67nSGaZF
	aKs6pIWTd7wBWM8+b+NGz2IsODCTw3uq/J3LD5CBTCK4q8JdQVve6ZjkaVu2eMWOXDgY9GcHNtnGL
	qN1YCp5SavbSFu6wN+TU52EgGMffSJjMWfPZPlX/KT4kPUxyXX2raCdXLcSugf4tKSQxUGo3xipvu
	O4BtFzVj30wXliObOnCt3JZsFVoGsXLqSZqP0dKc0HSEcR/jrxhe2hRyowTvwLBCpPktTjqqcHOAz
	v4n05lZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXws-00FnFY-LW; Thu, 18 Aug 2022 05:20:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwm-00Fn36-S7
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-0008H6-JO; Thu, 18 Aug 2022 07:19:58 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwj-000S3M-RK; Thu, 18 Aug 2022 07:19:57 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHn-NJ; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:19:53 +0200
Message-Id: <20220818051955.2088238-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222001_002204_9EC55F59 
X-CRM114-Status: GOOD (  11.76  )
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
Subject: [PATCH 08/10] ARM: dts: i.MX8MN: describe feature controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now with i.MX8M feature controller driver support available, have the
OCOTP provide feature control on the i.MX8MN to ensure the kernel DT does
not attempt accessing the GPU and its power domain if barebox knows
them to be unavailable.

This is needed because the upstream kernel imx8mm.dtsi only describes
the full-featured SoC, which can lead to hangs when instantiating
drivers for hardware that's unavailable in a less-featureful variant
of the SoC.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx8mn.dtsi | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/dts/imx8mn.dtsi b/arch/arm/dts/imx8mn.dtsi
index 176125e73bce..c8ea034e9553 100644
--- a/arch/arm/dts/imx8mn.dtsi
+++ b/arch/arm/dts/imx8mn.dtsi
@@ -1,5 +1,37 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/features/imx8m.h>
+
 &pgc_otg1 {
 	barebox,allow-dummy;
 };
+
+
+feat: &ocotp {
+	#feature-cells = <1>;
+	barebox,feature-controller;
+};
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
+&gpu {
+	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
+};
+
+&pgc_gpumix {
+	barebox,feature-gates = <&feat IMX8M_FEAT_GPU>;
+};
-- 
2.30.2



