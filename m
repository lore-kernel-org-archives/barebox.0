Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQYS-0006vf-Tz
 for barebox@lists.infradead.org; Fri, 19 Jul 2019 10:56:03 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Fri, 19 Jul 2019 12:55:34 +0200
Message-Id: <20190719105534.30276-3-bst@pengutronix.de>
In-Reply-To: <20190719105534.30276-1-bst@pengutronix.de>
References: <20190719105534.30276-1-bst@pengutronix.de>
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
Subject: [PATCH v2 3/3] nvmem: ocotp: set unique id as machine-id hashable
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>

Pass the OCOTP unique id as hashable information to machine id
generation.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
Changes since (implicit) v1:
  - remove explicit address-of operator for unique_id_parts
---
 drivers/nvmem/ocotp.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 3f9f162860..d5e9d72a52 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -29,6 +29,7 @@
 #include <regmap.h>
 #include <linux/clk.h>
 #include <mach/ocotp.h>
+#include <machine_id.h>
 #include <linux/nvmem-provider.h>
 
 /*
@@ -77,6 +78,9 @@
 #define MAC_OFFSET_1			(0x24 * 4)
 #define MAX_MAC_OFFSETS			2
 #define MAC_BYTES			8
+#define UNIQUE_ID_NUM			2
+/* 0 <= n < UNIQUE_ID_NUM */
+#define UNIQUE_ID(n)			(OCOTP_WORD(0x410 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
 
 enum imx_ocotp_format_mac_direction {
 	OCOTP_HW_TO_MAC,
@@ -548,6 +552,23 @@ static int imx_ocotp_read(struct device_d *dev, const int offset, void *val,
 	return regmap_bulk_read(priv->map, offset, val, bytes);
 }
 
+static int imx_ocotp_set_unique_machine_id(void)
+{
+	uint32_t unique_id_parts[UNIQUE_ID_NUM];
+	int ret, i;
+
+	for (i = 0; i < UNIQUE_ID_NUM; i++) {
+		ret = imx_ocotp_read_field(UNIQUE_ID(i), &unique_id_parts[i]);
+		if (ret < 0)
+			goto out;
+	}
+
+	machine_id_set_hashable(unique_id_parts, sizeof(unique_id_parts));
+
+out:
+	return ret;
+}
+
 static const struct nvmem_bus imx_ocotp_nvmem_bus = {
 	.write = imx_ocotp_write,
 	.read  = imx_ocotp_read,
@@ -633,6 +654,9 @@ static int imx_ocotp_probe(struct device_d *dev)
 				  ethaddr->value, ethaddr);
 	}
 
+	if (IS_ENABLED(CONFIG_MACHINE_ID))
+		imx_ocotp_set_unique_machine_id();
+
 	imx_ocotp_init_dt(priv);
 
 	dev_add_param_bool(&(priv->dev), "sense_enable", NULL, NULL, &priv->sense_enable, priv);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
