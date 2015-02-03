Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIj79-0006iM-Kj
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 19:26:24 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue,  3 Feb 2015 20:25:50 +0100
Message-Id: <1422991551-12958-1-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <20150203083526.GH12209@pengutronix.de>
References: <20150203083526.GH12209@pengutronix.de>
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
Subject: [PATCH] fixup! net: smc1111: add 16 bits accessors,
 allow address shift
To: barebox@lists.infradead.org

---
 drivers/net/smc91111.c | 17 ++++++++++++++---
 include/net/smc91111.h | 12 ------------
 2 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 79a094d..698c74a 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -434,9 +434,20 @@
 */
 #define MEMORY_WAIT_TIME 16
 
+struct accessors {
+	void (*ob)(unsigned, void __iomem *, unsigned, unsigned);
+	void (*ow)(unsigned, void __iomem *, unsigned, unsigned);
+	void (*ol)(unsigned long, void __iomem *, unsigned, unsigned);
+	void (*osl)(void __iomem *, unsigned, const void  *, int, unsigned);
+	unsigned (*ib)(void __iomem *, unsigned, unsigned);
+	unsigned (*iw)(void __iomem *, unsigned, unsigned);
+	unsigned long (*il)(void __iomem *, unsigned, unsigned);
+	void (*isl)(void __iomem *, unsigned, void*, int, unsigned);
+};
+
 struct smc91c111_priv {
 	struct mii_bus miibus;
-	struct smc91111_accessors a;
+	struct accessors a;
 	void __iomem *base;
 	int qemu_fixup;
 	unsigned shift;
@@ -549,7 +560,7 @@ static inline void a32_insl(void __iomem *base, unsigned int offset, void *data,
 	readsl(base + (offset << shift), data, count);
 }
 
-static const struct smc91111_accessors access_via_16bit = {
+static const struct accessors access_via_16bit = {
 	.ob = a8_outb,
 	.ow = a16_outw,
 	.ol = a16_outl,
@@ -561,7 +572,7 @@ static const struct smc91111_accessors access_via_16bit = {
 };
 
 /* access happens via a 32 bit bus */
-static const struct smc91111_accessors access_via_32bit = {
+static const struct accessors access_via_32bit = {
 	.ob = a8_outb,
 	.ow = a16_outw,
 	.ol = a32_outl,
diff --git a/include/net/smc91111.h b/include/net/smc91111.h
index 0ed65e7..ba9da0b 100644
--- a/include/net/smc91111.h
+++ b/include/net/smc91111.h
@@ -7,18 +7,6 @@
 #ifndef __SMC91111_H__
 #define __SMC91111_H__
 
-struct smc91111_accessors {
-	void (*ob)(unsigned, void __iomem *, unsigned, unsigned);
-	void (*ow)(unsigned, void __iomem *, unsigned, unsigned);
-	void (*ol)(unsigned long, void __iomem *, unsigned, unsigned);
-	void (*osl)(void __iomem *, unsigned, const void  *, int, unsigned);
-	unsigned (*ib)(void __iomem *, unsigned, unsigned);
-	unsigned (*iw)(void __iomem *, unsigned, unsigned);
-	unsigned long (*il)(void __iomem *, unsigned, unsigned);
-	void (*isl)(void __iomem *, unsigned, void*, int, unsigned);
-	void *private;
-};
-
 struct smc91c111_pdata {
 	int qemu_fixup;
 	int addr_shift;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
