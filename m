Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh82d-0003wl-9I
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:12:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id a14so3152449plm.12
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 23:12:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 23:11:59 -0800
Message-Id: <20190109071210.18896-11-andrew.smirnov@gmail.com>
In-Reply-To: <20190109071210.18896-1-andrew.smirnov@gmail.com>
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/21] soc: imx: gpcv2: fix regulator deferred probe
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 9e01e2d56db23485a75864b6aeee8e443f024ddb

  If a regulator requests a deferred probe, the power domain gets
  initialized twice. This leads to a list double add (without
  list debugging the kernel hangs due to the double add later):

    WARNING: CPU: 0 PID: 19 at lib/list_debug.c:31 __list_add_valid+0xbc/0xc4
    list_add double add: new=c1229754, prev=c12383b4, next=c1229754.

  Initialize the power domain after we get the regulator. Also do
  not print an error in case the regulator defers probing.

  Cc: Fabio Estevam <fabio.estevam@nxp.com>
  Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
  Cc: linux-arm-kernel@lists.infradead.org
  Cc: linux-kernel@vger.kernel.org
  Fixes: 03aa12629fc4 ("soc: imx: Add GPCv2 power gating driver")
  Signed-off-by: Stefan Agner <stefan@agner.ch>
  Acked-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Signed-off-by: Shawn Guo <shawnguo@kernel.org>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/soc/imx/gpcv2.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index 918a35462..f16598e97 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -200,16 +200,11 @@ static int imx7_pgc_domain_probe(struct device_d *dev)
 
 	domain->dev = dev;
 
-	ret = pm_genpd_init(&domain->genpd, NULL, true);
-	if (ret) {
-		dev_err(domain->dev, "Failed to init power domain\n");
-		return ret;
-	}
-
 	domain->regulator = regulator_get(domain->dev, "power");
 	if (IS_ERR(domain->regulator)) {
 		if (PTR_ERR(domain->regulator) != -ENODEV) {
-			dev_err(domain->dev, "Failed to get domain's regulator\n");
+			if (PTR_ERR(domain->regulator) != -EPROBE_DEFER)
+				dev_err(domain->dev, "Failed to get domain's regulator\n");
 			return PTR_ERR(domain->regulator);
 		}
 	} else {
@@ -217,6 +212,12 @@ static int imx7_pgc_domain_probe(struct device_d *dev)
 				      domain->voltage, domain->voltage);
 	}
 
+	ret = pm_genpd_init(&domain->genpd, NULL, true);
+	if (ret) {
+		dev_err(domain->dev, "Failed to init power domain\n");
+		return ret;
+	}
+
 	ret = of_genpd_add_provider_simple(domain->dev->device_node,
 					   &domain->genpd);
 	if (ret) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
