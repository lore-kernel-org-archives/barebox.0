Delivery-date: Wed, 11 Sep 2024 10:24:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIeW-003QGW-2Q
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:24:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIeV-0001UO-L4
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:24:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TFZ8/JaiEBfDpbjqTbarxLj0brR3hcUIYGmuQId1R8Q=; b=1FOFt1dlO5feXXmn2gLkrEWc76
	/jXRKFhIiqXpEFUJbayfyp5Zxx7PARVLntizuOQXxXvtEzP/9nfqmJ0oMTz5fawLXFrxf2rcCh+sM
	UM7HlyVhO1ERSYOll1PXqV+j2KYD/GUeAZfcnW1knctndCehmhqEsvQtIt9bchGooRGSFkRkPn3qs
	2BUlWDEU1Et3zmyfBUtzE7NVY/wGWqaRelH8LIT6pqrC5tf8B9ulJIh5NyoZU9v9L1WaLWRDuzeiY
	I/JpoAerLRsSQhPJwn/pYo0oaWbbfmQVq2iaW7u90c5oNozZeqnHadEcVj6cYtJyqklzAzN+TuVpX
	ZsVJlgBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIdz-00000008d2K-0XyB;
	Wed, 11 Sep 2024 08:24:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIXc-00000008bEN-2jtP
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:17:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXb-0006fb-DH; Wed, 11 Sep 2024 10:17:31 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXb-0075kM-0g; Wed, 11 Sep 2024 10:17:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1soIXa-006OIC-1W;
	Wed, 11 Sep 2024 10:17:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Sep 2024 10:17:30 +0200
Message-Id: <20240911081730.1523334-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_011732_718823_97784537 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: psci: hide ARM_PSCI options when ARCH_IMX7 is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We only support providing PSCI on a single SoC, the i.MX7. Having the
option in other configuration is thus confusing.

Therefore hide the symbols when not building for the i.MX7. Using PSCI
as consumer is a separate symbol (ARM_PSCI_CLIENT) and should be
unaffected.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig          | 11 +++++++++--
 arch/arm/mach-imx/Kconfig |  1 +
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 6406b8ebe073..6815e4de46bd 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -412,9 +412,16 @@ config ARM_SECURE_MONITOR
 config ARM_PSCI_OF
 	bool
 
+config HAS_PSCI_PROVIDER
+	bool
+	help
+	  Selected by platforms that implement PSCI inside barebox.
+	  This is uncommon as barebox is usually PSCI client on systems
+	  with PSCI with the provider being ARM Trusted Firmware.
+
 config ARM_PSCI
-	bool "enable Power State Coordination Interface (PSCI) support"
-	depends on CPU_V7
+	bool "Provide Power State Coordination Interface (PSCI) support"
+	depends on HAS_PSCI_PROVIDER
 	select ARM_SECURE_MONITOR
 	select ARM_PSCI_OF
 	help
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 96ab72315732..d1f8dc795b57 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -143,6 +143,7 @@ config ARCH_IMX6UL
 config ARCH_IMX7
 	bool
 	select CPU_V7
+	select HAS_PSCI_PROVIDER
 	select PINCTRL_IMX_IOMUX_V3
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
-- 
2.39.2



