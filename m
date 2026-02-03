Delivery-date: Tue, 03 Feb 2026 11:20:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnDVr-008Mqb-16
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 11:20:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnDVq-00029l-AS
	for lore@pengutronix.de; Tue, 03 Feb 2026 11:20:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=A9K+UDOtArN64USyVdUEAG6FHAIADMQZVwMPj9sbruU=; b=b/q52tucV7TRgH9jHCahffUyIO
	/9Zmgy+7CZgCL3R0ilhZzEaGwxWUPWwePCcpE0KnoHyFoA6bfgL43QRLToyGZkeXGs8bvmpfrXh6X
	R1W4wWPba5uvTPlukf8f/kkN57KCRcgN43MvEH11Tus1gmGr/nJsnVFkG37nD1QCprQWkYzl7OrMS
	ExUQn4LCsbShiyTqtY8Ry+EXfE2yEH+wQFDC90fHSRCc0TkIjktuqokPc9s5P3u1WZlgpgaMWK1oy
	JqyqpNbGmLFloWHObEd6vEcCF9xMXs8OtE1TPwZIREUml2KgJCJc0IlM9DDbQm16J0iy8edMxZgM8
	4nyiGeAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDVE-00000006SoQ-1GtS;
	Tue, 03 Feb 2026 10:19:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDVB-00000006Sns-3Jih
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 10:19:23 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vnDV8-00020D-RB; Tue, 03 Feb 2026 11:19:18 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 03 Feb 2026 11:19:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260203-stm32-generic-v1-1-6fa7a2df3cee@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAKTLgWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIwNj3eKSXGMj3fTUPKC+ZF1TC4NkcwMzM0MzC0MloJ6CotS0zAqwedG
 xtbUAAGpjU18AAAA=
X-Change-ID: 20260203-stm32-generic-580c70661681
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1251; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=b2NPHJLIGT9/HHQ5yiCiMEs9OIswWEy2if0TdkyfQXg=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshsPL0sclHS6btTw5TbVmetyf5a+IC31lR/ue5Zv4Xz8
 3ifzgp+2VHKwiDGxSArpsgSqyanIGTsf92s0i4WZg4rE8gQBi5OAZjImm8M/6snm1zuWXDz19/m
 hJLK07ar1dytKtiufwicUPLP8dsfXgVGhrPXNH9uY/N40KdlWue4kfOcBg/n7iXa1w5PmP6hT4Z
 1BwsA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_021921_837088_DB3D6F41 
X-CRM114-Status: UNSURE (   8.26  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: stm32mp: Make ARCH_STM32MP13 and ARCH_STM32MP157
 selectable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARCH_STM32MP13 and ARCH_STM32MP157 are automatically selected if a
dependent machine is selected. However, without any machine selected,
CONFIG_ARCH_STM32MP still enables build of the
barebox-stm32mp-generic.img image, which, provided a dtb, is functional
without requiring further board specific code.

In this case ARCH_STM32MP13 and/or ARCH_STM32MP157 need to be explicitly
enabled for the SoC to be fully functional (e.g. clocks).

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm/mach-stm32mp/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 54ce644d73..18a0bf284b 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -8,11 +8,11 @@ config ARCH_NR_GPIO
 
 config ARCH_STM32MP13
 	select ARM_PSCI_CLIENT
-	bool
+	bool "Support STM32MP153-based chips"
 
 config ARCH_STM32MP157
 	select ARM_PSCI_CLIENT
-	bool
+	bool "Support STM32MP157-based chips"
 
 config MACH_STM32MP13XX_DK
 	select ARCH_STM32MP13

---
base-commit: 378bc32467af0afbbcb9d9e3cc1bfd5fb429a826
change-id: 20260203-stm32-generic-580c70661681

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



