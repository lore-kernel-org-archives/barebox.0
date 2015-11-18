Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzA2x-0001st-Cl
 for barebox@lists.infradead.org; Wed, 18 Nov 2015 21:13:43 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 18 Nov 2015 21:12:53 +0000
Message-ID: <1447881174.4553.174.camel@rtred1test09.kymeta.local>
References: <1447880807.4553.171.camel@rtred1test09.kymeta.local>
In-Reply-To: <1447880807.4553.171.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <20CFBB8C1F1F224EB3FAC4BBE6B0967A@kymetacorp.com>
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
Subject: [PATCH 3/4] mci: dw_mmc: Delete devname in platform_data
To: barebox <barebox@lists.infradead.org>

Nothing used it.

Also delete the local mci alias pointer to host->mci in
dw_mmc_probe().  It only saved a few characters and all the references
but one are using host->mci.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 drivers/mci/dw_mmc.c           | 5 +----
 include/platform_data/dw_mmc.h | 1 -
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/mci/dw_mmc.c b/drivers/mci/dw_mmc.c
index f8ff389..18ddd16 100644
--- a/drivers/mci/dw_mmc.c
+++ b/drivers/mci/dw_mmc.c
@@ -676,11 +676,9 @@ static int dw_mmc_detect(struct device_d *dev)
 static int dw_mmc_probe(struct device_d *dev)
 {
 	struct dwmci_host *host;
-	struct mci_host *mci;
 	struct dw_mmc_platform_data *pdata = dev->platform_data;
 
 	host = xzalloc(sizeof(*host));
-	mci = &host->mci;
 
 	host->clk_biu = clk_get(dev, "biu");
 	if (IS_ERR(host->clk_biu))
@@ -710,14 +708,13 @@ static int dw_mmc_probe(struct device_d *dev)
 	host->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA;
 
 	if (pdata) {
-		mci->devname = pdata->devname;
 		host->ciu_div = pdata->ciu_div;
 		host->mci.host_caps &= ~MMC_CAP_BIT_DATA_MASK;
 		host->mci.host_caps |= pdata->bus_width_caps;
 	} else if (dev->device_node) {
 		const char *alias = of_alias_get(dev->device_node);
 		if (alias)
-			mci->devname = xstrdup(alias);
+			host->mci.devname = xstrdup(alias);
 		of_property_read_u32(dev->device_node, "dw-mshc-ciu-div",
 				&host->ciu_div);
 	}
diff --git a/include/platform_data/dw_mmc.h b/include/platform_data/dw_mmc.h
index ce1b339..4325a4f 100644
--- a/include/platform_data/dw_mmc.h
+++ b/include/platform_data/dw_mmc.h
@@ -2,7 +2,6 @@
 #define __INCLUDE_PLATFORM_DATA_DW_MMC_H
 
 struct dw_mmc_platform_data {
-	char *devname;
 	unsigned int bus_width_caps;
 	int ciu_div;
 };
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
