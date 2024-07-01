Delivery-date: Mon, 01 Jul 2024 08:15:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOAK4-000PMI-1M
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 08:15:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOAK3-0000zw-OW
	for lore@pengutronix.de; Mon, 01 Jul 2024 08:15:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZcFB/e37BbQN+LA2dfucz1S6mBeVAaDdownp+lxK+lg=; b=q41j42WxK2UGOfDyDpakIGhNXg
	UNhZIx9ttieZxfGSXQIYrMttwXKJZYGeEA8QqJMx/JS55709WkUJd6DMs133Lelz8IsxwqC+S93ua
	3lGM+8TjT2zR4TxS2kmlDqQjR+cTwMxPFoQ8ypdI/MfdbUNQP+Offp4Dx7UDrKrTAFdOeRHjzfQdC
	w0dPwrCQJRRyF0AQ8ZrXbPnoHF6/0Q79FgWhCkW8YWau5r9cagc1+shVWzGPmuXUxN4tbEFG3Cc7g
	CY96dEFHtUWk7eA8hbfNzNsLpmPJ7j6CEDi5jYB3xKiLcDrp0bp1Vt8te94TMKXNiL1ASL1iAKDeq
	h/r/F5pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOAJK-00000001qKy-1O2J;
	Mon, 01 Jul 2024 06:14:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOAJG-00000001qKB-1h2M
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 06:14:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sOAJC-0000vb-8x; Mon, 01 Jul 2024 08:14:38 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 01 Jul 2024 08:14:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240701-v2024-03-0-topic-imx93-designware-imx-v2-1-d5e05ff70389@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIADpJgmYC/5WNQQ6DIBREr2JY9zeAWrGr3qNxofDVvygQsNTGe
 PeiN+hu3kwyb2MRA2Fk92JjARNFcjaDvBRMz72dEMhkZpLLileigXQk4CVwWJwnDfRa2xIMRpr
 spw94FKBkbRTHmxqHhuUvH3Ck9fQ8u8wzxcWF76lN4mj/NSSRd12XUgs1tkNfPzza6b0EZ2m9G
 mTdvu8/+hmvBt8AAAA=
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4022;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=EOALTEeSpPEomCoeKkB3GGSt3pzRFMRBPx0f4o2VVP0=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGNKaPL3OpR6us/L69IOHr9xSisv9Y7Lkr86SrWqCbExPJ
 jHOtLLoKGVhEONikBVTZIlce0hjs/BnnS/HzzPAzGFlAhnCwMUpABO5+ZDhr/DRuz9fpLEtXhIW
 vNz+q+tP5lX8n87W/mh5+uiozeIapW0M/wMfTrGe3uAf+8lgTU9UU+f25VtfvPSwX9W/c//WS11
 zLjACAA==
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_231442_481954_E15436E0 
X-CRM114-Status: GOOD (  15.35  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] net: designware-imx: add fix_reset callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX93 needs to set the RMII speed to successfully reset. Add a
callback that does this inspired by the linux patch:

    net: stmmac: dwmac-imx: use platform specific reset for imx93 SoCs
    commit b536f32b5b034f592df0f0ba129ad59fa0f3e532

    net: stmmac: dwmac-imx: use platform specific reset for imx93 SoCs

    The patch addresses an issue with the reset logic on the i.MX93 SoC, which
    requires configuration of the correct interface speed under RMII mode to
    complete the reset. The patch implements a fix_soc_reset function and uses
    it specifically for the i.MX93 SoCs.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes in v2:
- dropped TX_CLK patch from series
- Link to v1: https://lore.barebox.org/20240417-v2024-03-0-topic-imx93-designware-imx-v1-0-c532c18f9ba5@pengutronix.de
---
 drivers/net/designware_eqos.c |  3 +++
 drivers/net/designware_eqos.h |  1 +
 drivers/net/designware_imx.c  | 21 +++++++++++++++++++++
 3 files changed, 25 insertions(+)

diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
index ccce51b6af..4a97cbb75e 100644
--- a/drivers/net/designware_eqos.c
+++ b/drivers/net/designware_eqos.c
@@ -431,6 +431,9 @@ static int eqos_start(struct eth_device *edev)
 	 */
 	setbits_le32(&eqos->dma_regs->mode, EQOS_DMA_MODE_SWR);
 
+	if (eqos->ops->fix_reset)
+		eqos->ops->fix_reset(eqos, &eqos->mac_regs->config);
+
 	ret = readl_poll_timeout(&eqos->dma_regs->mode, mode_set,
 				 !(mode_set & EQOS_DMA_MODE_SWR),
 				 100 * USEC_PER_MSEC);
diff --git a/drivers/net/designware_eqos.h b/drivers/net/designware_eqos.h
index 951565e8f9..9f2fc2fe6d 100644
--- a/drivers/net/designware_eqos.h
+++ b/drivers/net/designware_eqos.h
@@ -14,6 +14,7 @@ struct eqos_ops {
 	int (*get_ethaddr)(struct eth_device *dev, unsigned char *mac);
 	int (*set_ethaddr)(struct eth_device *edev, const unsigned char *mac);
 	void (*adjust_link)(struct eth_device *edev);
+	void (*fix_reset)(struct eqos *, unsigned int *reg);
 	unsigned long (*get_csr_clk_rate)(struct eqos *);
 
 	bool enh_desc;
diff --git a/drivers/net/designware_imx.c b/drivers/net/designware_imx.c
index c281d3b64b..ab60d98298 100644
--- a/drivers/net/designware_imx.c
+++ b/drivers/net/designware_imx.c
@@ -24,8 +24,11 @@
 #define MX93_GPR_ENET_QOS_INTF_SEL_RGMII	(0x1 << 1)
 #define MX93_GPR_ENET_QOS_CLK_GEN_EN		(0x1 << 0)
 
+#define RMII_RESET_SPEED			(0x3 << 14)
+
 struct eqos_imx_soc_data {
 	int (*set_interface_mode)(struct eqos *eqos);
+	void (*fix_soc_reset)(struct eqos *eqos, u32 *mac_regs);
 	bool mac_rgmii_txclk_auto_adj;
 };
 
@@ -82,6 +85,22 @@ static int eqos_set_txclk(struct eqos *eqos, int speed)
 	return ret;
 }
 
+static void eqos_fix_reset(struct eqos *eqos, u32 *reg)
+{
+	struct eqos_imx_priv *priv = eqos->priv;
+
+	if (priv->soc_data->fix_soc_reset)
+		priv->soc_data->fix_soc_reset(eqos, reg);
+}
+
+static void eqos_imx93_reset(struct eqos *eqos, u32 *mac_reg)
+{
+	if (eqos->interface == PHY_INTERFACE_MODE_RMII) {
+		udelay(200);
+		setbits_le32(mac_reg, RMII_RESET_SPEED);
+	}
+}
+
 static void eqos_adjust_link_imx(struct eth_device *edev)
 {
 	struct eqos *eqos = edev->priv;
@@ -184,6 +203,7 @@ static struct eqos_ops imx_ops = {
 	.set_ethaddr = eqos_set_ethaddr,
 	.adjust_link = eqos_adjust_link_imx,
 	.get_csr_clk_rate = eqos_get_csr_clk_rate_imx,
+	.fix_reset = eqos_fix_reset,
 
 	.clk_csr = EQOS_MDIO_ADDR_CR_250_300,
 	.config_mac = EQOS_MAC_RXQ_CTRL0_RXQ0EN_ENABLED_DCB,
@@ -240,6 +260,7 @@ static void eqos_remove_imx(struct device *dev)
 
 static struct eqos_imx_soc_data imx93_soc_data = {
 	.set_interface_mode = eqos_imx93_set_interface_mode,
+	.fix_soc_reset = eqos_imx93_reset,
 	.mac_rgmii_txclk_auto_adj = true,
 };
 

---
base-commit: bafdf4b35d777d159ac4058efc86d36622ce5ccf
change-id: 20240417-v2024-03-0-topic-imx93-designware-imx-825d80e68fb7

Best regards,
-- 
Steffen Trumtrar <s.trumtrar@pengutronix.de>



