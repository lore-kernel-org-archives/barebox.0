Delivery-date: Fri, 12 Jun 2026 08:00:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwp-004xu4-0J
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 08:00:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXuwn-0005cK-M5
	for lore@pengutronix.de; Fri, 12 Jun 2026 08:00:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cOEzmBCnP2J6Vom8vrPE0+hwMlVTpV6gPW9jsK/ILGQ=; b=5DHRMobF6EMzr3qS4u62WgPFAd
	SSPdZXU8a34Y3SgFIOUWjhZaE9SYeeSgDDqsbjoPvg70TpBYms5n4ANF4EHJioBPNMyUReimDtaj4
	PhKR/62jINBXQfeImlmmwNP20rcgR++3Fp63mHpnLvye382Yxxy8BH/3N+u/PLDNNJlhrPhIU6RS7
	Jy/SM6YW+4vhkIIYry1OwJoe4vXzxI3YZvT/jIFmUbjKoi+WRhH92K+Lx5MEqyL/3/7okKMsAJBwB
	XotFA/nLNaiacBwyttEaU8vSTJv32PlsLd0MHSjVwifID6eVUQpYTyESUQvHdmHi8QOcVMkufX4op
	Iy/BsUWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvc-0000000AOSb-3k9u;
	Fri, 12 Jun 2026 05:59:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXuvZ-0000000AOPY-1tYS
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 05:59:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-0004mK-3x; Fri, 12 Jun 2026 07:59:34 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvW-002Ker-02;
	Fri, 12 Jun 2026 07:59:34 +0200
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1wXuvV-00000002fPr-3zUM;
	Fri, 12 Jun 2026 07:59:33 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 12 Jun 2026 07:59:17 +0200
Message-ID: <20260612055930.635833-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_225937_502426_653DBC5F 
X-CRM114-Status: UNSURE (   7.72  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 01/10] ARM: introduce ARCH_MICROCHIP for ARM64 Microchip SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the ARCH_MICROCHIP top-level symbol so subsequent peripheral
driver patches (atmel serial, atmel-sdhci, atmel-quadspi, ...) can
gain ARCH_MICROCHIP as a build dependency.

This SoC architecture covers Microchip's ARM64 switch SoCs, starting
with the LAN969X family. ARM32 Microchip/Atmel SoCs (AT91, SAMA5)
continue to use ARCH_AT91.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/Kconfig | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index cb6652001546..5fdec7159827 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -265,6 +265,20 @@ config ARCH_ZYNQMP
 	select GPIOLIB
 	select HAS_MACB
 
+config ARCH_MICROCHIP
+	bool "Microchip ARM64 SoC support"
+	depends on ARCH_MULTIARCH
+	depends on 64BIT
+	select OFDEVICE
+	select COMMON_CLK_OF_PROVIDER
+	select PINCTRL
+	select GPIOLIB
+	help
+	  This enables support for Microchip ARM64-based SoCs,
+	  including the LAN969X Ethernet switch family.
+
+	  For ARM32 Microchip/Atmel SoCs (AT91, SAMA5), use ARCH_AT91.
+
 source "arch/arm/cpu/Kconfig"
 source "arch/arm/mach-at91/Kconfig"
 source "arch/arm/mach-bcm283x/Kconfig"
-- 
2.47.3



