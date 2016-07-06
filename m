Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKrpP-0001Rv-Tm
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 18:45:45 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id 11BD826C2006
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 20:44:49 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 20:44:39 +0200
Message-Id: <1467830680-5909-6-git-send-email-dev@lynxeye.de>
In-Reply-To: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
References: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/7] clk: fix misleading indenting
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/clkdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index d9a1c21..1bc5c6d 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -181,8 +181,8 @@ struct clk *clk_get(struct device_d *dev, const char *con_id)
 
 	if (dev) {
 		clk = of_clk_get_by_name(dev->device_node, con_id);
-			if (!IS_ERR(clk))
-				return clk;
+		if (!IS_ERR(clk))
+			return clk;
 	}
 
 	return clk_get_sys(dev_id, con_id);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
