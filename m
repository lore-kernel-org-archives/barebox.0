Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YFrIo-0003Op-DB
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 21:34:35 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 26 Jan 2015 22:34:08 +0100
Message-Id: <1422308050-13895-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 1/3] net: smc1111: allow platform specific accessors
To: barebox@lists.infradead.org

Smc network IPs can be wired up in different funny ways. For example the
lubbock pxa25x development platform wires all address lines shifted by
2, ie. bus A2 is smc91c96 A0, bus A3 is smc91c96 A1 etc ...

In order to cope with the different possible combination without
clobbering the driver, allow the platform data to provide specific
accessors, and put the wiring mess inside.

By default, the old behaviour using the 32 bit accesses is kept.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/net/smc91111.c | 58 ++++++++++++++++++++++----------------------------
 include/net/smc91111.h | 13 +++++++++++
 2 files changed, 38 insertions(+), 33 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 100688c..3e66c4d 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -434,20 +434,9 @@
 */
 #define MEMORY_WAIT_TIME 16
 
-struct accessors {
-	void (*ob)(unsigned, void __iomem *);
-	void (*ow)(unsigned, void __iomem *);
-	void (*ol)(unsigned long, void __iomem *);
-	void (*osl)(void __iomem *, const void  *, int);
-	unsigned (*ib)(void __iomem *);
-	unsigned (*iw)(void __iomem *);
-	unsigned long (*il)(void __iomem *);
-	void (*isl)(void __iomem *, void*, int);
-};
-
 struct smc91c111_priv {
 	struct mii_bus miibus;
-	struct accessors a;
+	struct smc91111_accessors a;
 	void __iomem *base;
 	int qemu_fixup;
 };
@@ -479,48 +468,50 @@ struct smc91c111_priv {
 
 #define ETH_ZLEN 60
 
-static void a_outb(unsigned value, void __iomem *offset)
+static void a_outb(unsigned value, void __iomem *base, unsigned int offset)
 {
 	writeb(value, offset);
 }
 
-static void a_outw(unsigned value, void __iomem *offset)
+static void a_outw(unsigned value, void __iomem *base, unsigned int offset)
 {
 	writew(value, offset);
 }
 
-static void a_outl(unsigned long value, void __iomem *offset)
+static void a_outl(unsigned long value, void __iomem *base, unsigned int offset)
 {
 	writel(value, offset);
 }
 
-static void a_outsl(void __iomem *offset, const void *data, int count)
+static void a_outsl(void __iomem *base, unsigned int offset,
+		    const void *data, int count)
 {
-	writesl(offset, data, count);
+	writesl(base + offset, data, count);
 }
 
-static unsigned a_inb(void __iomem *offset)
+static unsigned a_inb(void __iomem *base, unsigned int offset)
 {
 	return readb(offset);
 }
 
-static unsigned a_inw(void __iomem *offset)
+static unsigned a_inw(void __iomem *base, unsigned int offset)
 {
 	return readw(offset);
 }
 
-static unsigned long a_inl(void __iomem *offset)
+static unsigned long a_inl(void __iomem *base, unsigned int offset)
 {
 	return readl(offset);
 }
 
-static inline void a_insl(void __iomem *offset, void *data, int count)
+static inline void a_insl(void __iomem *base, unsigned int offset,
+			  void *data, int count)
 {
-	readsl(offset, data, count);
+	readsl(base + offset, data, count);
 }
 
 /* access happens via a 32 bit bus */
-static const struct accessors access_via_32bit = {
+static const struct smc91111_accessors access_via_32bit = {
 	.ob = a_outb,
 	.ow = a_outw,
 	.ol = a_outl,
@@ -536,46 +527,46 @@ static const struct accessors access_via_32bit = {
 static inline void SMC_outb(struct smc91c111_priv *p, unsigned value,
 				unsigned offset)
 {
-	(p->a.ob)(value, p->base + offset);
+	(p->a.ob)(value, p->base, offset);
 }
 
 static inline void SMC_outw(struct smc91c111_priv *p, unsigned value,
 				unsigned offset)
 {
-	(p->a.ow)(value, p->base + offset);
+	(p->a.ow)(value, p->base, offset);
 }
 
 static inline void SMC_outl(struct smc91c111_priv *p, unsigned long value,
 				unsigned offset)
 {
-	(p->a.ol)(value, p->base + offset);
+	(p->a.ol)(value, p->base, offset);
 }
 
 static inline void SMC_outsl(struct smc91c111_priv *p, unsigned offset,
 				const void *data, int count)
 {
-	(p->a.osl)(p->base + offset, data, count);
+	(p->a.osl)(p->base, offset, data, count);
 }
 
 static inline unsigned SMC_inb(struct smc91c111_priv *p, unsigned offset)
 {
-	return (p->a.ib)(p->base + offset);
+	return (p->a.ib)(p->base, offset);
 }
 
 static inline unsigned SMC_inw(struct smc91c111_priv *p, unsigned offset)
 {
-	return (p->a.iw)(p->base + offset);
+	return (p->a.iw)(p->base, offset);
 }
 
 static inline unsigned long SMC_inl(struct smc91c111_priv *p, unsigned offset)
 {
-	return (p->a.il)(p->base + offset);
+	return (p->a.il)(p->base, offset);
 }
 
 static inline void SMC_insl(struct smc91c111_priv *p, unsigned offset,
 				void *data, int count)
 {
-	(p->a.isl)(p->base + offset, data, count);
+	(p->a.isl)(p->base, offset, data, count);
 }
 
 static inline void SMC_SELECT_BANK(struct smc91c111_priv *p, int bank)
@@ -1333,15 +1324,16 @@ static int smc91c111_probe(struct device_d *dev)
 	edev->priv = (struct smc91c111_priv *)(edev + 1);
 
 	priv = edev->priv;
+	priv->a = access_via_32bit;
 
 	if (dev->platform_data) {
 		struct smc91c111_pdata *pdata = dev->platform_data;
 
 		priv->qemu_fixup = pdata->qemu_fixup;
+		if (pdata->accessors)
+			priv->a = *pdata->accessors;
 	}
 
-	priv->a = access_via_32bit;
-
 	edev->init = smc91c111_init_dev;
 	edev->open = smc91c111_eth_open;
 	edev->send = smc91c111_eth_send;
diff --git a/include/net/smc91111.h b/include/net/smc91111.h
index 0b2d49b..d56b1a9 100644
--- a/include/net/smc91111.h
+++ b/include/net/smc91111.h
@@ -7,8 +7,21 @@
 #ifndef __SMC91111_H__
 #define __SMC91111_H__
 
+struct smc91111_accessors {
+	void (*ob)(unsigned, void __iomem *, unsigned);
+	void (*ow)(unsigned, void __iomem *, unsigned);
+	void (*ol)(unsigned long, void __iomem *, unsigned);
+	void (*osl)(void __iomem *, unsigned, const void  *, int);
+	unsigned (*ib)(void __iomem *, unsigned);
+	unsigned (*iw)(void __iomem *, unsigned);
+	unsigned long (*il)(void __iomem *, unsigned);
+	void (*isl)(void __iomem *, unsigned, void*, int);
+	void *private;
+};
+
 struct smc91c111_pdata {
 	int qemu_fixup;
+	struct smc91111_accessors *accessors;
 };
 
 #endif /* __SMC91111_H__ */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
