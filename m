Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKTd-0001Rg-OF
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:29:42 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id 75D3D18B425A
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:28:00 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:44 +0200
Message-Id: <1397395668-9325-15-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 14/18] gpio: tegra: add Tegra3 setup
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/gpio/gpio-tegra.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpio/gpio-tegra.c b/drivers/gpio/gpio-tegra.c
index 18a08f1e6ad0..bab32ee3285c 100644
--- a/drivers/gpio/gpio-tegra.c
+++ b/drivers/gpio/gpio-tegra.c
@@ -175,11 +175,20 @@ static struct tegra_gpio_soc_config tegra20_gpio_config = {
 	.bank_count = 7,
 };
 
+static struct tegra_gpio_soc_config tegra30_gpio_config = {
+	.bank_stride = 0x100,
+	.upper_offset = 0x80,
+	.bank_count = 8,
+};
+
 static __maybe_unused struct of_device_id tegra_gpio_dt_ids[] = {
 	{
 		.compatible = "nvidia,tegra20-gpio",
 		.data = (unsigned long)&tegra20_gpio_config
 	}, {
+		.compatible = "nvidia,tegra30-gpio",
+		.data = (unsigned long)&tegra30_gpio_config
+	}, {
 		/* sentinel */
 	},
 };
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
