Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22a.google.com ([2607:f8b0:400e:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aygSL-00016n-Lj
 for barebox@lists.infradead.org; Fri, 06 May 2016 14:10:14 +0000
Received: by mail-pa0-x22a.google.com with SMTP id xk12so48350025pac.0
 for <barebox@lists.infradead.org>; Fri, 06 May 2016 07:09:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri,  6 May 2016 07:09:26 -0700
Message-Id: <1462543770-4619-3-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1462543770-4619-1-git-send-email-andrew.smirnov@gmail.com>
References: <1462543770-4619-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/6] ocotp: Register OCOTP with 'nvmem'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 1dc9108..3901619 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -28,6 +28,7 @@
 #include <clock.h>
 #include <regmap.h>
 #include <linux/clk.h>
+#include <linux/nvmem-provider.h>
 
 /*
  * a single MAC address reference has the form
@@ -85,6 +86,7 @@ struct ocotp_priv {
 	int sense_enable;
 	char ethaddr[6];
 	struct regmap_config map_config;
+	struct nvmem_config nvmem_config;
 };
 
 static int imx6_ocotp_set_timing(struct ocotp_priv *priv)
@@ -412,6 +414,12 @@ static int imx_ocotp_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
+	priv->nvmem_config.name = "imx-ocotp";
+	priv->nvmem_config.read_only = true;
+	priv->nvmem_config.dev = dev;
+
+	nvmem_register(&priv->nvmem_config, priv->map);
+
 	if (IS_ENABLED(CONFIG_IMX_OCOTP_WRITE)) {
 		dev_add_param_bool(&(priv->dev), "permanent_write_enable",
 				NULL, NULL, &priv->permanent_write_enable, NULL);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
