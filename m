Delivery-date: Tue, 29 Aug 2023 14:45:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qay61-00DKeC-9r
	for lore@lore.pengutronix.de; Tue, 29 Aug 2023 14:45:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qay5z-0004mi-3M
	for lore@pengutronix.de; Tue, 29 Aug 2023 14:45:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GVa5tvEBMyZ9yDRaTFX0Vtpt80AhavyIR/NjyAUsXfA=; b=JQayw0b7+rYn2CHMK35Q74d2yY
	fp3UohRL4m21OHdYDJcrZ4vPnloj2YEaqzB6/BsdJLY3eh2os9NKKirP+0+N/ivgNAJFYpYO7x5+n
	VrstI61/8vpYWrQD5G7gZIi8A4Ve8h/ohqjba1koqsbEKj4qN0k4KGZv1LHhEfC0k+L3AVNLTbM/T
	C46BnsJA/xj8WqdxpH3x19EBC7VuyHz/ngtjjX4x23dpfjypySEMr4sFQSAz7IysvvSsXwBlVnfjR
	thhZD3vhxDxquSg6j1sDQIjRQ4x1I9mkcwjnjfW6HO2w5YoMMJfNcl151Em5pBVcKEH1tuDWFCUr2
	yF7SHtPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qay4h-00BWUw-1Q;
	Tue, 29 Aug 2023 12:44:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qay4f-00BWT7-07
	for barebox@lists.infradead.org;
	Tue, 29 Aug 2023 12:44:02 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qay4b-0004QT-KN
	for barebox@lists.infradead.org; Tue, 29 Aug 2023 14:43:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 29 Aug 2023 14:43:53 +0200
Message-Id: <20230829124356.4178308-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_054401_078750_2B0B4EAE 
X-CRM114-Status: GOOD (  12.02  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] ARM: boards: polyhex-debix: fix RGMII pin setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On the Debix SBC the EQOS interface is used as primary interface, the
FEC pins are routed to the extension header. On the other hand the Debix
SoM/Baseboard combination both interfaces are used. So fix the RGMII pin
setup by adding the EQOS pin as well and keep the FEC.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/polyhex-debix/board.c | 3 ++-
 include/mach/imx/iomux-mx8mp.h        | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/polyhex-debix/board.c b/arch/arm/boards/polyhex-debix/board.c
index d668dd1816f8..46cb18c5889c 100644
--- a/arch/arm/boards/polyhex-debix/board.c
+++ b/arch/arm/boards/polyhex-debix/board.c
@@ -28,7 +28,8 @@ static int polyhex_debix_probe(struct device *dev)
 
 	/* Enable RGMII TX clk output */
 	val = readl(MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
-	val |= MX8MP_IOMUXC_GPR1_ENET1_RGMII_EN;
+	val |= MX8MP_IOMUXC_GPR1_ENET1_RGMII_EN |
+	       MX8MP_IOMUXC_GPR1_ENET_QOS_RGMII_EN;
 	writel(val, MX8MP_IOMUXC_GPR_BASE_ADDR + MX8MP_IOMUXC_GPR1);
 
 	return 0;
diff --git a/include/mach/imx/iomux-mx8mp.h b/include/mach/imx/iomux-mx8mp.h
index b410eaebc8ac..98e340d3dad1 100644
--- a/include/mach/imx/iomux-mx8mp.h
+++ b/include/mach/imx/iomux-mx8mp.h
@@ -1099,5 +1099,6 @@ static inline void imx8mp_setup_pad(iomux_v3_cfg_t pad)
 
 #define MX8MP_IOMUXC_GPR1			0x4
 #define MX8MP_IOMUXC_GPR1_ENET1_RGMII_EN	BIT(22)
+#define MX8MP_IOMUXC_GPR1_ENET_QOS_RGMII_EN	BIT(21)
 
 #endif  /* __ASM_ARCH_IMX8MP_PINS_H__ */
-- 
2.39.2



