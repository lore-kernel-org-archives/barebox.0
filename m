Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PJ4WI-0005au-Up
	for barebox@lists.infradead.org; Thu, 18 Nov 2010 13:27:24 +0000
Received: by mail-fx0-f49.google.com with SMTP id 1so1559340fxm.36
	for <barebox@lists.infradead.org>; Thu, 18 Nov 2010 05:27:22 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 18 Nov 2010 14:29:31 +0100
Message-Id: <1290086971-5467-6-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
References: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 5/5] smc91111: Various sparse fixes.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Patch fix all similar warnings found by sparse:
drivers/net/smc91111.c:488:9:
warning: incorrect type in argument 1 (different base types)
	expected void const volatile [noderef] <asn:2>*<noident>
	got unsigned long [unsigned] offset

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/net/smc91111.c |   40 ++++++++++++++++++++--------------------
 1 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 605a7d8..535e69a 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -440,20 +440,20 @@
 #define MEMORY_WAIT_TIME 16
 
 struct accessors {
-	void (*ob)(unsigned, unsigned long);
-	void (*ow)(unsigned, unsigned long);
-	void (*ol)(unsigned long, unsigned long);
-	void (*osl)(unsigned long, const void*, int);
-	unsigned (*ib)(unsigned long);
-	unsigned (*iw)(unsigned long);
-	unsigned long (*il)(unsigned long);
-	void (*isl)(unsigned long, void*, int);
+	void (*ob)(unsigned, void __iomem *);
+	void (*ow)(unsigned, void __iomem *);
+	void (*ol)(unsigned long, void __iomem *);
+	void (*osl)(void __iomem *, const void  *, int);
+	unsigned (*ib)(void __iomem *);
+	unsigned (*iw)(void __iomem *);
+	unsigned long (*il)(void __iomem *);
+	void (*isl)(void __iomem *, void*, int);
 };
 
 struct smc91c111_priv {
 	struct mii_device miidev;
 	struct accessors a;
-	unsigned long base;
+	void __iomem *base;
 };
 
 #if (SMC_DEBUG > 2 )
@@ -483,44 +483,44 @@ struct smc91c111_priv {
 
 #define ETH_ZLEN 60
 
-static void a_outb(unsigned value, unsigned long offset)
+static void a_outb(unsigned value, void __iomem *offset)
 {
 	writeb(value, offset);
 }
 
-static void a_outw(unsigned value, unsigned long offset)
+static void a_outw(unsigned value, void __iomem *offset)
 {
 	writew(value, offset);
 }
 
-static void a_outl(unsigned long value, unsigned long offset)
+static void a_outl(unsigned long value, void __iomem *offset)
 {
 	writel(value, offset);
 }
 
-static void a_outsl(unsigned long offset, const void *data, int count)
+static void a_outsl(void __iomem *offset, const void *data, int count)
 {
-	writesl((void*)offset, data, count);
+	writesl(offset, data, count);
 }
 
-static unsigned a_inb(unsigned long offset)
+static unsigned a_inb(void __iomem *offset)
 {
 	return readb(offset);
 }
 
-static unsigned a_inw(unsigned long offset)
+static unsigned a_inw(void __iomem *offset)
 {
 	return readw(offset);
 }
 
-static unsigned long a_inl(unsigned long offset)
+static unsigned long a_inl(void __iomem *offset)
 {
 	return readl(offset);
 }
 
-static inline void a_insl(unsigned long offset, void *data, int count)
+static inline void a_insl(void __iomem *offset, void *data, int count)
 {
-	readsl((void*)offset, data, count);
+	readsl(offset, data, count);
 }
 
 /* access happens via a 32 bit bus */
@@ -1317,7 +1317,7 @@ static int smc91c111_probe(struct device_d *dev)
 	priv->miidev.address = 0;
 	priv->miidev.flags = 0;
 	priv->miidev.edev = edev;
-	priv->base = dev->map_base;
+	priv->base = IOMEM(dev->map_base);
 
 	smc91c111_reset(edev);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
