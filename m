Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlhKf-0002yY-Do
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 17:56:22 +0000
Received: by wijq8 with SMTP id q8so69213547wij.0
 for <barebox@lists.infradead.org>; Mon, 12 Oct 2015 10:55:59 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 12 Oct 2015 19:55:52 +0200
Message-Id: <1444672552-3097-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH] of: mtd: Import of_get_nand_ecc_{step_size,
 strength} from Linux
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

This imports DT helpers for MTD ECC step size and strength from
Linux kernel.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org

Just for completeness, the patch that will import of_mtd helpers
for ECC from Linux. I'll make sure this is included in v2.

Sebastian
---
 drivers/of/of_mtd.c | 34 ++++++++++++++++++++++++++++++++++
 include/of_mtd.h    |  2 ++
 2 files changed, 36 insertions(+)

diff --git a/drivers/of/of_mtd.c b/drivers/of/of_mtd.c
index 97f3095740f7..0956ee15d393 100644
--- a/drivers/of/of_mtd.c
+++ b/drivers/of/of_mtd.c
@@ -49,6 +49,40 @@ int of_get_nand_ecc_mode(struct device_node *np)
 EXPORT_SYMBOL_GPL(of_get_nand_ecc_mode);
 
 /**
+ * of_get_nand_ecc_step_size - Get ECC step size associated to
+ * the required ECC strength (see below).
+ * @np:	Pointer to the given device_node
+ *
+ * return the ECC step size, or errno in error case.
+ */
+int of_get_nand_ecc_step_size(struct device_node *np)
+{
+	int ret;
+	u32 val;
+
+	ret = of_property_read_u32(np, "nand-ecc-step-size", &val);
+	return ret ? ret : val;
+}
+EXPORT_SYMBOL_GPL(of_get_nand_ecc_step_size);
+
+/**
+ * of_get_nand_ecc_strength - Get required ECC strength over the
+ * correspnding step size as defined by 'nand-ecc-size'
+ * @np:	Pointer to the given device_node
+ *
+ * return the ECC strength, or errno in error case.
+ */
+int of_get_nand_ecc_strength(struct device_node *np)
+{
+	int ret;
+	u32 val;
+
+	ret = of_property_read_u32(np, "nand-ecc-strength", &val);
+	return ret ? ret : val;
+}
+EXPORT_SYMBOL_GPL(of_get_nand_ecc_strength);
+
+/**
  * of_get_nand_bus_width - Get nand bus witdh for given device_node
  * @np:	Pointer to the given device_node
  *
diff --git a/include/of_mtd.h b/include/of_mtd.h
index a5a8f20daff6..9f5b8a2796a2 100644
--- a/include/of_mtd.h
+++ b/include/of_mtd.h
@@ -12,6 +12,8 @@
 #include <of.h>
 
 int of_get_nand_ecc_mode(struct device_node *np);
+int of_get_nand_ecc_step_size(struct device_node *np);
+int of_get_nand_ecc_strength(struct device_node *np);
 int of_get_nand_bus_width(struct device_node *np);
 bool of_get_nand_on_flash_bbt(struct device_node *np);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
