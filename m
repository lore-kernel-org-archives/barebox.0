Delivery-date: Thu, 11 Jun 2026 23:15:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXmke-004pmf-1T
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 23:15:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXmkd-0004Zi-Qs
	for lore@pengutronix.de; Thu, 11 Jun 2026 23:15:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O+dSWXRjRACBFVxKd+DKBe3dx4ZQsEQB7oot9RW3b8U=; b=0/IKrFJ+bsGp2Q5jRGmp+Ey3Pu
	2dRhGmaRoGBE/28RgQmePqZJNuRv+E4hXE1Rwg6Slj1O8aQ4dYAEvb0Co8InbGEEyEpcLe85X7bHR
	XL6TIHfaTNbqn98gAQj9Uwp0nqckxOzbhAH8vh2TxQfbRKUDr/oQPbRZrcjQwznZ7G8gZAIMbYxR/
	a1kTKCHDy0haUzqGh5gkMWIIzmIJGP/y+klP8rB2h3yhNR7cIvJfL9hD0IJjWGiissTcsGJBvCTUT
	IR4Dbzmu6esGDzv2Tyoh/eqCUwgbYJuTVuX7gtkNX7JwtivOBbiOKCtf/KtW27Ajdd0OdrTW12MrM
	2oVN6zBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXmjU-0000000A550-0U2p;
	Thu, 11 Jun 2026 21:14:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXmjP-0000000A53b-2Gvr
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 21:14:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wXmjM-0004FO-6t; Thu, 11 Jun 2026 23:14:28 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 11 Jun 2026 23:14:21 +0200
Message-ID: <20260611211425.4090757-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260611211425.4090757-1-a.fatoum@barebox.org>
References: <20260611211425.4090757-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_141431_582062_E311DDBE 
X-CRM114-Status: GOOD (  10.28  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: stm32mp: lxa: change stdout-path baud rate from 9600 to 115200
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The LXA boards are the only upstream STM32 boards that set
stdout-path = &uart* instead of explicitly specifying a baud rate.

This would mean the default of 9600 is used, but it goes unnoticed when
booting normally as barebox fixes up a console= line that includes a
baud rate.

When EFI booting GRUB however, GRUB will not pass along the console=
line and thus the board ends up with a 9600 baud Linux console,
confusing users.

A fix for this has been submitted upstream[1]. Until then, have the fix
in barebox as barebox will pass along its device tree when booting via
EFI.

[1]: https://lore.kernel.org/all/20260611-lxa-stdout-path-baudrate-v1-0-59b60a5069ff@pengutronix.de/

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi | 2 ++
 arch/arm/dts/stm32mp157c-lxa-mc1.dts        | 2 ++
 arch/arm/dts/stm32mp15xc-lxa-tac.dtsi       | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
index 701981358c68..d373ce04cf83 100644
--- a/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
+++ b/arch/arm/dts/stm32mp153c-lxa-fairytux2.dtsi
@@ -10,6 +10,8 @@ / {
 	barebox,deep-probe;
 
 	chosen {
+		stdout-path = "serial0:115200n8";
+
 		environment {
 			compatible = "barebox,environment";
 			device-path = &sdmmc2, "partname:barebox-environment";
diff --git a/arch/arm/dts/stm32mp157c-lxa-mc1.dts b/arch/arm/dts/stm32mp157c-lxa-mc1.dts
index 392194c20bd6..cfccb5207f43 100644
--- a/arch/arm/dts/stm32mp157c-lxa-mc1.dts
+++ b/arch/arm/dts/stm32mp157c-lxa-mc1.dts
@@ -14,6 +14,8 @@ aliases {
 	};
 
 	chosen {
+		stdout-path = "serial0:115200n8";
+
 		environment-sd {
 			compatible = "barebox,environment";
 			device-path = &sdmmc1, "partname:barebox-environment";
diff --git a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
index 6bd119a799e0..8c605fef2cbc 100644
--- a/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
+++ b/arch/arm/dts/stm32mp15xc-lxa-tac.dtsi
@@ -9,6 +9,8 @@ / {
 	barebox,deep-probe;
 
 	chosen {
+		stdout-path = "serial0:115200n8";
+
 		environment {
 			compatible = "barebox,environment";
 			device-path = &environment_emmc;
-- 
2.47.3



