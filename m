Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU6R3-0007hd-Bg
 for barebox@lists.infradead.org; Mon, 11 Nov 2019 09:56:38 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 71F161C0008
 for <barebox@lists.infradead.org>; Mon, 11 Nov 2019 09:56:33 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 11 Nov 2019 10:56:07 +0100
Message-Id: <20191111095607.1813-2-ahmad@a3f.at>
In-Reply-To: <20191111095607.1813-1-ahmad@a3f.at>
References: <20191111095607.1813-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] net: designware: eqos: stop DMA on halt
To: barebox@lists.infradead.org

designware_eqos.c contains an eqos_stop implementation to stop the NIC
when halting the interface. Unfortunately it wasn't used leading to
memory corruption on boot, possibly due to DMA. Fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/net/designware_stm32.c    | 2 ++
 drivers/net/designware_tegra186.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index 5b087ad5a371..ed54ff2b2615 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -199,6 +199,8 @@ static void eqos_stop_stm32(struct eth_device *edev)
 {
 	struct eqos_stm32 *priv = to_stm32(edev->priv);
 
+	eqos_stop(edev);
+
 	clk_bulk_disable(priv->num_clks, priv->clks);
 }
 
diff --git a/drivers/net/designware_tegra186.c b/drivers/net/designware_tegra186.c
index 58484d4095dc..618ae113971d 100644
--- a/drivers/net/designware_tegra186.c
+++ b/drivers/net/designware_tegra186.c
@@ -282,6 +282,8 @@ static void eqos_stop_tegra186(struct eth_device *edev)
 {
 	struct eqos_tegra186 *priv = to_tegra186(edev->priv);
 
+	eqos_stop(edev);
+
 	eqos_reset_tegra186(priv, true);
 
 	clk_bulk_disable(priv->num_clks, priv->clks);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
