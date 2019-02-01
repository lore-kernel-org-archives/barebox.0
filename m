Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gpOcP-0004tz-TH
 for barebox@lists.infradead.org; Fri, 01 Feb 2019 02:31:53 +0000
Received: by mail-pl1-x642.google.com with SMTP id u6so2399269plm.8
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2019 18:31:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 31 Jan 2019 18:31:22 -0800
Message-Id: <20190201023133.1078-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190201023133.1078-1-andrew.smirnov@gmail.com>
References: <20190201023133.1078-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/15] soc: imx: gpcv2: make pgc driver more generic for other
 i.MX platforms
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 73f59712a1a3e532a2cbfe582ecfdbf56c33297d

  i.MX8MQ and i.MX8MM share same gpc module with i.MX7D, they
  can reuse gpcv2 pgc driver for power domain control, this
  patch renames all functions and structure definitions started
  with "imx7" to "imx", and use .data in imx_gpcv2_dt_ids[] to
  pass platform specific power domain data for power domain
  driver, thus make gpcv2 pgc driver more generic for i.MX
  platforms.

  Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
  Acked-by: Andrey Smirnov <andrew.smirnov@gmail.com>
  Signed-off-by: Shawn Guo <shawnguo@kernel.org>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/soc/imx/gpcv2.c | 68 +++++++++++++++++++++++++----------------
 1 file changed, 41 insertions(+), 27 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index a48f6d9a7..0b428bfc1 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -14,6 +14,7 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
+#include <of_device.h>
 #include <common.h>
 #include <clock.h>
 #include <abort.h>
@@ -59,7 +60,7 @@
 
 #define GPC_PGC_CTRL_PCR		BIT(0)
 
-struct imx7_pgc_domain {
+struct imx_pgc_domain {
 	struct generic_pm_domain genpd;
 	void __iomem *base;
 	struct regulator *regulator;
@@ -75,12 +76,17 @@ struct imx7_pgc_domain {
 	struct device_d *dev;
 };
 
-static int imx7_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
+struct imx_pgc_domain_data {
+       const struct imx_pgc_domain *domains;
+       size_t domains_num;
+};
+
+static int imx_gpc_pu_pgc_sw_pxx_req(struct generic_pm_domain *genpd,
 				      bool on)
 {
-	struct imx7_pgc_domain *domain = container_of(genpd,
-						      struct imx7_pgc_domain,
-						      genpd);
+	struct imx_pgc_domain *domain = container_of(genpd,
+						     struct imx_pgc_domain,
+						     genpd);
 	unsigned int offset = on ?
 		GPC_PU_PGC_SW_PUP_REQ : GPC_PU_PGC_SW_PDN_REQ;
 	const bool enable_power_control = !on;
@@ -150,17 +156,17 @@ unmap:
 	return ret;
 }
 
-static int imx7_gpc_pu_pgc_sw_pup_req(struct generic_pm_domain *genpd)
+static int imx_gpc_pu_pgc_sw_pup_req(struct generic_pm_domain *genpd)
 {
-	return imx7_gpc_pu_pgc_sw_pxx_req(genpd, true);
+	return imx_gpc_pu_pgc_sw_pxx_req(genpd, true);
 }
 
-static int imx7_gpc_pu_pgc_sw_pdn_req(struct generic_pm_domain *genpd)
+static int imx_gpc_pu_pgc_sw_pdn_req(struct generic_pm_domain *genpd)
 {
-	return imx7_gpc_pu_pgc_sw_pxx_req(genpd, false);
+	return imx_gpc_pu_pgc_sw_pxx_req(genpd, false);
 }
 
-static const struct imx7_pgc_domain imx7_pgc_domains[] = {
+static const struct imx_pgc_domain imx7_pgc_domains[] = {
 	[IMX7_POWER_DOMAIN_MIPI_PHY] = {
 		.genpd = {
 			.name      = "mipi-phy",
@@ -198,9 +204,14 @@ static const struct imx7_pgc_domain imx7_pgc_domains[] = {
 	},
 };
 
-static int imx7_pgc_domain_probe(struct device_d *dev)
+static const struct imx_pgc_domain_data imx7_pgc_domain_data = {
+       .domains = imx7_pgc_domains,
+       .domains_num = ARRAY_SIZE(imx7_pgc_domains),
+};
+
+static int imx_pgc_domain_probe(struct device_d *dev)
 {
-	struct imx7_pgc_domain *domain = dev->priv;
+	struct imx_pgc_domain *domain = dev->priv;
 	int ret;
 
 	domain->dev = dev;
@@ -232,24 +243,25 @@ static int imx7_pgc_domain_probe(struct device_d *dev)
 	return ret;
 }
 
-static const struct platform_device_id imx7_pgc_domain_id[] = {
-	{ "imx7-pgc-domain", },
+static const struct platform_device_id imx_pgc_domain_id[] = {
+	{ "imx-pgc-domain", },
 	{ },
 };
 
-static struct driver_d imx7_pgc_domain_driver = {
+static struct driver_d imx_pgc_domain_driver = {
 	.name = "imx-pgc",
-	.probe = imx7_pgc_domain_probe,
-	.id_table = imx7_pgc_domain_id,
+	.probe = imx_pgc_domain_probe,
+	.id_table = imx_pgc_domain_id,
 };
-coredevice_platform_driver(imx7_pgc_domain_driver);
+coredevice_platform_driver(imx_pgc_domain_driver);
 
 static int imx_gpcv2_probe(struct device_d *dev)
 {
+	static const struct imx_pgc_domain_data *domain_data;
 	struct device_node *pgc_np, *np;
 	struct resource *res;
 	void __iomem *base;
-	int ret;
+	int ret;	
 
 	pgc_np = of_get_child_by_name(dev->device_node, "pgc");
 	if (!pgc_np) {
@@ -263,9 +275,11 @@ static int imx_gpcv2_probe(struct device_d *dev)
 
 	base = IOMEM(res->start);
 
+	domain_data = of_device_get_match_data(dev);
+
 	for_each_child_of_node(pgc_np, np) {
 		struct device_d *pd_dev;
-		struct imx7_pgc_domain *domain;
+		struct imx_pgc_domain *domain;
 		u32 domain_index;
 		ret = of_property_read_u32(np, "reg", &domain_index);
 		if (ret) {
@@ -273,18 +287,18 @@ static int imx_gpcv2_probe(struct device_d *dev)
 			return ret;
 		}
 
-		if (domain_index >= ARRAY_SIZE(imx7_pgc_domains)) {
+		if (domain_index >= domain_data->domains_num) {
 			dev_warn(dev,
 				 "Domain index %d is out of bounds\n",
 				 domain_index);
 			continue;
 		}
 
-		domain = xmemdup(&imx7_pgc_domains[domain_index],
-				 sizeof(imx7_pgc_domains[domain_index]));
+		domain = xmemdup(&domain_data->domains[domain_index],
+				 sizeof(domain_data->domains[domain_index]));
 		domain->base = base;
-		domain->genpd.power_on = imx7_gpc_pu_pgc_sw_pup_req;
-		domain->genpd.power_off = imx7_gpc_pu_pgc_sw_pdn_req;
+		domain->genpd.power_on = imx_gpc_pu_pgc_sw_pup_req;
+		domain->genpd.power_off = imx_gpc_pu_pgc_sw_pdn_req;
 
 		pd_dev = xzalloc(sizeof(*pd_dev));
 		pd_dev->device_node = np;
@@ -292,7 +306,7 @@ static int imx_gpcv2_probe(struct device_d *dev)
 		pd_dev->parent = dev;
 		pd_dev->priv = domain;
 		pd_dev->device_node = np;
-		dev_set_name(pd_dev, imx7_pgc_domain_id[0].name);
+		dev_set_name(pd_dev, imx_pgc_domain_id[0].name);
 
 		ret = platform_device_register(pd_dev);
 		if (ret)
@@ -303,7 +317,7 @@ static int imx_gpcv2_probe(struct device_d *dev)
 }
 
 static const struct of_device_id imx_gpcv2_dt_ids[] = {
-	{ .compatible = "fsl,imx7d-gpc" },
+	{ .compatible = "fsl,imx7d-gpc", .data = &imx7_pgc_domain_data },
 	{ }
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
