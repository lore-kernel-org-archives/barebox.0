Delivery-date: Mon, 21 Mar 2022 10:22:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEFX-001Ecu-A0
	for lore@lore.pengutronix.de; Mon, 21 Mar 2022 10:22:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nWEFZ-0003pJ-Io
	for lore@pengutronix.de; Mon, 21 Mar 2022 10:22:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovmA3pkrTTx+o69lpf7qr0zOl1MemaJLr0tUvygvrrI=; b=AcRlNUpUoXtxz1
	ur/eyQF97woBtGbdDB6YQHAglpBAZSUBVaWcG8m/PpyhNv7l4Z+fYlzGHMsNsDvR2zQEZTvsjCnIo
	a4reVQLnRQ0gBA9uYNwzJHJs8FtuLAXmBraFBpb0gzmJDEU4gcpIq76/SFkfRwWFaqKlJ8d02E9DN
	Yuh5LHhj3+Cl4vHW3hI5/N+pGAktVpjQ1xqFH7DGmAqkZtPqpJ/zEdpumt214AoqBhT2Ldm8Fqkho
	OR8u2z2IcoPYKOvESFri08eqZ/Lw6ydZmxYKKX8Q4Nm2UxFcuU7VC+XEUr3k4mYDJBx12vkii8f3y
	5HRD+J6zW4tMD7BSgt1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWEDx-0078Ea-RF; Mon, 21 Mar 2022 09:21:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWEDt-0078Do-UN
 for barebox@lists.infradead.org; Mon, 21 Mar 2022 09:21:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEDq-0003Rj-5Y; Mon, 21 Mar 2022 10:21:06 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nWEDp-005hOK-C8; Mon, 21 Mar 2022 10:21:05 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 21 Mar 2022 10:21:03 +0100
Message-Id: <20220321092103.1357659-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220321092103.1357659-1-o.rempel@pengutronix.de>
References: <20220321092103.1357659-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_022110_001617_E81F2A3C 
X-CRM114-Status: GOOD (  10.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 2/2] ARM: boards: protonic-imx6: properly configure RGMII
 direction for the FEC MAC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To make SJA1105 switch work properly with bareobx, we need to configure
RGMII ref_clk.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 5ca80bd306..1a5c1a7bbd 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -654,6 +654,18 @@ static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
 	return 0;
 }
 
+static int prt_imx6_init_prtwd3(struct prt_imx6_priv *priv)
+{
+	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
+	uint32_t val;
+
+	val = readl(iomux + IOMUXC_GPR1);
+	val |= IMX6Q_GPR1_ENET_CLK_SEL_ANATOP;
+	writel(val, iomux + IOMUXC_GPR1);
+
+	return 0;
+}
+
 static int prt_imx6_rfid_fixup(struct prt_imx6_priv *priv,
 			       struct device_node *root)
 {
@@ -1116,6 +1128,7 @@ static const struct prt_machine_data prt_imx6_cfg_prtwd3[] = {
 		.i2c_adapter = 0,
 		.emmc_usdhc = 2,
 		.sd_usdhc = 0,
+		.init = prt_imx6_init_prtwd3,
 		.flags = PRT_IMX6_BOOTSRC_EMMC,
 	}, {
 		.hw_id = UINT_MAX
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

