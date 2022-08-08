Delivery-date: Mon, 08 Aug 2022 16:02:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3Kd-00GEoH-9u
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 16:02:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL3Ke-0007VG-5H
	for lore@pengutronix.de; Mon, 08 Aug 2022 16:02:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/yvGHrIVFI3DPanQHD6A5GKXDO77BoGgk3zCr+ul2jQ=; b=Al+bVTHlAD8MhE0N4in7IJNt+6
	p6jciA55aHavlLjq53mUpRpe5UyBkJRvt5IRiLfy4/xQ82b3oL3wVf7V5BVbXn//C+oQDPXBuZho3
	SPBXNrwpjw1RcthI8OgnZZVsMqgUiv0uGHwIBbCH6k8rsCOpcUnfyQLRZbsQDHJdbGeJMEfxryRvt
	MeUwJjtu6xxdM0x74Mjm+9DlK3f77gxIv+kZLvo0UptFiZ7HtnBJTmmvh9KpKWv3qTvkiIAdKdTpb
	K+8UC1lugAtGn1K2Mx2QHCunykdMMZ91bNVubhSmqNQk0oJ4kaK6sjQkprC4bH/GZY/f3Gn31iDnF
	LLYCAntg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3JN-00EFfN-Cr; Mon, 08 Aug 2022 14:00:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL3JB-00EFb7-I1
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 14:00:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3J9-0006sr-Tq; Mon, 08 Aug 2022 16:00:39 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3J6-002Vij-TB; Mon, 08 Aug 2022 16:00:39 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oL3J8-0071Dz-4l; Mon, 08 Aug 2022 16:00:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Aug 2022 16:00:35 +0200
Message-Id: <20220808140035.1672733-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220808140035.1672733-1-a.fatoum@pengutronix.de>
References: <20220808140035.1672733-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_070041_622927_7A90E6DA 
X-CRM114-Status: GOOD (  13.99  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master v3 4/4] ARM: i.MX8MN: assume USBOTG power domains to be powered
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
v2 -> v3:
  - rebased on master
v1 -> v2:
  - no change
---
 arch/arm/dts/imx8mn-evk.dts | 1 +
 arch/arm/dts/imx8mn.dtsi    | 5 +++++
 2 files changed, 6 insertions(+)
 create mode 100644 arch/arm/dts/imx8mn.dtsi

diff --git a/arch/arm/dts/imx8mn-evk.dts b/arch/arm/dts/imx8mn-evk.dts
index b8e7e1acf539..23f80f868651 100644
--- a/arch/arm/dts/imx8mn-evk.dts
+++ b/arch/arm/dts/imx8mn-evk.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include <arm64/freescale/imx8mn-evk.dts>
+#include "imx8mn.dtsi"
 
 / {
 	chosen {
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



