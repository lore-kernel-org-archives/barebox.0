Delivery-date: Fri, 17 Feb 2023 17:30:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT3d6-00AFwG-Gm
	for lore@lore.pengutronix.de; Fri, 17 Feb 2023 17:30:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pT3d4-00043g-S6
	for lore@pengutronix.de; Fri, 17 Feb 2023 17:30:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Jz6QumwfqUoqYDPqOsCwUjCoMx4iHSR4YJvFqW8wQo=; b=juRlmX+uCTpT2mhPqKnuRaUH/v
	tNF3FcqYVq8F7IaZ6nzaaxnXoqc4uU03HI5JIBrQ528RusvOyAaX+/nCS53C2fBbvnVTlzb3CngiO
	fIAfq149SJ6lKzj30uUVlKzv8Shl0x/4bifOywgu/zEtT4NU544agn/p+htvgWWObta6pniELXzVl
	Uxm/J9XrBcoY2XrSTRyyBgcPfNmyiozLQc48HD5raupqGUaNF/0Pm/4x1dxxB6yZnW8qABedJCtWW
	M35wmzS48JQ+hzumy/sQiHKlezGUPxIDFC13yWnNXaJv6b9Dv0KVosydtZcZz5OIpjnyLRR+Op0GQ
	NQjdjHIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT3c1-00F3PU-NY; Fri, 17 Feb 2023 16:29:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pT3b6-00F31K-Ci
	for barebox@lists.infradead.org; Fri, 17 Feb 2023 16:28:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pT3b4-0003Y6-Q0; Fri, 17 Feb 2023 17:28:30 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT3b2-005crw-VA; Fri, 17 Feb 2023 17:28:30 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pT3b3-006OCH-Fi; Fri, 17 Feb 2023 17:28:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: str@pengutronix.de,
	ore@pengutronix.de
Cc: ejo@pengutronix.de,
	barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Feb 2023 17:28:26 +0100
Message-Id: <20230217162826.1512263-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230217162826.1512263-1-a.fatoum@pengutronix.de>
References: <20230217162826.1512263-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_082832_471751_B6FFD84C 
X-CRM114-Status: GOOD (  11.38  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/1] ARM: dts: STM32MP: protonic/phycore: add note about potential breakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Extending upstream STM32MP1 pinctrl group nodes is a bad idea. They tend
to be split and pinmux entries are moved between subnodes, which may
induce subtle breakage and may have already happened for RGMII in
Phycore DT. Upstream pinctrl nodes should either be used fully as-is
or new fully-specified nodes be created that are safe from upstream changes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp151-prtt1c.dts                      | 5 +++++
 arch/arm/dts/stm32mp151-prtt1l-net.dtsi                 | 5 +++++
 arch/arm/dts/stm32mp151-prtt1l.dtsi                     | 6 ++++++
 arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi | 5 +++++
 4 files changed, 21 insertions(+)

diff --git a/arch/arm/dts/stm32mp151-prtt1c.dts b/arch/arm/dts/stm32mp151-prtt1c.dts
index 4eaf6712a5d6..f754deacf0e9 100644
--- a/arch/arm/dts/stm32mp151-prtt1c.dts
+++ b/arch/arm/dts/stm32mp151-prtt1c.dts
@@ -171,6 +171,11 @@
 	status = "okay";
 };
 
+/*
+ * FIXME: Below nodes should be fleshed out into complete pinctrl groups in their
+ * own right. Otherwise, they will eventually be broken by upstream rework.
+ */
+
 &ethernet0_rmii_pins_a {
 	pins1 {
 		pinmux = <STM32_PINMUX('B', 12, AF11)>, /* ETH1_RMII_TXD0 */
diff --git a/arch/arm/dts/stm32mp151-prtt1l-net.dtsi b/arch/arm/dts/stm32mp151-prtt1l-net.dtsi
index 04f4d64aaaa5..a10e696e7d7e 100644
--- a/arch/arm/dts/stm32mp151-prtt1l-net.dtsi
+++ b/arch/arm/dts/stm32mp151-prtt1l-net.dtsi
@@ -2,6 +2,11 @@
 // SPDX-FileCopyrightText: 2021 David Jander, Protonic Holland
 // SPDX-FileCopyrightText: 2021 Oleksij Rempel, Pengutronix
 
+/*
+ * FIXME: Below nodes should be fleshed out into complete pinctrl groups in their
+ * own right. Otherwise, they will eventually be broken by upstream rework.
+ */
+
 &ethernet0 {
 	pinctrl-0 = <&ethernet0_rmii_pins_a>;
 	pinctrl-names = "default";
diff --git a/arch/arm/dts/stm32mp151-prtt1l.dtsi b/arch/arm/dts/stm32mp151-prtt1l.dtsi
index 80ae72dee22a..6c67bb936def 100644
--- a/arch/arm/dts/stm32mp151-prtt1l.dtsi
+++ b/arch/arm/dts/stm32mp151-prtt1l.dtsi
@@ -80,6 +80,12 @@
 	status = "okay";
 };
 
+/*
+ * FIXME: Below nodes should be fleshed out into complete pinctrl groups in their
+ * own right. Otherwise, they will eventually be broken by upstream rework.
+ */
+
+
 &sdmmc1_b4_pins_a {
 	pins1 {
 		bias-pull-up;
diff --git a/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi b/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
index 011d73ec3f1a..18fbecc906e4 100644
--- a/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
+++ b/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
@@ -5,6 +5,11 @@
  */
 #include <arm/stm32mp15-pinctrl.dtsi>
 
+/*
+ * FIXME: Below nodes should be fleshed out into complete pinctrl groups in their
+ * own right. Otherwise, they will eventually be broken by upstream rework.
+ */
+
 &ethernet0_rgmii_pins_a {
 	pins1 {
 		pinmux = <STM32_PINMUX('G', 4, AF11)>,	/* ETH_RGMII_GTX_CLK */
-- 
2.30.2



