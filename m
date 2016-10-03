Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1br4R1-0008Gq-G4
 for barebox@lists.infradead.org; Mon, 03 Oct 2016 14:41:46 +0000
Received: by mail-pa0-x242.google.com with SMTP id hh10so1403956pac.0
 for <barebox@lists.infradead.org>; Mon, 03 Oct 2016 07:41:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Oct 2016 07:40:55 -0700
Message-Id: <1475505657-898-19-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
References: <1475505657-898-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 18/20] i.MX: ocotp: Account for shadow memory gaps
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Shadow memory does not have a true 1:1 mapping to fuse address
space. All i.MX6 devices, with exception of i.MX6SL have a 0x100 byte
gap between banks 5 and 6 (or addresses 0x2f and 0x30), so we need to
account for that when reading data from shadow memory.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/ocotp.c | 34 +++++++++++++++++++++++++++++++---
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/ocotp.c b/arch/arm/mach-imx/ocotp.c
index 44ee0b7..b978508 100644
--- a/arch/arm/mach-imx/ocotp.c
+++ b/arch/arm/mach-imx/ocotp.c
@@ -73,6 +73,7 @@
 
 struct imx_ocotp_data {
 	int num_regs;
+	u32 (*addr_to_offset)(u32 addr);
 };
 
 struct ocotp_priv {
@@ -84,6 +85,7 @@ struct ocotp_priv {
 	int sense_enable;
 	char ethaddr[6];
 	struct regmap_config map_config;
+	const struct imx_ocotp_data *data;
 };
 
 static int imx6_ocotp_set_timing(struct ocotp_priv *priv)
@@ -192,7 +194,8 @@ static int imx_ocotp_reg_read(void *ctx, unsigned int reg, unsigned int *val)
 		if (ret)
 			return ret;
 	} else {
-		*(u32 *)val = readl(priv->base + 0x400 + index * 0x10);
+		*(u32 *)val = readl(priv->base +
+				    priv->data->addr_to_offset(index));
 	}
 
 	return 0;
@@ -272,7 +275,8 @@ static int imx_ocotp_reg_write(void *ctx, unsigned int reg, unsigned int val)
 		if (ret < 0)
 			return ret;
 	} else {
-		writel(val, priv->base + 0x400 + index * 0x10);
+		writel(val, priv->base +
+		       priv->data->addr_to_offset(index));
 	}
 
 	if (priv->permanent_write_enable)
@@ -374,7 +378,7 @@ static int imx_ocotp_probe(struct device_d *dev)
 	void __iomem *base;
 	struct ocotp_priv *priv;
 	int ret = 0;
-	struct imx_ocotp_data *data;
+	const struct imx_ocotp_data *data;
 
 	ret = dev_get_drvdata(dev, (const void **)&data);
 	if (ret)
@@ -389,6 +393,7 @@ static int imx_ocotp_probe(struct device_d *dev)
 
 	priv = xzalloc(sizeof(*priv));
 
+	priv->data      = data;
 	priv->base	= base;
 	priv->clk	= clk_get(dev, NULL);
 	if (IS_ERR(priv->clk))
@@ -425,12 +430,35 @@ static int imx_ocotp_probe(struct device_d *dev)
 	return 0;
 }
 
+static u32 imx6sl_addr_to_offset(u32 addr)
+{
+	return 0x400 + addr * 0x10;
+}
+
+static u32 imx6q_addr_to_offset(u32 addr)
+{
+	u32 addendum = 0;
+
+	if (addr > 0x2F) {
+		/*
+		 * If we are reading past Bank 5, take into account a
+		 * 0x100 bytes wide gap between Bank 5 and Bank 6
+		 */
+		addendum += 0x100;
+	}
+
+
+	return imx6sl_addr_to_offset(addr) + addendum;
+}
+
 static struct imx_ocotp_data imx6q_ocotp_data = {
 	.num_regs = 512,
+	.addr_to_offset = imx6q_addr_to_offset,
 };
 
 static struct imx_ocotp_data imx6sl_ocotp_data = {
 	.num_regs = 256,
+	.addr_to_offset = imx6sl_addr_to_offset,
 };
 
 static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
