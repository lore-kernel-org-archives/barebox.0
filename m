Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1RB-0006hY-4z
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:07:46 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 8E5E226C2005
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:48 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:46 +0100
Message-Id: <1414959235-18095-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 04/13] pinctrl: tegra: try to select "boot" state
To: barebox@lists.infradead.org

New DTs call the initial pinctrl state "boot" in
order to avoid Linux reconfiguring the pinctrl
by default. The bootloader should explicitly set
this state.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/pinctrl/pinctrl-tegra20.c | 8 ++++++--
 drivers/pinctrl/pinctrl-tegra30.c | 8 ++++++--
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-tegra20.c b/drivers/pinctrl/pinctrl-tegra20.c
index 3c11be6..be9d8a9 100644
--- a/drivers/pinctrl/pinctrl-tegra20.c
+++ b/drivers/pinctrl/pinctrl-tegra20.c
@@ -320,10 +320,14 @@ static int pinctrl_tegra20_probe(struct device_d *dev)
 	ctrl->pinctrl.ops = &pinctrl_tegra20_ops;
 
 	ret = pinctrl_register(&ctrl->pinctrl);
-	if (ret)
+	if (ret) {
 		free(ctrl);
+		return ret;
+	}
+
+	of_pinctrl_select_state(dev->device_node, "boot");
 
-	return ret;
+	return 0;
 }
 
 static __maybe_unused struct of_device_id pinctrl_tegra20_dt_ids[] = {
diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index 8277218..aac6760 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -897,10 +897,14 @@ static int pinctrl_tegra30_probe(struct device_d *dev)
 	ctrl->pinctrl.ops = &pinctrl_tegra30_ops;
 
 	ret = pinctrl_register(&ctrl->pinctrl);
-	if (ret)
+	if (ret) {
 		free(ctrl);
+		return ret;
+	}
+
+	of_pinctrl_select_state(dev->device_node, "boot");
 
-	return ret;
+	return 0;
 }
 
 static __maybe_unused struct of_device_id pinctrl_tegra30_dt_ids[] = {
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
