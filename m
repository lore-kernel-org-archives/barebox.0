Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp9.mail.ru ([94.100.176.54])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UxNPo-0000w9-Bj
 for barebox@lists.infradead.org; Thu, 11 Jul 2013 20:24:39 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 12 Jul 2013 00:24:06 +0400
Message-Id: <1373574247-19502-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1373574247-19502-1-git-send-email-shc_work@mail.ru>
References: <1373574247-19502-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/3] mfd: mc13xxx: Separate query_revision function for each
 supported IC
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c               |   2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c |   2 +-
 arch/arm/boards/pcm038/pcm038.c                 |   2 +-
 drivers/mfd/mc13xxx.c                           | 165 ++++++++++++++----------
 4 files changed, 100 insertions(+), 71 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index ba1d99e..2485e12 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -214,7 +214,7 @@ static struct spi_imx_master ecspi_0_data = {
 
 static const struct spi_board_info ccxmx51_spi_board_info[] = {
 	{
-		.name		= "mc13xxx-spi",
+		.name		= "mc13892",
 		.bus_num	= 0,
 		.chip_select	= 0,
 	},
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index dfb1f85..f30d77d 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -71,7 +71,7 @@ struct imx_nand_platform_data nand_info = {
 
 static struct i2c_board_info i2c_devices[] = {
 	{
-		I2C_BOARD_INFO("mc13xxx-i2c", 0x08),
+		I2C_BOARD_INFO("mc13892", 0x08),
 	}, {
 		I2C_BOARD_INFO("mc9sdz60", 0x69),
 	},
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index f6a3e17..b573289 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -71,7 +71,7 @@ static struct spi_imx_master pcm038_spi_0_data = {
 
 static struct spi_board_info pcm038_spi_board_info[] = {
 	{
-		.name = "mc13xxx-spi",
+		.name = "mc13783",
 		.bus_num = 0,
 		.chip_select = 0,
 	}
diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 2be6f62..556f0b2 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -39,6 +39,10 @@ struct mc13xxx {
 	int				(*reg_write)(struct mc13xxx*, u8, u32);
 };
 
+struct mc13xxx_devtype {
+	int	(*revision)(struct mc13xxx*);
+};
+
 #define to_mc13xxx(a)		container_of(a, struct mc13xxx, cdev)
 
 static struct mc13xxx *mc_dev;
@@ -205,13 +209,37 @@ static struct file_operations mc_fops = {
 	.write	= mc_write,
 };
 
-struct mc13892_rev {
+static int __init mc13783_revision(struct mc13xxx *mc13xxx)
+{
+	unsigned int rev_id;
+	char revstr[5];
+	int rev;
+
+	mc13xxx_reg_read(mc13xxx, MC13XXX_REG_IDENTIFICATION, &rev_id);
+
+	if (((rev_id >> 6) & 0x7) != 0x2)
+		return -ENODEV;
+
+
+	rev = (((rev_id & 0x18) >> 3) << 4) | (rev_id & 0x7);
+	/* Ver 0.2 is actually 3.2a. Report as 3.2 */
+	if (rev == 0x02) {
+		rev = 0x32;
+		strcpy(revstr, "3.2a");
+	} else
+		sprintf(revstr, "%d.%d", rev / 0x10, rev % 10);
+
+	dev_info(mc_dev->cdev.dev, "Found MC13783 ID: 0x%06x [Rev: %s]\n",
+		 rev_id, revstr);
+
+	return rev;
+}
+
+static struct __init {
 	u16	rev_id;
 	int	rev;
 	char	*revstr;
-};
-
-static struct mc13892_rev mc13892_revisions[] = {
+} mc13892_revisions[] = {
 	{ 0x01, MC13892_REVISION_1_0, "1.0" },
 	{ 0x09, MC13892_REVISION_1_1, "1.1" },
 	{ 0x0a, MC13892_REVISION_1_2, "1.2" },
@@ -225,66 +253,53 @@ static struct mc13892_rev mc13892_revisions[] = {
 	{ 0x1d, MC13892_REVISION_3_5, "3.5" },
 };
 
-static int mc13xxx_query_revision(struct mc13xxx *mc13xxx)
+static int __init mc13892_revision(struct mc13xxx *mc13xxx)
 {
 	unsigned int rev_id;
-	char *chipname, revstr[5];
+	char revstr[5];
 	int rev, i;
 
 	mc13xxx_reg_read(mc13xxx, MC13XXX_REG_IDENTIFICATION, &rev_id);
 
-	/* Determine chip type by decode ICID bits */
-	switch ((rev_id >> 6) & 0x7) {
-	case 2:
-		chipname = "MC13783";
-		rev = (((rev_id & 0x18) >> 3) << 4) | (rev_id & 0x7);
-		/* Ver 0.2 is actually 3.2a. Report as 3.2 */
-		if (rev == 0x02) {
-			rev = 0x32;
-			strcpy(revstr, "3.2a");
-		} else
-			sprintf(revstr, "%d.%d", rev / 0x10, rev % 10);
-		break;
-	case 7:
-		chipname = "MC13892";
-		for (i = 0; i < ARRAY_SIZE(mc13892_revisions); i++)
-			if ((rev_id & 0x1f) == mc13892_revisions[i].rev_id)
-				break;
-
-		if (i == ARRAY_SIZE(mc13892_revisions))
-			return -EINVAL;
-
-		rev = mc13892_revisions[i].rev;
-		strcpy(revstr, mc13892_revisions[i].revstr);
-
-		if (rev == MC13892_REVISION_2_0) {
-			if ((rev_id >> 9) & 0x3) {
-				rev = MC13892_REVISION_2_0a;
-				strcpy(revstr, "2.0a");
-			}
+	if (((rev_id >> 6) & 0x7) != 0x7)
+		return -ENODEV;
+
+	for (i = 0; i < ARRAY_SIZE(mc13892_revisions); i++)
+		if ((rev_id & 0x1f) == mc13892_revisions[i].rev_id)
+			break;
+
+	if (i == ARRAY_SIZE(mc13892_revisions))
+		return -ENOSYS;
+
+	rev = mc13892_revisions[i].rev;
+	strcpy(revstr, mc13892_revisions[i].revstr);
+
+	if (rev == MC13892_REVISION_2_0) {
+		if ((rev_id >> 9) & 0x3) {
+			rev = MC13892_REVISION_2_0a;
+			strcpy(revstr, "2.0a");
 		}
-		break;
-	default:
-		dev_info(mc_dev->cdev.dev, "No PMIC detected.\n");
-		return -EINVAL;
 	}
 
-	dev_info(mc_dev->cdev.dev, "Found %s ID: 0x%06x [Rev: %s]\n",
-			chipname, rev_id, revstr);
-
-	mc13xxx->revision = rev;
+	dev_info(mc_dev->cdev.dev, "Found MC13892 ID: 0x%06x [Rev: %s]\n",
+		 rev_id, revstr);
 
 	return rev;
 }
 
-static int __init mc_probe(struct device_d *dev)
+static int __init mc13xxx_probe(struct device_d *dev)
 {
-	int rev;
+	struct mc13xxx_devtype *devtype;
+	int ret, rev;
 
 	if (mc_dev)
 		return -EBUSY;
 
-	mc_dev = xzalloc(sizeof(struct mc13xxx));
+	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
+	if (ret)
+		return ret;
+
+	mc_dev = xzalloc(sizeof(*mc_dev));
 	mc_dev->cdev.name = DRIVERNAME;
 
 #ifdef CONFIG_I2C
@@ -309,47 +324,61 @@ static int __init mc_probe(struct device_d *dev)
 	mc_dev->cdev.dev = dev;
 	mc_dev->cdev.ops = &mc_fops;
 
-	rev = mc13xxx_query_revision(mc_dev);
+	rev = devtype->revision(mc_dev);
 	if (rev < 0) {
+		dev_err(mc_dev->cdev.dev, "No PMIC detected.\n");
 		free(mc_dev);
 		mc_dev = NULL;
-		return -EINVAL;
+		return rev;
 	}
 
+	mc_dev->revision = rev;
 	devfs_create(&mc_dev->cdev);
 
 	return 0;
 }
 
-static __maybe_unused struct of_device_id mc13892_dt_ids[] = {
-	{
-		.compatible = "fsl,mc13892",
-	}, {
-		.compatible = "fsl,mc13783",
-	}, {
-		/* sentinel */
-	}
+static struct mc13xxx_devtype mc13783_devtype = {
+	.revision	= mc13783_revision,
+};
+
+static struct mc13xxx_devtype mc13892_devtype = {
+	.revision	= mc13892_revision,
+};
+
+static struct platform_device_id mc13xxx_ids[] = {
+	{ .name = "mc13783", .driver_data = (ulong)&mc13783_devtype, },
+	{ .name = "mc13892", .driver_data = (ulong)&mc13892_devtype, },
+	{ }
+};
+
+static __maybe_unused struct of_device_id mc13xxx_dt_ids[] = {
+	{ .compatible = "fsl,mc13783", .data = (ulong)&mc13783_devtype, },
+	{ .compatible = "fsl,mc13892", .data = (ulong)&mc13892_devtype, },
+	{ }
 };
 
 #ifdef CONFIG_I2C
-static struct driver_d mc_i2c_driver = {
-	.name  = "mc13xxx-i2c",
-	.probe	= mc_probe,
-	.of_compatible = DRV_OF_COMPAT(mc13892_dt_ids),
+static struct driver_d mc13xxx_i2c_driver = {
+	.name		= "mc13xxx-i2c",
+	.probe		= mc13xxx_probe,
+	.id_table	= mc13xxx_ids,
+	.of_compatible	= DRV_OF_COMPAT(mc13xxx_dt_ids),
 };
 
-static int mc_i2c_init(void)
+static int __init mc13xxx_i2c_init(void)
 {
-	return i2c_driver_register(&mc_i2c_driver);
+	return i2c_driver_register(&mc13xxx_i2c_driver);
 }
-device_initcall(mc_i2c_init);
+device_initcall(mc13xxx_i2c_init);
 #endif
 
 #ifdef CONFIG_SPI
-static struct driver_d mc_spi_driver = {
-	.name  = "mc13xxx-spi",
-	.probe	= mc_probe,
-	.of_compatible = DRV_OF_COMPAT(mc13892_dt_ids),
+static struct driver_d mc13xxx_spi_driver = {
+	.name		= "mc13xxx-spi",
+	.probe		= mc13xxx_probe,
+	.id_table	= mc13xxx_ids,
+	.of_compatible	= DRV_OF_COMPAT(mc13xxx_dt_ids),
 };
-device_spi_driver(mc_spi_driver);
+device_spi_driver(mc13xxx_spi_driver);
 #endif
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
