Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNWYO-0006wT-Fk
 for barebox@lists.infradead.org; Tue, 29 May 2018 04:48:14 +0000
Received: by mail-pg0-x241.google.com with SMTP id l2-v6so6029339pgc.7
 for <barebox@lists.infradead.org>; Mon, 28 May 2018 21:48:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 May 2018 21:47:31 -0700
Message-Id: <20180529044731.3964-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180529044731.3964-1-andrew.smirnov@gmail.com>
References: <20180529044731.3964-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 7/7] nvmem: ocotp: Convert to NVMEM device
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@savoirfairelinux.com>

Not that barebox has a proper NVMEM subsystem, convert OCOTP driver to
use that to both make things more consistent with Linux and also allow
accessing OCOTP fields without the need for
imx_ocotp_read_field()/imx_ocotp_write_field().

Cc: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Tested-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/ocotp.c | 38 +++++++++++++++++++++++++++++++++++---
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 8c44bbb16..86d0b9cd0 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -29,6 +29,7 @@
 #include <regmap.h>
 #include <linux/clk.h>
 #include <mach/ocotp.h>
+#include <linux/nvmem-provider.h>
 
 /*
  * a single MAC address reference has the form
@@ -105,6 +106,7 @@ struct ocotp_priv {
 	struct regmap_config map_config;
 	const struct imx_ocotp_data *data;
 	int  mac_offset_idx;
+	struct nvmem_config config;
 };
 
 static struct ocotp_priv *imx_ocotp;
@@ -484,12 +486,34 @@ static void imx_ocotp_init_dt(struct ocotp_priv *priv)
 	}
 }
 
+static int imx_ocotp_write(struct device_d *dev, const int offset,
+			    const void *val, int bytes)
+{
+	struct ocotp_priv *priv = dev->parent->priv;
+
+	return regmap_bulk_write(priv->map, offset, val, bytes);
+}
+
+static int imx_ocotp_read(struct device_d *dev, const int offset, void *val,
+			   int bytes)
+{
+	struct ocotp_priv *priv = dev->parent->priv;
+
+	return regmap_bulk_read(priv->map, offset, val, bytes);
+}
+
+static const struct nvmem_bus imx_ocotp_nvmem_bus = {
+	.write = imx_ocotp_write,
+	.read  = imx_ocotp_read,
+};
+
 static int imx_ocotp_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct ocotp_priv *priv;
 	int ret = 0;
 	const struct imx_ocotp_data *data;
+	struct nvmem_device *nvmem;
 
 	ret = dev_get_drvdata(dev, (const void **)&data);
 	if (ret)
@@ -520,9 +544,17 @@ static int imx_ocotp_probe(struct device_d *dev)
 	if (IS_ERR(priv->map))
 		return PTR_ERR(priv->map);
 
-	ret = regmap_register_cdev(priv->map, "imx-ocotp");
-	if (ret)
-		return ret;
+	priv->config.name = "imx-ocotp";
+	priv->config.dev = dev;
+	priv->config.stride = 4;
+	priv->config.word_size = 4;
+	priv->config.size = data->num_regs;
+	priv->config.bus = &imx_ocotp_nvmem_bus;
+	dev->priv = priv;
+
+	nvmem = nvmem_register(&priv->config);
+	if (IS_ERR(nvmem))
+		return PTR_ERR(nvmem);
 
 	imx_ocotp = priv;
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
