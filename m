Delivery-date: Tue, 20 Jan 2026 14:18:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viBcV-003Onb-1d
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 14:18:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viBcU-0004Tk-G5
	for lore@pengutronix.de; Tue, 20 Jan 2026 14:18:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=If0wTvWpusZc1UyAYVs3qWMG6ytjVsvjYx3lC1Wb5K4=; b=kUbDOYVS351tllDCnPP0BO5jRk
	zrMw75SvsJKJdnO3Bui4ZnFmYF/zlMhoDaxNOG4mmdenDq2zEsoK/DcqszG4+AeAIDuy51pOQua6X
	uXtegO08s1BsF/3CXDqVxN3Z1B4xo0IkddXH7rOetDA0xWxjjgkHZYgrAh3eb0uq8E3zxR8pM7ccc
	WAJ9BPxe2gfZnxyuRBbso9gr0RcxyDZB+oNTeiqMI5Mw5YFEizzxKNC4bFq7garyr6JJrPny7bvIC
	CDOMJ4tSEbM/srLY0lQoNIh+VWgGTdCHuatR2WbnP85h+3X5FUZql/mYkkjPNgP8vBn5ymH48ajuf
	TBaQ0fPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBby-00000003tqA-2mXS;
	Tue, 20 Jan 2026 13:17:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBbx-00000003tpY-2IuT
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 13:17:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=If0wTvWpusZc1UyAYVs3qWMG6ytjVsvjYx3lC1Wb5K4=; b=NlvWmhxzeDz0czXcutyttEt9tn
	rYRRaJbhXK5/PItmdSc3vPWkpT/a639nm+BVQAXcOBpPEPciO66i74zv6f4l+0u55HxjS5hI1fQlr
	l7EXZcoVzJwb3t/vn2dnR2qNl1lUp0e2je1KAPlgQ4sWgqFXHyNhR/dy/5Qv9dCKPre/FFMWwUMgq
	cldcEvxH5wtpwQB9v95qsVSJVfLQJQP6Pwi4NZjcJDFuMg8/LFc/1YiJZJWoVQcqwkNHo6J+3hJFS
	N/j0dsCuVBYfNPzCQysgaDAHa130fbOceBps0a8yB865XMVgU6qMbJsPvyPTfSxp/exSdghzB0lO+
	N8Ny3/LA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viBbu-0000000E6HD-0hg2
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 13:17:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viBbt-0004Mp-1e; Tue, 20 Jan 2026 14:17:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viBbt-001aii-1g;
	Tue, 20 Jan 2026 14:17:28 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viBbt-00000003Ich-1mp4;
	Tue, 20 Jan 2026 14:17:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Rouven Czerwinski <rouven.czerwinski@linaro.org>,
	=?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>
Date: Tue, 20 Jan 2026 14:17:25 +0100
Message-ID: <20260120131728.785913-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_131730_458399_61672598 
X-CRM114-Status: UNSURE (   9.07  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFT] ARM: stm32mp: lxa: reuse USB nodes from upstream DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Disabling EHCI in favor of OHCI has been part of the TAC DT since a few
years back. Let's reuse the same DT description the kernel uses and see
what the fallout is.

Cc: Rouven Czerwinski <rouven.czerwinski@linaro.org>
Cc: Leonard Göhrs <l.goehrs@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi | 8 --------
 arch/arm/dts/stm32mp15xc-lxa-tac.dtsi       | 8 --------
 2 files changed, 16 deletions(-)

diff --git a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
index 2312dd08280e..701981358c68 100644
--- a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
+++ b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
@@ -83,14 +83,6 @@ last_chosen@10 {
 	};
 };
 
-&usbh_ehci {
-	status = "disabled";
-};
-
-&usbh_ohci {
-	status = "okay";
-};
-
 &baseboard_eeprom {
 	partitions {
 		compatible = "fixed-partitions";
diff --git a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
index 0cb66500db47..6bd119a799e0 100644
--- a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
+++ b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
@@ -128,11 +128,3 @@ backend_state_emmc: partition@c0000 {
 		};
 	};
 };
-
-&usbh_ehci {
-	status = "disabled";
-};
-
-&usbh_ohci {
-	status = "okay";
-};
-- 
2.47.3



