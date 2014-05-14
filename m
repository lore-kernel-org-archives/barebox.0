Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wkg4o-0000Es-LX
 for barebox@lists.infradead.org; Wed, 14 May 2014 20:46:59 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p548307D2.dip0.t-ipconnect.de [84.131.7.210])
 by lynxeye.de (Postfix) with ESMTPA id 8E3B718B425A
 for <barebox@lists.infradead.org>; Wed, 14 May 2014 22:45:59 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 14 May 2014 22:45:31 +0200
Message-Id: <1400100352-13002-4-git-send-email-dev@lynxeye.de>
In-Reply-To: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
References: <1400100352-13002-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 04/25] clk: tegra: reset UARTS from clock controller
To: barebox@lists.infradead.org

The console devices are the only ones that can't
use the reset controller properly, as they get
registered from platform code. Reset those devices
from the clock controller.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/clk-tegra20.c |  1 +
 drivers/clk/tegra/clk-tegra30.c |  1 +
 drivers/clk/tegra/clk.c         | 11 +++++++++++
 drivers/clk/tegra/clk.h         |  2 ++
 4 files changed, 15 insertions(+)

diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index 7c7a915b40d4..cb0a57181de4 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -348,6 +348,7 @@ static int tegra20_car_probe(struct device_d *dev)
 			    &clk_data);
 
 	tegra_clk_init_rst_controller(car_base, dev->device_node, 3 * 32);
+	tegra_clk_reset_uarts();
 
 	return 0;
 }
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index adb5824e4be8..9536288f89ac 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -342,6 +342,7 @@ static int tegra30_car_probe(struct device_d *dev)
 			    &clk_data);
 
 	tegra_clk_init_rst_controller(car_base, dev->device_node, 6 * 32);
+	tegra_clk_reset_uarts();
 
 	return 0;
 }
diff --git a/drivers/clk/tegra/clk.c b/drivers/clk/tegra/clk.c
index a6b81d029b9e..cb4d92020392 100644
--- a/drivers/clk/tegra/clk.c
+++ b/drivers/clk/tegra/clk.c
@@ -187,3 +187,14 @@ void tegra_clk_init_rst_controller(void __iomem *base, struct device_node *np,
 	rst_ctlr.nr_resets = num;
 	reset_controller_register(&rst_ctlr);
 }
+
+void tegra_clk_reset_uarts(void) {
+	int i;
+	int console_device_ids[] = {6, 7, 55, 65, 66};
+
+	for (i = 0; i < ARRAY_SIZE(console_device_ids); i++) {
+		rst_ops.assert(&rst_ctlr, console_device_ids[i]);
+		udelay(2);
+		rst_ops.deassert(&rst_ctlr, console_device_ids[i]);
+	}
+};
diff --git a/drivers/clk/tegra/clk.h b/drivers/clk/tegra/clk.h
index 29d5249b2ec4..6ce9f7e26daa 100644
--- a/drivers/clk/tegra/clk.h
+++ b/drivers/clk/tegra/clk.h
@@ -160,3 +160,5 @@ struct tegra_clk_periph_regs {
 
 void tegra_clk_init_rst_controller(void __iomem *base, struct device_node *np,
 		unsigned int num);
+
+void tegra_clk_reset_uarts(void);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
