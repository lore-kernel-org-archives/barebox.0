Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp10.smtpout.orange.fr ([80.12.242.132]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YHXp3-0002oO-Aj
 for barebox@lists.infradead.org; Sat, 31 Jan 2015 13:10:50 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 31 Jan 2015 14:10:10 +0100
Message-Id: <1422709810-30622-3-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1422709810-30622-1-git-send-email-robert.jarzmik@free.fr>
References: <1422709810-30622-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH v2 3/3] net: smc1111: improve debug capability
To: barebox@lists.infradead.org

Improve smc1111 driver debug messages by printing the register accessed,
the current bank, and the values.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/net/smc91111.c | 118 +++++++++++++++++++++++++++++--------------------
 1 file changed, 69 insertions(+), 49 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index ef7c0dc..79a094d 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -574,55 +574,75 @@ static const struct smc91111_accessors access_via_32bit = {
 
 /* ------------------------------------------------------------------------ */
 
-static inline void SMC_outb(struct smc91c111_priv *p, unsigned value,
-				unsigned offset)
-{
-	(p->a.ob)(value, p->base, offset, p->shift);
-}
-
-static inline void SMC_outw(struct smc91c111_priv *p, unsigned value,
-				unsigned offset)
-{
-	(p->a.ow)(value, p->base, offset, p->shift);
-}
-
-static inline void SMC_outl(struct smc91c111_priv *p, unsigned long value,
-				unsigned offset)
-{
-	(p->a.ol)(value, p->base, offset, p->shift);
-}
-
-static inline void SMC_outsl(struct smc91c111_priv *p, unsigned offset,
-				const void *data, int count)
-{
-	(p->a.osl)(p->base, offset, data, count, p->shift);
-}
-
-static inline unsigned SMC_inb(struct smc91c111_priv *p, unsigned offset)
-{
-	return (p->a.ib)(p->base, offset, p->shift);
-}
-
-static inline unsigned SMC_inw(struct smc91c111_priv *p, unsigned offset)
-{
-	return (p->a.iw)(p->base, offset, p->shift);
-}
-
-static inline unsigned long SMC_inl(struct smc91c111_priv *p, unsigned offset)
-{
-	return (p->a.il)(p->base, offset, p->shift);
-}
-
-static inline void SMC_insl(struct smc91c111_priv *p, unsigned offset,
-				void *data, int count)
-{
-	(p->a.isl)(p->base, offset, data, count, p->shift);
-}
-
-static inline void SMC_SELECT_BANK(struct smc91c111_priv *p, int bank)
-{
-	SMC_outw(p, bank, BANK_SELECT);
-}
+static unsigned last_bank;
+#define SMC_outb(p, value, offset) \
+	do {								\
+		PRINTK3("\t%s:%d outb: %s[%1d:0x%04x] = 0x%02x\n",	\
+			__func__, __LINE__, #offset, last_bank,		\
+			(offset), (value));				\
+		((p)->a.ob)((value), (p)->base, (offset), (p)->shift);	\
+	} while (0)
+
+#define SMC_outw(p, value, offset)					\
+	do {								\
+		PRINTK3("\t%s:%d outw: %s[%1d:0x%04x] = 0x%04x\n",	\
+			__func__, __LINE__, #offset, last_bank,		\
+			(offset), (value));				\
+		((p)->a.ow)((value), (p)->base, (offset), (p)->shift);	\
+	} while (0)
+
+#define SMC_outl(p, value, offset)					\
+	do {								\
+		PRINTK3("\t%s:%d outl: %s[%1d:0x%04x] = 0x%08lx\n",	\
+			__func__, __LINE__, #offset, last_bank,		\
+			(offset), (unsigned long)(value));		\
+		((p)->a.ol)((value), (p)->base, (offset), (p)->shift);	\
+	} while (0)
+
+#define SMC_outsl(p, offset, data, count)\
+	do {								\
+		PRINTK3("\t%s:%d outsl: %5d@%p -> [%1d:0x%04x]\n",	\
+			__func__, __LINE__, (count) * 4, data,		\
+			last_bank, (offset));				\
+		((p)->a.osl)((p)->base, (offset), data, (count),	\
+			     (p)->shift);				\
+	} while (0)
+
+#define SMC_inb(p, offset)						\
+	({								\
+		unsigned _v = ((p)->a.ib)((p)->base, (offset),		\
+					  (p)->shift);			\
+		PRINTK3("\t%s:%d inb: %s[%1d:0x%04x] -> 0x%02x\n",	\
+			__func__, __LINE__, #offset, last_bank,		\
+			(offset), _v);					\
+		_v; })
+
+#define SMC_inw(p, offset)						\
+	({								\
+		unsigned _v = ((p)->a.iw)((p)->base, (offset),		\
+					  (p)->shift);			\
+		PRINTK3("\t%s:%d inw: %s[%1d:0x%04x] -> 0x%04x\n",	\
+			__func__, __LINE__, #offset, last_bank,		\
+			(offset), _v);					\
+		_v; })
+
+#define SMC_inl(p, offset)						\
+	({								\
+		unsigned long _v = ((p)->a.il)((p)->base, (offset),	\
+			(p)->shift);					\
+		PRINTK3("\t%s:%d inl: %s[%1d:0x%04x] -> 0x%08lx\n",	\
+			__func__, __LINE__, #offset, last_bank,		\
+			(offset), _v);					\
+		_v; })
+
+#define SMC_insl(p, offset, data, count)				\
+	((p)->a.isl)((p)->base, (offset), data, (count), (p)->shift)
+
+#define SMC_SELECT_BANK(p, bank)			\
+	do {						\
+		SMC_outw(p, bank & 0xf, BANK_SELECT);	\
+		last_bank = bank & 0xf;			\
+	} while (0)
 
 #if SMC_DEBUG > 2
 static void print_packet( unsigned char * buf, int length )
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
