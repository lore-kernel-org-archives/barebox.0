Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e0PJu-0000k2-Hz
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 09:53:28 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  6 Oct 2017 11:53:02 +0200
Message-Id: <20171006095302.9602-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] regmap: port regmap_update_bits from linux
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Port the regmap_update_bits function from linux v4.14-rc1 to barebox.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/base/regmap/regmap.c | 29 +++++++++++++++++++++++++++++
 include/regmap.h             |  3 ++-
 2 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 52b7d88c74ed..67d95fe30a0b 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -137,6 +137,35 @@ int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val)
 }
 
 /**
+ * regmap_update_bits() - Perform a read/modify/write cycle on a register
+ *
+ * @map: Register map to update
+ * @reg: Register to update
+ * @mask: Bitmask to change
+ * @val: New value for bitmask
+ *
+ * Returns zero for success, a negative number on error.
+ */
+int regmap_update_bits(struct regmap *map, unsigned int reg,
+		       unsigned int mask, unsigned int val)
+{
+	int ret;
+	unsigned int tmp, orig;
+
+	ret = regmap_read(map, reg, &orig);
+	if (ret != 0)
+		return ret;
+
+	tmp = orig & ~mask;
+	tmp |= val & mask;
+
+	if (tmp != orig)
+		ret = regmap_write(map, reg, tmp);
+
+	return ret;
+}
+
+/**
  * regmap_write_bits - write bits of a register in a map
  *
  * @map:	The map
diff --git a/include/regmap.h b/include/regmap.h
index 9675a17b9641..09b7b57d52f3 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -62,6 +62,7 @@ int regmap_get_reg_stride(struct regmap *map);
 
 int regmap_write_bits(struct regmap *map, unsigned int reg,
 		      unsigned int mask, unsigned int val);
-
+int regmap_update_bits(struct regmap *map, unsigned int reg,
+		       unsigned int mask, unsigned int val);
 
 #endif /* __REGMAP_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
