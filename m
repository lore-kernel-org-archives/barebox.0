Delivery-date: Tue, 09 Aug 2022 08:31:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIm6-00H0Cp-IM
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 08:31:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIm7-0007pQ-4W
	for lore@pengutronix.de; Tue, 09 Aug 2022 08:31:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ydx5rMRYfYfidKomIZMF7egee6+3qC25iLxIEIMZS4=; b=m/ZI8HZeCtdYiVIWusTk7TjJVz
	byJavt36U+x6evbTu35nNVmeXRsAiHbuGNs4qsKGeTmELKWnRgCT/YGBcsO9uVLPXxOQoHMV5N646
	qOHbfHdY9w2g8Ynk/NywvRbY/r0+JoWDVe08K/97zT/Dl0rEK/PQx5F+kkPvkArC3rXBoa/bf7+fa
	fVwZihDQ1I9kX9LFRgpT7Y1XQFC3oh+rhl5OCdqKJfE2D867KubGE/FQ88WLMUX/GN1qPM2r/plDc
	YiErGSjfKkWjKdNgQNHMqmTSmYkIcf0jPTQuJgFXGxy1v4dkB66gc9RH6Ql8rQIrZ+C/yddYbz6iZ
	kQ5QuVhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIkp-001xIu-AG; Tue, 09 Aug 2022 06:30:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIkK-001x54-I3
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 06:29:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkJ-0007Eh-88; Tue, 09 Aug 2022 08:29:43 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkG-002eZm-97; Tue, 09 Aug 2022 08:29:42 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkH-007LNP-1B; Tue, 09 Aug 2022 08:29:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Aug 2022 08:29:37 +0200
Message-Id: <20220809062938.1750369-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
References: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_232944_641863_A17ACA3A 
X-CRM114-Status: GOOD (  11.42  )
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
Subject: [PATCH 3/4] ARM: dts: stm32mp: reuse now upstream tamp node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since 6ea3de1b8ce7 ("dts: update to v5.11-rc1"), the upstream device
tree now has a node with simple-mfd, which we can add our reboot mode
beneath without having to replicate information, so make use of that.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp151.dtsi | 25 +++++++++++--------------
 1 file changed, 11 insertions(+), 14 deletions(-)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index 7b07aaf7cf6a..ed7cf6192bea 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -31,22 +31,19 @@
 		compatible = "st,stm32mp1-ddr";
 		reg = <0x5a003000 0x1000>;
 	};
-
-	tamp@5c00a000 {
-		compatible = "simple-bus", "syscon", "simple-mfd";
-		reg = <0x5c00a000 0x400>;
-
-		reboot_mode_tamp: reboot-mode {
-			compatible = "syscon-reboot-mode";
-			offset = <0x150>; /* reg20 */
-			mask = <0xff>;
-			mode-normal = <0>;
-			mode-loader = <0xBB>;
-			mode-recovery = <0xBC>;
-		};
-	};
 };
 
 &bsec {
 	barebox,provide-mac-address = <&ethernet0 0x39>;
 };
+
+&tamp {
+	reboot_mode_tamp: reboot-mode {
+		compatible = "syscon-reboot-mode";
+		offset = <0x150>; /* reg20 */
+		mask = <0xff>;
+		mode-normal = <0>;
+		mode-loader = <0xBB>;
+		mode-recovery = <0xBC>;
+	};
+};
-- 
2.30.2



