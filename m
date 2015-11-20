Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22c.google.com ([2a00:1450:400c:c09::22c])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZzrUF-0000IB-SV
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:48 +0000
Received: by wmww144 with SMTP id w144so33997271wmw.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:25 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:06 +0100
Message-Id: <1448048172-10080-14-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 13/19] mtd: nand_mrvl_nfc: Add hwflags to distinguish
 different HW versions
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Marvell PXA3xx NAND flash controller IP has been reused in later SoCs
with additional HW features. Add HW BCH ECC as the first known HW
difference.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 217aacd7201a..ac1cb3fa9ae3 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -129,6 +129,10 @@
 #define nand_readsl(host, off, buf, nbbytes)		\
 	readsl((host)->mmio_base + (off), buf, nbbytes)
 
+struct mrvl_nand_variant {
+	unsigned int	hwflags;
+};
+
 struct mrvl_nand_host {
 	struct mtd_info		mtd;
 	struct nand_chip	chip;
@@ -142,6 +146,8 @@ struct mrvl_nand_host {
 	size_t			read_id_bytes;
 
 	void __iomem		*mmio_base;
+	unsigned int		hwflags;
+#define HWFLAGS_ECC_BCH		BIT(0)
 
 	unsigned int		buf_start;
 	unsigned int		buf_count;
@@ -235,9 +241,14 @@ static struct nand_ecclayout ecc_layout_2KB_hwecc = {
 #define mtd_info_to_host(mtd) ((struct mrvl_nand_host *) \
 			       (((struct nand_chip *)((mtd)->priv))->priv))
 
+static const struct mrvl_nand_variant pxa3xx_variant = {
+	.hwflags	= 0,
+};
+
 static struct of_device_id mrvl_nand_dt_ids[] = {
 	{
 		.compatible = "marvell,pxa3xx-nand",
+		.data = &pxa3xx_variant,
 	},
 	{}
 };
@@ -1006,10 +1017,17 @@ static struct mrvl_nand_host *alloc_nand_resource(struct device_d *dev)
 static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
 {
 	struct device_node *np = host->dev->device_node;
+	const struct of_device_id *match;
+	const struct mrvl_nand_variant *variant;
 
 	if (!IS_ENABLED(CONFIG_OFTREE) || host->dev->platform_data)
 		return 0;
 
+	match = of_match_node(mrvl_nand_dt_ids, np);
+	if (!match)
+		return -EINVAL;
+	variant = match->data;
+
 	if (of_get_property(np, "marvell,nand-keep-config", NULL))
 		host->keep_config = 1;
 	of_property_read_u32(np, "num-cs", &host->num_cs);
@@ -1024,6 +1042,8 @@ static int mrvl_nand_probe_dt(struct mrvl_nand_host *host)
 	if (host->ecc_step < 0)
 		host->ecc_step = 0;
 
+	host->hwflags = variant->hwflags;
+
 	return 0;
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
