Delivery-date: Fri, 20 Oct 2023 09:20:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjoF-00FGYn-98
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:20:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjoC-0006oi-AG
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:20:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HGtVemANJ7OGOVtYHnYSj0qOECjjEDElnNk86eGs978=; b=QKd/f64M9KE4cvsXYlGYu26KJd
	5jl0Wziw7vIQaimELtq7KrJqTnX0Yoqu1zkDzdv8bvaVTI+AWCz1Ouo/6KfW3wcQzq/i8ohdIv6AN
	aWBqr8MAYi8ixPMiOFZakkHbEqg07YsxD5ofzJ+SxRxbHKlHhhKHWEDNbZyvvt+J9ha7aFw3tlwG0
	mj2Tw8Eis5Nj9n340L342ccFGD1ULkdsX7MSdmdkM2rlZmoTZfQAvsmU8MejKImGnTpoDME+bkR5O
	af2ymYILQ2tkf1VL4MxpACelg8SZPvdmuWYPwsklH3UaYSF2pKF9dAHy28PVKKmqzQT+/D+ZyEqkq
	y6TWDlkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmy-001P4E-3C;
	Fri, 20 Oct 2023 07:19:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmp-001Oyp-19
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:19:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmg-0006Db-6Q; Fri, 20 Oct 2023 09:19:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-002yLk-DO; Fri, 20 Oct 2023 09:19:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-00BrRO-1C;
	Fri, 20 Oct 2023 09:19:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:18:46 +0200
Message-Id: <20231020071853.2826528-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
References: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_001911_706546_53D1BC6C 
X-CRM114-Status: GOOD (  23.41  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/11] regmap: align regmap_bulk_read/write API with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since its inception in 2016, barebox regmap_bulk_read and
regmap_bulk_write expected the last argument to be the total
length of data to access in bytes.

Its namesake Linux version has the same prototype, but interprets the
last argument as number of elements to write, i.e.
bytes / regmap_get_val_bytes(map).

This went unnoticed so far, because barebox users are either using
1-byte regmaps, the code was written specifically for barebox
or the code is yet unused such as the KSZ switch 64-bit accessors.

Avoid nasty future surprises by switching implementation and users
to the Linux interpretation of the last argument. As courtesy for
out-of-tree board code, we poison the symbol when regmap.h is included,
so out of tree code doesn't silently run into the inverse issue.

Files with regmap.h replaced by linux/regmap.h added and no other changes
are already compatible with the new definitions. All other files are
adapted to the new definition through division by the value size in
bytes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/iim.c            |  2 +-
 drivers/base/regmap/regmap-multi.c |  6 +++---
 drivers/base/regmap/regmap.c       | 25 +++++++++++--------------
 drivers/mfd/rn5t568.c              |  2 +-
 drivers/net/ksz_common.h           |  2 +-
 drivers/nvmem/bsec.c               |  4 ++--
 drivers/nvmem/ocotp.c              |  8 ++++----
 drivers/nvmem/regmap.c             | 14 ++++++++++++--
 drivers/nvmem/snvs_lpgpr.c         |  6 +++---
 drivers/rtc/rtc-pcf85363.c         |  2 +-
 include/linux/regmap.h             | 10 ++++++++--
 include/regmap.h                   | 29 +++++++++++++++++++++++++++++
 12 files changed, 76 insertions(+), 34 deletions(-)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 8dc70d3caa26..90ca644c2e62 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -19,7 +19,7 @@
 #include <malloc.h>
 #include <of.h>
 #include <io.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <regulator.h>
 #include <linux/err.h>
 
diff --git a/drivers/base/regmap/regmap-multi.c b/drivers/base/regmap/regmap-multi.c
index e3f5b9aec1e4..74f3648eb439 100644
--- a/drivers/base/regmap/regmap-multi.c
+++ b/drivers/base/regmap/regmap-multi.c
@@ -5,7 +5,7 @@
 
 #include <common.h>
 #include <fcntl.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/bitfield.h>
 #include <linux/export.h>
 
@@ -46,7 +46,7 @@ static ssize_t regmap_multi_cdev_read(struct cdev *cdev, void *buf, size_t count
 		return -EINVAL;
 
 	count = ALIGN_DOWN(count, rwsize);
-	return regmap_bulk_read(map, offset, buf, count) ?: count;
+	return regmap_bulk_read(map, offset, buf, count / rwsize) ?: count;
 }
 
 static ssize_t regmap_multi_cdev_write(struct cdev *cdev, const void *buf, size_t count,
@@ -60,7 +60,7 @@ static ssize_t regmap_multi_cdev_write(struct cdev *cdev, const void *buf, size_
 		return -EINVAL;
 
 	count = ALIGN_DOWN(count, rwsize);
-	return regmap_bulk_write(map, offset, buf, count) ?: count;
+	return regmap_bulk_write(map, offset, buf, count / rwsize) ?: count;
 }
 
 static struct cdev_operations regmap_multi_fops = {
diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 191217d20144..4d896c677b28 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -12,7 +12,7 @@
  */
 
 #include <common.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <malloc.h>
 #include <linux/log2.h>
 
@@ -248,21 +248,17 @@ int regmap_write_bits(struct regmap *map, unsigned int reg,
  * @map: Register map to read from
  * @reg: First register to be read from
  * @val: Pointer to store read value
- * @val_len: Size of data to read
+ * @val_count: Number of registers to read
  *
  * A value of zero will be returned on success, a negative errno will
  * be returned in error cases.
  */
 int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
-		     size_t val_len)
+		     size_t val_count)
 {
-	size_t val_bytes = map->format.val_bytes;
-	size_t val_count = val_len / val_bytes;
 	unsigned int v;
 	int ret, i;
 
-	if (val_len % val_bytes)
-		return -EINVAL;
 	if (!IS_ALIGNED(reg, map->reg_stride))
 		return -EINVAL;
 	if (val_count == 0)
@@ -312,20 +308,17 @@ int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
  * @reg: Initial register to write to
  * @val: Block of data to be written, laid out for direct transmission to the
  *       device
- * @val_len: Length of data pointed to by val.
+ * @val_len: Number of registers to write
  *
  * A value of zero will be returned on success, a negative errno will
  * be returned in error cases.
  */
 int regmap_bulk_write(struct regmap *map, unsigned int reg,
-		     const void *val, size_t val_len)
+		     const void *val, size_t val_count)
 {
 	size_t val_bytes = map->format.val_bytes;
-	size_t val_count = val_len / val_bytes;
 	int ret, i;
 
-	if (val_len % val_bytes)
-		return -EINVAL;
 	if (!IS_ALIGNED(reg, map->reg_stride))
 		return -EINVAL;
 	if (val_count == 0)
@@ -388,9 +381,11 @@ static ssize_t regmap_cdev_read(struct cdev *cdev, void *buf, size_t count, loff
 		       unsigned long flags)
 {
 	struct regmap *map = container_of(cdev, struct regmap, cdev);
+	size_t val_bytes = map->format.val_bytes;
 	int ret;
 
-	ret = regmap_bulk_read(map, offset, buf, count);
+	count = ALIGN_DOWN(count, val_bytes);
+	ret = regmap_bulk_read(map, offset, buf, count / val_bytes);
 	if (ret)
 		return ret;
 
@@ -401,9 +396,11 @@ static ssize_t regmap_cdev_write(struct cdev *cdev, const void *buf, size_t coun
 			unsigned long flags)
 {
 	struct regmap *map = container_of(cdev, struct regmap, cdev);
+	size_t val_bytes = map->format.val_bytes;
 	int ret;
 
-	ret = regmap_bulk_write(map, offset, buf, count);
+	count = ALIGN_DOWN(count, val_bytes);
+	ret = regmap_bulk_write(map, offset, buf, count / val_bytes);
 	if (ret)
 		return ret;
 
diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
index f649df944bf2..12de689734db 100644
--- a/drivers/mfd/rn5t568.c
+++ b/drivers/mfd/rn5t568.c
@@ -13,7 +13,7 @@
 #include <i2c/i2c.h>
 #include <init.h>
 #include <of.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <reset_source.h>
 #include <restart.h>
 
diff --git a/drivers/net/ksz_common.h b/drivers/net/ksz_common.h
index 995054d6e8c6..291488fe3485 100644
--- a/drivers/net/ksz_common.h
+++ b/drivers/net/ksz_common.h
@@ -3,7 +3,7 @@
 #define NET_KSZ_COMMON_H_
 
 #include <linux/swab.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/bitops.h>
 #include <platform_data/ksz9477_reg.h>
 
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index c381ee0836e8..7f24063b9ed6 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -13,7 +13,7 @@
 #include <net.h>
 #include <io.h>
 #include <of.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <mach/stm32mp/bsec.h>
 #include <machine_id.h>
 #include <linux/nvmem-provider.h>
@@ -82,7 +82,7 @@ static void stm32_bsec_set_unique_machine_id(struct regmap *map)
 	int ret;
 
 	ret = regmap_bulk_read(map, BSEC_OTP_SERIAL * 4,
-			       unique_id, sizeof(unique_id));
+			       unique_id, sizeof(unique_id) / 4);
 	if (ret)
 		return;
 
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index c22e5d9585fa..641c825986cb 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -24,7 +24,7 @@
 #include <io.h>
 #include <of.h>
 #include <clock.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/clk.h>
 #include <machine_id.h>
 #ifdef CONFIG_ARCH_IMX
@@ -622,7 +622,7 @@ static int imx_ocotp_read_mac(const struct imx_ocotp_data *data,
 	u8 buf[MAC_BYTES];
 	int ret;
 
-	ret = regmap_bulk_read(map, offset, buf, MAC_BYTES);
+	ret = regmap_bulk_read(map, offset, buf, MAC_BYTES / 4);
 
 	if (ret < 0)
 		return ret;
@@ -649,7 +649,7 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 	struct ocotp_priv_ethaddr *ethaddr = priv;
 	int ret;
 
-	ret = regmap_bulk_read(ethaddr->map, ethaddr->offset, buf, MAC_BYTES);
+	ret = regmap_bulk_read(ethaddr->map, ethaddr->offset, buf, MAC_BYTES / 4);
 	if (ret < 0)
 		return ret;
 
@@ -662,7 +662,7 @@ static int imx_ocotp_set_mac(struct param_d *param, void *priv)
 					  OCOTP_MAC_TO_HW);
 
 	return regmap_bulk_write(ethaddr->map, ethaddr->offset,
-				 buf, MAC_BYTES);
+				 buf, MAC_BYTES / 4);
 }
 
 static struct regmap_bus imx_ocotp_regmap_bus = {
diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
index 313e92fb7da8..fa5405d7a86a 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -6,12 +6,22 @@
 #include <errno.h>
 #include <init.h>
 #include <io.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <linux/nvmem-provider.h>
 
 static int nvmem_regmap_write(void *ctx, unsigned offset, const void *val, size_t bytes)
 {
-	return regmap_bulk_write(ctx, offset, val, bytes);
+	struct regmap *map = ctx;
+
+	/*
+	 * eFuse writes going through this function may be irreversible,
+	 * so expect users to observe alignment.
+	 */
+	if (bytes % regmap_get_val_bytes(map))
+		return -EINVAL;
+
+	return regmap_bulk_write(map, offset, val,
+				 bytes / regmap_get_val_bytes(map));
 }
 
 static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes)
diff --git a/drivers/nvmem/snvs_lpgpr.c b/drivers/nvmem/snvs_lpgpr.c
index dfbd5397d2f2..9bbee6d587a4 100644
--- a/drivers/nvmem/snvs_lpgpr.c
+++ b/drivers/nvmem/snvs_lpgpr.c
@@ -10,7 +10,7 @@
 #include <of.h>
 #include <of_device.h>
 #include <malloc.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <mfd/syscon.h>
 #include <linux/nvmem-provider.h>
 
@@ -61,7 +61,7 @@ static int snvs_lpgpr_write(void *ctx, unsigned offset, const void *val, size_t
 		return -EPERM;
 
 	return regmap_bulk_write(priv->regmap, dcfg->offset + offset, val,
-				 bytes);
+				 bytes / 4);
 }
 
 static int snvs_lpgpr_read(void *ctx, unsigned offset, void *val, size_t bytes)
@@ -70,7 +70,7 @@ static int snvs_lpgpr_read(void *ctx, unsigned offset, void *val, size_t bytes)
 	const struct snvs_lpgpr_cfg *dcfg = priv->dcfg;
 
 	return regmap_bulk_read(priv->regmap, dcfg->offset + offset,
-				val, bytes);
+				val, bytes / 4);
 }
 
 static int snvs_lpgpr_probe(struct device *dev)
diff --git a/drivers/rtc/rtc-pcf85363.c b/drivers/rtc/rtc-pcf85363.c
index 5b2c4e62b035..bcc251e1380e 100644
--- a/drivers/rtc/rtc-pcf85363.c
+++ b/drivers/rtc/rtc-pcf85363.c
@@ -16,7 +16,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <i2c/i2c.h>
-#include <regmap.h>
+#include <linux/regmap.h>
 #include <rtc.h>
 #include <linux/rtc.h>
 #include <linux/bcd.h>
diff --git a/include/linux/regmap.h b/include/linux/regmap.h
index aacb80cfa235..690dc3b1dccb 100644
--- a/include/linux/regmap.h
+++ b/include/linux/regmap.h
@@ -199,10 +199,16 @@ int regmap_multi_register_cdev(struct regmap *map8,
 int regmap_write(struct regmap *map, unsigned int reg, unsigned int val);
 int regmap_read(struct regmap *map, unsigned int reg, unsigned int *val);
 
+#ifndef regmap_bulk_read
+#define regmap_bulk_read regmap_bulk_read
 int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
-		    size_t val_len);
+		    size_t val_count);
+#endif
+#ifndef regmap_bulk_write
+#define regmap_bulk_write regmap_bulk_write
 int regmap_bulk_write(struct regmap *map, unsigned int reg,
-		     const void *val, size_t val_len);
+		     const void *val, size_t val_count);
+#endif
 
 int regmap_get_val_bytes(struct regmap *map);
 int regmap_get_max_register(struct regmap *map);
diff --git a/include/regmap.h b/include/regmap.h
index f4a194f10433..f2c395a89654 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -2,6 +2,35 @@
 #ifndef __REGMAP_H
 #define __REGMAP_H
 
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+extern void __compiletime_error("Last argument is now number of registers, not bytes. Fix "
+				"it and include <linux/regmap.h> instead")
+__regmap_bulk_api_changed(void);
+
+struct regmap;
+
+#ifndef regmap_bulk_read
+#define regmap_bulk_read regmap_bulk_read
+static inline int regmap_bulk_read(struct regmap *map, unsigned int reg, void *val,
+				   size_t val_bytes)
+{
+	__regmap_bulk_api_changed();
+	return -1;
+}
+#endif
+
+#ifndef regmap_bulk_write
+#define regmap_bulk_write regmap_bulk_write
+static inline int regmap_bulk_write(struct regmap *map, unsigned int reg,
+				    const void *val, size_t val_bytes)
+{
+	__regmap_bulk_api_changed();
+	return -1;
+}
+#endif
+
 #include <linux/regmap.h>
 
 #endif /* __REGMAP_H */
-- 
2.39.2



