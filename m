Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6X8B-0000nW-FC
 for barebox@lists.infradead.org; Tue, 15 Nov 2016 06:22:08 +0000
Received: by mail-pg0-x244.google.com with SMTP id 3so10954268pgd.0
 for <barebox@lists.infradead.org>; Mon, 14 Nov 2016 22:21:47 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 14 Nov 2016 22:21:13 -0800
Message-Id: <1479190874-10392-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] regmap: Add regmap_write_bits() function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code implementing a simple version of regmap_write_bits().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/regmap/regmap.c | 27 +++++++++++++++++++++++++++
 include/regmap.h             |  6 +++++-
 2 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index a042a1a..52b7d88 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -137,6 +137,33 @@ int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val)
 }
 
 /**
+ * regmap_write_bits - write bits of a register in a map
+ *
+ * @map:	The map
+ * @reg:	The register offset of the register
+ * @mask:	Mask indicating bits to be modified
+ *		(1 - modified, 0 - untouched)
+ * @val:	Bit value to be set
+ *
+ * Returns 0 for success or negative error code on failure
+ */
+int regmap_write_bits(struct regmap *map, unsigned int reg,
+		      unsigned int mask, unsigned int val)
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
+	return regmap_write(map, reg, tmp);
+}
+
+/**
  * regmap_bulk_read(): Read data from the device
  *
  * @map: Register map to read from
diff --git a/include/regmap.h b/include/regmap.h
index bcbe6c1..9675a17 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -60,4 +60,8 @@ int regmap_get_val_bytes(struct regmap *map);
 int regmap_get_max_register(struct regmap *map);
 int regmap_get_reg_stride(struct regmap *map);
 
-#endif /* __REGMAP_H */
\ No newline at end of file
+int regmap_write_bits(struct regmap *map, unsigned int reg,
+		      unsigned int mask, unsigned int val);
+
+
+#endif /* __REGMAP_H */
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
