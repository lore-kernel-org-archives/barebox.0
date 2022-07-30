Delivery-date: Sat, 30 Jul 2022 11:53:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHjAB-004r6n-L5
	for lore@lore.pengutronix.de; Sat, 30 Jul 2022 11:53:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oHjAA-0007mQ-BY
	for lore@pengutronix.de; Sat, 30 Jul 2022 11:53:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gfYqQWkIu0rAlrrQtrv8BbjBQ7PYCBefRa+3FJxftcM=; b=1VbYdrNNxsXV/09gyj3FGM2gZs
	S85TTwdgYhCalZTv3ZcMm4WiRfdsCr59HumEbaN7zYaHeigbAIZnIy/O+IXyp7DHZ2HTCWjZFdV4Y
	m9czN8yC6ObtvrqNPVNMObpuQxGerV5/UJnOeiSL9nVkXk2Hsc0vt5N8U/pd1dTm2o/8YR4Hv53P8
	+6uHCeAswwxac0HlFz3NW3ggL+RQTZlZoCvgEv/VaZKnJkT2e5qXF7yGmOPX1FVe/w8jYAlkpEI7l
	VsaVKVj8Ixz47NLTBl9REkHsOurvaXxc/9HZfJyP6YP4turuLe7S9W+c4g0KIJtRkibBbDq6ps2gR
	IfV65NFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHj8x-00H8os-G2; Sat, 30 Jul 2022 09:52:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHj8t-00H8nL-Np
	for barebox@lists.infradead.org; Sat, 30 Jul 2022 09:52:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj8s-0007Ul-4h; Sat, 30 Jul 2022 11:52:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj8r-000gPJ-Dx; Sat, 30 Jul 2022 11:52:17 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oHj8q-007QFo-Pi; Sat, 30 Jul 2022 11:52:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Jul 2022 11:52:11 +0200
Message-Id: <20220730095211.1769119-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220730095211.1769119-1-a.fatoum@pengutronix.de>
References: <20220730095211.1769119-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220730_025219_823550_A7F168A7 
X-CRM114-Status: GOOD (  14.22  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] ARM: i.MX8MN: assume USBOTG power domains to be powered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When i.MX8MN support was first added, upstream device tree did list no
power domains. Now it does and we defer probe of USB indefinitely
because we have no power domain driver. If we need to do PCI on the
i.MX8MM in barebox, there'll likely be no way around importing the power
domain driver, but for USB which used to work, only thing we need to do
is ignore the new power domain specification. Do so by adding the
new barebox,allow-dummy property to the new known-enabled power domain.

Fixes: b01786baa849 ("dts: update to v5.18-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Untested on actual i.MX8MN HW, but close enough i.MX8MM. i.MX8MP is
also affect since v5.19-rc1 sync, but we have no USB support there yet.
Power domains also seems more complicated on 8MPlus where we have a
blk-ctrl power domain driver in-between usbotg and gpcv2.
---
 arch/arm/dts/imx8mn-evk.dtsi | 2 ++
 arch/arm/dts/imx8mn.dtsi     | 5 +++++
 2 files changed, 7 insertions(+)
 create mode 100644 arch/arm/dts/imx8mn.dtsi

diff --git a/arch/arm/dts/imx8mn-evk.dtsi b/arch/arm/dts/imx8mn-evk.dtsi
index ceeb5f8b9384..aeb357007991 100644
--- a/arch/arm/dts/imx8mn-evk.dtsi
+++ b/arch/arm/dts/imx8mn-evk.dtsi
@@ -4,6 +4,8 @@
  * Copyright (C) 2017 Pengutronix, Lucas Stach <kernel@pengutronix.de>
  */
 
+#include "imx8mn.dtsi"
+
 / {
 	chosen {
 		environment-sd {
diff --git a/arch/arm/dts/imx8mn.dtsi b/arch/arm/dts/imx8mn.dtsi
new file mode 100644
index 000000000000..176125e73bce
--- /dev/null
+++ b/arch/arm/dts/imx8mn.dtsi
@@ -0,0 +1,5 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+&pgc_otg1 {
+	barebox,allow-dummy;
+};
-- 
2.30.2



