Delivery-date: Wed, 17 Apr 2024 11:12:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rx1LP-004jrv-2g
	for lore@lore.pengutronix.de;
	Wed, 17 Apr 2024 11:12:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rx1LP-0006jw-6B
	for lore@pengutronix.de; Wed, 17 Apr 2024 11:12:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aQfLP2L2Znd3nFY53M96BNEHbpEnl4WAii5QwNek2dQ=; b=Xo/EcsXJwB3cKA8D57RSFZ248S
	20RGit6zpCkHLX2DlGJndLrFTITxgA2tZiHx7BJntqFlG5XMOX8aA+q3gC6VCEt6kQIqa7/U6SIHp
	EJdsJ9YTm2hYi9zk2naARdksFh7b+mV4ZJuEt1UXa8G0GMkHxzpbtZeOnjvj6r2ElL1XBPgrZ1Id/
	UqhNE6kgGKoGSzH/JLWerM9bhP0gK9s0THT4HuafjqcgJ+YVKXiDtLC8yjXK29KnMBgLwfQSdtsf9
	MgJ3r3s4hzEf0HBXKe4HvC40bp2x0Qmv0RO7btr5h50cZYcRPhl/fr4RXlDXvEHJonegBKz2k1LV/
	N0IQYvJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx1Kf-0000000FM2f-3aii;
	Wed, 17 Apr 2024 09:11:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx1Kb-0000000FLzh-0jVz
	for barebox@lists.infradead.org;
	Wed, 17 Apr 2024 09:11:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rx1KY-0005JK-Fj
	for barebox@lists.infradead.org; Wed, 17 Apr 2024 11:11:50 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 17 Apr 2024 11:11:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240417-v2024-03-0-topic-imx93-designware-imx-v1-2-c532c18f9ba5@pengutronix.de>
References: <20240417-v2024-03-0-topic-imx93-designware-imx-v1-0-c532c18f9ba5@pengutronix.de>
In-Reply-To: <20240417-v2024-03-0-topic-imx93-designware-imx-v1-0-c532c18f9ba5@pengutronix.de>
To: barebox@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1390;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=U5ZqbVKwCEe8ljsmRASUm/ImJnXdEsgGVq/19lrca7w=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGNLkJwWp3u2/9OOnYH92TNukLrcIt5vTYoSd296KbCl8c
 6ooNkqjo5SFQYyLQVZMkSVy7SGNzcKfdb4cP88AM4eVCWQIAxenAEwk7jnDX5kJEsKtWkreq5+x
 PUubdaLuqfsR5rX9u65avGLYL/dS+zrDP4XrRlxq1WIPa/xn7OVXvdnP1PRQskf+4W+/LMmdKRe
 TWAE=
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_021153_243260_BCD8D645 
X-CRM114-Status: UNSURE (   9.03  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] net: designware-imx: i.MX93: set TX_CLK in RMII mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

According to NXP AT14149 the TX_CLK direction must be set to output
when the ENET is used in RMII mode.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/designware_imx.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/designware_imx.c b/drivers/net/designware_imx.c
index ab60d98298..2cc707ecac 100644
--- a/drivers/net/designware_imx.c
+++ b/drivers/net/designware_imx.c
@@ -26,6 +26,10 @@
 
 #define RMII_RESET_SPEED			(0x3 << 14)
 
+#define MX93_GPR_ENET_CLK_SEL_OFFSET		0x4
+#define MX93_ENET_CLK_ENET_QOS_TX_CLK_SEL_MASK	GENMASK(0, 0)
+#define MX93_ENET_CLK_ENET_QOS_TX_CLK_SEL	(0x1 << 0)
+
 struct eqos_imx_soc_data {
 	int (*set_interface_mode)(struct eqos *eqos);
 	void (*fix_soc_reset)(struct eqos *eqos, u32 *mac_regs);
@@ -155,6 +159,14 @@ static int eqos_imx93_set_interface_mode(struct eqos *eqos)
 		break;
 	case PHY_INTERFACE_MODE_RMII:
 		val = MX93_GPR_ENET_QOS_INTF_SEL_RMII;
+
+		/* According to NXP AN14149, the direction of the
+		 * TX_CLK must be set to output in RMII mode.
+		 */
+		regmap_update_bits(priv->intf_regmap,
+				   priv->intf_reg_off + MX93_GPR_ENET_CLK_SEL_OFFSET,
+				   MX93_ENET_CLK_ENET_QOS_TX_CLK_SEL_MASK,
+				   MX93_ENET_CLK_ENET_QOS_TX_CLK_SEL);
 		break;
 	case PHY_INTERFACE_MODE_RGMII:
 	case PHY_INTERFACE_MODE_RGMII_ID:

-- 
2.43.2



