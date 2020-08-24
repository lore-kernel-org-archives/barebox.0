Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kA6V8-0001wG-J3
 for barebox@lists.infradead.org; Mon, 24 Aug 2020 07:02:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Aug 2020 09:02:39 +0200
Message-Id: <20200824070240.20188-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] treewide: s/filed/failed/
To: Barebox List <barebox@lists.infradead.org>

Fix typos.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/remoteproc/imx_rproc.c       | 8 ++++----
 drivers/remoteproc/remoteproc_core.c | 2 +-
 drivers/watchdog/efi_wdt.c           | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
index c5cba3711a..370bebe6e2 100644
--- a/drivers/remoteproc/imx_rproc.c
+++ b/drivers/remoteproc/imx_rproc.c
@@ -172,7 +172,7 @@ static int imx_rproc_start(struct rproc *rproc)
 	ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
 				 dcfg->src_mask, dcfg->src_start);
 	if (ret)
-		dev_err(dev, "Filed to enable M4!\n");
+		dev_err(dev, "Failed to enable M4!\n");
 
 	return ret;
 }
@@ -187,7 +187,7 @@ static int imx_rproc_stop(struct rproc *rproc)
 	ret = regmap_update_bits(priv->regmap, dcfg->src_reg,
 				 dcfg->src_mask, dcfg->src_stop);
 	if (ret)
-		dev_err(dev, "Filed to stop M4!\n");
+		dev_err(dev, "Failed to stop M4!\n");
 
 	return ret;
 }
@@ -210,7 +210,7 @@ static int imx_rproc_da_to_sys(struct imx_rproc *priv, u64 da,
 		}
 	}
 
-	dev_warn(priv->dev, "Translation filed: da = 0x%llx len = 0x%x\n",
+	dev_warn(priv->dev, "Translation failed: da = 0x%llx len = 0x%x\n",
 		 da, len);
 	return -ENOENT;
 }
@@ -353,7 +353,7 @@ static int imx_rproc_probe(struct device_d *dev)
 
 	ret = imx_rproc_addr_init(priv, dev);
 	if (ret) {
-		dev_err(dev, "filed on imx_rproc_addr_init\n");
+		dev_err(dev, "failed on imx_rproc_addr_init\n");
 		goto err_put_rproc;
 	}
 
diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
index 8a28c1bafc..a81787bc6c 100644
--- a/drivers/remoteproc/remoteproc_core.c
+++ b/drivers/remoteproc/remoteproc_core.c
@@ -143,7 +143,7 @@ int rproc_add(struct rproc *rproc)
 
 	ret = firmwaremgr_register(fh);
 	if (ret)
-		dev_err(dev, "filed to register firmware handler %s\n", rproc->name);
+		dev_err(dev, "failed to register firmware handler %s\n", rproc->name);
 	else
 		dev_info(dev, "%s is available\n", rproc->name);
 
diff --git a/drivers/watchdog/efi_wdt.c b/drivers/watchdog/efi_wdt.c
index ea1ede1381..1512b1d99a 100644
--- a/drivers/watchdog/efi_wdt.c
+++ b/drivers/watchdog/efi_wdt.c
@@ -24,7 +24,7 @@ static int efi_wdt_set_timeout(struct watchdog *wd, unsigned timeout)
 
 	efiret = BS->set_watchdog_timer(timeout, 0, 0, NULL);
 	if (EFI_ERROR(efiret)) {
-		dev_err(priv->dev, "filed to set EFI watchdog: %lx\n", efiret);
+		dev_err(priv->dev, "failed to set EFI watchdog: %lx\n", efiret);
 		return -EINVAL;
 	}
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
