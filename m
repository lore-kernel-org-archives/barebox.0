Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22c.google.com ([2a00:1450:400c:c09::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrU9-0003yJ-TX
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:45 +0000
Received: by wmww144 with SMTP id w144so33994789wmw.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:20 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:35:54 +0100
Message-Id: <1448048172-10080-2-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 01/19] of: mtd: Import of_get_nand_ecc_{step_size,
 strength} from Linux
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

This imports DT helpers for MTD ECC step size and strength from
Linux kernel.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
