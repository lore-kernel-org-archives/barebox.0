Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VkrOZ-0006s4-La
 for barebox@lists.infradead.org; Mon, 25 Nov 2013 08:19:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Nov 2013 09:19:29 +0100
Message-Id: <1385367569-11932-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mmc: omap: name mmc device after devicetree alias
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/omap_hsmmc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/mci/omap_hsmmc.c b/drivers/mci/omap_hsmmc.c
index 19db461..357d99a 100644
--- a/drivers/mci/omap_hsmmc.c
+++ b/drivers/mci/omap_hsmmc.c
@@ -620,6 +620,12 @@ static int omap_mmc_probe(struct device_d *dev)
 			hsmmc->mci.devname = pdata->devname;
 	}
 
+	if (dev->device_node) {
+		const char *alias = of_alias_get(dev->device_node);
+		if (alias)
+			hsmmc->mci.devname = xstrdup(alias);
+	}
+
 	dev->priv = hsmmc;
 	dev->detect = omap_mmc_detect,
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
