Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f4UH1-0002dz-ER
 for barebox@lists.infradead.org; Fri, 06 Apr 2018 16:31:39 +0000
Received: by mail-lf0-x241.google.com with SMTP id j68-v6so1364481lfg.13
 for <barebox@lists.infradead.org>; Fri, 06 Apr 2018 09:31:23 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Fri,  6 Apr 2018 19:33:23 +0300
Message-Id: <1523032404-7416-2-git-send-email-andrey.gusakov@cogentembedded.com>
In-Reply-To: <1523032404-7416-1-git-send-email-andrey.gusakov@cogentembedded.com>
References: <1523032404-7416-1-git-send-email-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH 1/2] mfd: mc13xxx: add function returning mc13xxx type
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com, cphealy@gmail.com

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/mfd/mc13xxx.c | 12 ++++++++++++
 include/mfd/mc13xxx.h | 10 ++++++++++
 2 files changed, 22 insertions(+)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index f6aa922..654313f 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -40,10 +40,12 @@ struct mc13xxx {
 		struct spi_device	*spi;
 	};
 	int				revision;
+	int				type;
 };
 
 struct mc13xxx_devtype {
 	int	(*revision)(struct mc13xxx*);
+	int	type;
 };
 
 #define to_mc13xxx(a)		container_of(a, struct mc13xxx, cdev)
@@ -56,6 +58,12 @@ struct mc13xxx *mc13xxx_get(void)
 }
 EXPORT_SYMBOL(mc13xxx_get);
 
+int mc13xxx_type(struct mc13xxx *mc13xxx)
+{
+	return mc13xxx->type;
+}
+EXPORT_SYMBOL(mc13xxx_type);
+
 int mc13xxx_revision(struct mc13xxx *mc13xxx)
 {
 	return mc13xxx->revision;
@@ -347,6 +355,7 @@ static int __init mc13xxx_probe(struct device_d *dev)
 	}
 
 	mc_dev->revision = rev;
+	mc_dev->type = devtype->type;
 
 	ret = regmap_register_cdev(mc_dev->map, NULL);
 	if (ret)
@@ -360,14 +369,17 @@ static int __init mc13xxx_probe(struct device_d *dev)
 
 static struct mc13xxx_devtype mc13783_devtype = {
 	.revision	= mc13783_revision,
+	.type		= MC13783_TYPE,
 };
 
 static struct mc13xxx_devtype mc13892_devtype = {
 	.revision	= mc13892_revision,
+	.type		= MC13892_TYPE,
 };
 
 static struct mc13xxx_devtype mc34708_devtype = {
 	.revision	= mc34708_revision,
+	.type		= MC34708_TYPE,
 };
 
 static struct platform_device_id mc13xxx_ids[] = {
diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
index d351c47..66ce2ea 100644
--- a/include/mfd/mc13xxx.h
+++ b/include/mfd/mc13xxx.h
@@ -16,6 +16,10 @@
 
 #define MC13XXX_REG_IDENTIFICATION	0x07
 
+#define MC13783_TYPE			1
+#define MC13892_TYPE			2
+#define MC34708_TYPE			3
+
 #define MC13783_REG_INT_STATUS0		0x00
 #define MC13783_REG_INT_MASK0		0x01
 #define MC13783_REG_INT_SENSE0		0x02
@@ -168,6 +172,7 @@ struct mc13xxx;
 
 #ifdef CONFIG_MFD_MC13XXX
 extern struct mc13xxx *mc13xxx_get(void);
+extern int mc13xxx_type(struct mc13xxx *mc13xxx);
 extern int mc13xxx_revision(struct mc13xxx *mc13xxx);
 extern int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val);
 extern int mc13xxx_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val);
@@ -179,6 +184,11 @@ static inline struct mc13xxx *mc13xxx_get(void)
 	return NULL;
 }
 
+static inline int mc13xxx_type(struct mc13xxx *mc13xxx)
+{
+	return -ENODEV;
+}
+
 static inline int mc13xxx_revision(struct mc13xxx *mc13xxx)
 {
 	return -ENODEV;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
