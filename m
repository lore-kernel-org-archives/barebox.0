Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P5GYR-0003G7-2L
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 11:28:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Oct 2010 13:28:18 +0200
Message-Id: <1286796505-16049-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
References: <1286796505-16049-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/17] mfd mc13892: support reading the revision
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/mc13892.c |   62 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/mfd/mc13892.h |   22 ++++++++++++++++-
 2 files changed, 83 insertions(+), 1 deletions(-)

diff --git a/drivers/mfd/mc13892.c b/drivers/mfd/mc13892.c
index 2f415fc..08a439b 100644
--- a/drivers/mfd/mc13892.c
+++ b/drivers/mfd/mc13892.c
@@ -25,6 +25,7 @@
 #include <xfuncs.h>
 #include <errno.h>
 #include <spi/spi.h>
+#include <malloc.h>
 
 #include <i2c/i2c.h>
 #include <mfd/mc13892.h>
@@ -210,8 +211,63 @@ static struct file_operations mc_fops = {
 	.write	= mc_write,
 };
 
+struct mc13892_rev {
+	u16 rev_id;
+	enum mc13892_revision rev;
+	char *revstr;
+};
+
+static struct mc13892_rev mc13892_revisions[] = {
+	{ 0x01, MC13892_REVISION_1_0, "1.0" },
+	{ 0x09, MC13892_REVISION_1_1, "1.1" },
+	{ 0x0a, MC13892_REVISION_1_2, "1.2" },
+	{ 0x10, MC13892_REVISION_2_0, "2.0" },
+	{ 0x11, MC13892_REVISION_2_1, "2.1" },
+	{ 0x18, MC13892_REVISION_3_0, "3.0" },
+	{ 0x19, MC13892_REVISION_3_1, "3.1" },
+	{ 0x1a, MC13892_REVISION_3_2, "3.2" },
+	{ 0x02, MC13892_REVISION_3_2a, "3.2a" },
+	{ 0x1b, MC13892_REVISION_3_3, "3.3" },
+	{ 0x1d, MC13892_REVISION_3_5, "3.5" },
+};
+
+static int mc13893_query_revision(struct mc13892 *mc13892)
+{
+	unsigned int rev_id;
+	char *revstr;
+	int rev, i;
+
+	mc13892_reg_read(mc13892, 7, &rev_id);
+
+	for (i = 0; i < ARRAY_SIZE(mc13892_revisions); i++)
+		if ((rev_id & 0x1f) == mc13892_revisions[i].rev_id)
+			break;
+
+	if (i == ARRAY_SIZE(mc13892_revisions))
+		return -EINVAL;
+
+	rev = mc13892_revisions[i].rev;
+	revstr = mc13892_revisions[i].revstr;
+
+	if (rev == MC13892_REVISION_2_0) {
+		if ((rev_id >> 9) & 0x3) {
+			rev = MC13892_REVISION_2_0a;
+			revstr = "2.0a";
+		}
+	}
+
+	dev_info(mc_dev->cdev.dev, "PMIC ID: 0x%08x [Rev: %s]\n",
+			rev_id, revstr);
+
+	mc13892->revision = rev;
+
+	return rev;
+}
+
 static int mc_probe(struct device_d *dev, enum mc13892_mode mode)
 {
+	int rev;
+
 	if (mc_dev)
 		return -EBUSY;
 
@@ -230,6 +286,12 @@ static int mc_probe(struct device_d *dev, enum mc13892_mode mode)
 	mc_dev->cdev.dev = dev;
 	mc_dev->cdev.ops = &mc_fops;
 
+	rev = mc13893_query_revision(mc_dev);
+	if (rev < 0) {
+		free(mc_dev);
+		return -EINVAL;
+	}
+
 	devfs_create(&mc_dev->cdev);
 
 	return 0;
diff --git a/include/mfd/mc13892.h b/include/mfd/mc13892.h
index 11ae878..78a42e9 100644
--- a/include/mfd/mc13892.h
+++ b/include/mfd/mc13892.h
@@ -79,6 +79,21 @@ enum mc13892_reg {
 	MC13892_REG_TEST4		= 0x3f,
 };
 
+enum mc13892_revision {
+	MC13892_REVISION_1_0,
+	MC13892_REVISION_1_1,
+	MC13892_REVISION_1_2,
+	MC13892_REVISION_2_0,
+	MC13892_REVISION_2_0a,
+	MC13892_REVISION_2_1,
+	MC13892_REVISION_3_0,
+	MC13892_REVISION_3_1,
+	MC13892_REVISION_3_2,
+	MC13892_REVISION_3_2a,
+	MC13892_REVISION_3_3,
+	MC13892_REVISION_3_5,
+};
+
 enum mc13892_mode {
 	MC13892_MODE_I2C,
 	MC13892_MODE_SPI,
@@ -89,7 +104,7 @@ struct mc13892 {
 	struct i2c_client	*client;
 	struct spi_device	*spi;
 	enum mc13892_mode	mode;
-	
+	enum mc13892_revision	revision;
 };
 
 extern struct mc13892 *mc13892_get(void);
@@ -98,4 +113,9 @@ extern int mc13892_reg_read(struct mc13892 *mc13892, enum mc13892_reg reg, u32 *
 extern int mc13892_reg_write(struct mc13892 *mc13892, enum mc13892_reg reg, u32 val);
 extern int mc13892_set_bits(struct mc13892 *mc13892, enum mc13892_reg reg, u32 mask, u32 val);
 
+static inline enum mc13892_revision mc13892_get_revision(struct mc13892 *mc13892)
+{
+	return mc13892->revision;
+}
+
 #endif /* __ASM_ARCH_MC13892_H */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
