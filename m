Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YHXp3-0002lu-AZ
 for barebox@lists.infradead.org; Sat, 31 Jan 2015 13:10:51 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 31 Jan 2015 14:10:08 +0100
Message-Id: <1422709810-30622-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH v2 1/3] net: smc1111: add 16 bits accessors,
 allow address shift
To: barebox@lists.infradead.org

Smc network IPs can be wired up in different funny ways. For example the
lubbock pxa25x development platform wires all address lines shifted by
2, ie. bus A2 is smc91c96 A0, bus A3 is smc91c96 A1 etc ...

In order to cope with the different possible combination, add a shift
parameter for addresses.

By default, the old behaviour using the 32 bit accesses is kept.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/net/smc91111.c | 133 ++++++++++++++++++++++++++++++++-----------------
 include/net/smc91111.h |  14 ++++++
 2 files changed, 100 insertions(+), 47 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 100688c..f6d0aed 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -434,22 +434,12 @@
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
+	unsigned shift;
 };
 
 #if (SMC_DEBUG > 2 )
@@ -479,56 +469,103 @@ struct smc91c111_priv {
 
 #define ETH_ZLEN 60
 
-static void a_outb(unsigned value, void __iomem *offset)
+static void a8_outb(unsigned value, void __iomem *base, unsigned int offset,
+		    unsigned shift)
 {
-	writeb(value, offset);
+	writeb(value, base + (offset << shift));
 }
 
-static void a_outw(unsigned value, void __iomem *offset)
+static void a16_outw(unsigned value, void __iomem *base, unsigned int offset,
+		     unsigned shift)
 {
-	writew(value, offset);
+	writew(value, base + (offset << shift));
 }
 
-static void a_outl(unsigned long value, void __iomem *offset)
+static void a32_outl(unsigned long value, void __iomem *base,
+		     unsigned int offset, unsigned shift)
 {
-	writel(value, offset);
+	writel(value, base + (offset << shift));
 }
 
-static void a_outsl(void __iomem *offset, const void *data, int count)
+static void a16_outsl(void __iomem *base, unsigned int offset,
+		      const void *data, int count, unsigned shift)
 {
-	writesl(offset, data, count);
+	writesw(base + (offset << shift), data, count * 2);
 }
 
-static unsigned a_inb(void __iomem *offset)
+static void a16_outl(unsigned long value, void __iomem *base,
+		     unsigned int offset, unsigned shift)
 {
-	return readb(offset);
+	writew(value & 0xffff, base + (offset << shift));
+	writew(value >> 16, base + ((offset + 2) << shift));
 }
 
-static unsigned a_inw(void __iomem *offset)
+static void a32_outsl(void __iomem *base, unsigned int offset,
+		      const void *data, int count, unsigned shift)
 {
-	return readw(offset);
+	writesw(base + (offset << shift), data, count * 2);
 }
 
-static unsigned long a_inl(void __iomem *offset)
+static unsigned a8_inb(void __iomem *base, unsigned int offset, unsigned shift)
 {
-	return readl(offset);
+	return readb(base + (offset << shift));
 }
 
-static inline void a_insl(void __iomem *offset, void *data, int count)
+static unsigned a16_inw(void __iomem *base, unsigned int offset, unsigned shift)
 {
-	readsl(offset, data, count);
+	return readw(base + (offset << shift));
 }
 
+static unsigned long a16_inl(void __iomem *base, unsigned int offset,
+			     unsigned shift)
+{
+	u32 value;
+
+	value = readw(base + (offset << shift));
+	value |= readw(base + (offset << shift)) << 16;
+
+	return value;
+}
+
+static inline void a16_insl(void __iomem *base, unsigned int offset, void *data,
+			    int count, unsigned shift)
+{
+	readsw(base + (offset << shift), data, count * 2);
+}
+
+static unsigned long a32_inl(void __iomem *base, unsigned int offset,
+			     unsigned shift)
+{
+	return readl(base + (offset << shift));
+}
+
+static inline void a32_insl(void __iomem *base, unsigned int offset, void *data,
+			    int count, unsigned shift)
+{
+	readsl(base + (offset << shift), data, count);
+}
+
+static const struct smc91111_accessors access_via_16bit = {
+	.ob = a8_outb,
+	.ow = a16_outw,
+	.ol = a16_outl,
+	.osl = a16_outsl,
+	.ib = a8_inb,
+	.iw = a16_inw,
+	.il = a16_inl,
+	.isl = a16_insl,
+};
+
 /* access happens via a 32 bit bus */
-static const struct accessors access_via_32bit = {
-	.ob = a_outb,
-	.ow = a_outw,
-	.ol = a_outl,
-	.osl = a_outsl,
-	.ib = a_inb,
-	.iw = a_inw,
-	.il = a_inl,
-	.isl = a_insl,
+static const struct smc91111_accessors access_via_32bit = {
+	.ob = a8_outb,
+	.ow = a16_outw,
+	.ol = a32_outl,
+	.osl = a32_outsl,
+	.ib = a8_inb,
+	.iw = a16_inw,
+	.il = a32_inl,
+	.isl = a32_insl,
 };
 
 /* ------------------------------------------------------------------------ */
@@ -536,46 +573,46 @@ static const struct accessors access_via_32bit = {
 static inline void SMC_outb(struct smc91c111_priv *p, unsigned value,
 				unsigned offset)
 {
-	(p->a.ob)(value, p->base + offset);
+	(p->a.ob)(value, p->base, offset, p->shift);
 }
 
 static inline void SMC_outw(struct smc91c111_priv *p, unsigned value,
 				unsigned offset)
 {
-	(p->a.ow)(value, p->base + offset);
+	(p->a.ow)(value, p->base, offset, p->shift);
 }
 
 static inline void SMC_outl(struct smc91c111_priv *p, unsigned long value,
 				unsigned offset)
 {
-	(p->a.ol)(value, p->base + offset);
+	(p->a.ol)(value, p->base, offset, p->shift);
 }
 
 static inline void SMC_outsl(struct smc91c111_priv *p, unsigned offset,
 				const void *data, int count)
 {
-	(p->a.osl)(p->base + offset, data, count);
+	(p->a.osl)(p->base, offset, data, count, p->shift);
 }
 
 static inline unsigned SMC_inb(struct smc91c111_priv *p, unsigned offset)
 {
-	return (p->a.ib)(p->base + offset);
+	return (p->a.ib)(p->base, offset, p->shift);
 }
 
 static inline unsigned SMC_inw(struct smc91c111_priv *p, unsigned offset)
 {
-	return (p->a.iw)(p->base + offset);
+	return (p->a.iw)(p->base, offset, p->shift);
 }
 
 static inline unsigned long SMC_inl(struct smc91c111_priv *p, unsigned offset)
 {
-	return (p->a.il)(p->base + offset);
+	return (p->a.il)(p->base, offset, p->shift);
 }
 
 static inline void SMC_insl(struct smc91c111_priv *p, unsigned offset,
 				void *data, int count)
 {
-	(p->a.isl)(p->base + offset, data, count);
+	(p->a.isl)(p->base, offset, data, count, p->shift);
 }
 
 static inline void SMC_SELECT_BANK(struct smc91c111_priv *p, int bank)
@@ -1333,15 +1370,17 @@ static int smc91c111_probe(struct device_d *dev)
 	edev->priv = (struct smc91c111_priv *)(edev + 1);
 
 	priv = edev->priv;
+	priv->a = access_via_32bit;
 
 	if (dev->platform_data) {
 		struct smc91c111_pdata *pdata = dev->platform_data;
 
 		priv->qemu_fixup = pdata->qemu_fixup;
+		priv->shift = pdata->addr_shift;
+		if (pdata->bus_width == 16)
+			priv->a = access_via_16bit;
 	}
 
-	priv->a = access_via_32bit;
-
 	edev->init = smc91c111_init_dev;
 	edev->open = smc91c111_eth_open;
 	edev->send = smc91c111_eth_send;
diff --git a/include/net/smc91111.h b/include/net/smc91111.h
index 0b2d49b..fa904ea 100644
--- a/include/net/smc91111.h
+++ b/include/net/smc91111.h
@@ -7,8 +7,22 @@
 #ifndef __SMC91111_H__
 #define __SMC91111_H__
 
+struct smc91111_accessors {
+	void (*ob)(unsigned, void __iomem *, unsigned, unsigned);
+	void (*ow)(unsigned, void __iomem *, unsigned, unsigned);
+	void (*ol)(unsigned long, void __iomem *, unsigned, unsigned);
+	void (*osl)(void __iomem *, unsigned, const void  *, int, unsigned);
+	unsigned (*ib)(void __iomem *, unsigned, unsigned);
+	unsigned (*iw)(void __iomem *, unsigned, unsigned);
+	unsigned long (*il)(void __iomem *, unsigned, unsigned);
+	void (*isl)(void __iomem *, unsigned, void*, int, unsigned);
+	void *private;
+};
+
 struct smc91c111_pdata {
 	int qemu_fixup;
+	int addr_shift;
+	int bus_width;
 };
 
 #endif /* __SMC91111_H__ */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
