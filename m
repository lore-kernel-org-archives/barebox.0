Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp03.smtpout.orange.fr ([80.12.242.125]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yh3BO-0004Vb-VV
 for barebox@lists.infradead.org; Sat, 11 Apr 2015 21:43:20 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Sat, 11 Apr 2015 23:42:42 +0200
Message-Id: <1428788562-10004-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1428788562-10004-1-git-send-email-robert.jarzmik@free.fr>
References: <1428788562-10004-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 2/2] net: smc1111: add a quirk for pxa pxa27x platforms
To: barebox@lists.infradead.org

As hinted in the linux kernel driver, pxa platforms such as mainstone,
stargate and idp have a broken design, where half-word writes not
aligned to a word address are not working.

This patch is a taking back the half-word write accessor for this
specific case from the linux kernel.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/net/smc91111.c | 31 +++++++++++++++++++++++++++++--
 include/net/smc91111.h |  1 +
 2 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index bcb470c..c0cf42a 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -560,6 +560,20 @@ static inline void a32_insl(void __iomem *base, unsigned int offset, void *data,
 	readsl(base + (offset << shift), data, count);
 }
 
+static void a16_outw_algn4(unsigned value, void __iomem *base,
+			   unsigned int offset, unsigned shift)
+{
+	u32 v;
+
+	if ((offset << shift) & 2) {
+		v = value << 16;
+		v |= (a32_inl(base, offset & ~2, shift) & 0xffff);
+		a32_outl(v, base, offset & ~2, shift);
+	} else {
+		writew(value, base + (offset << shift));
+	}
+}
+
 static const struct accessors access_via_16bit = {
 	.ob = a8_outb,
 	.ow = a16_outw,
@@ -583,6 +597,18 @@ static const struct accessors access_via_32bit = {
 	.isl = a32_insl,
 };
 
+/* access happens via a 32 bit bus, writes must by word aligned */
+static const struct accessors access_via_32bit_aligned_short_writes = {
+	.ob = a8_outb,
+	.ow = a16_outw_algn4,
+	.ol = a32_outl,
+	.osl = a32_outsl,
+	.ib = a8_inb,
+	.iw = a16_inw,
+	.il = a32_inl,
+	.isl = a32_insl,
+};
+
 /* ------------------------------------------------------------------------ */
 
 static unsigned last_bank;
@@ -1435,8 +1461,9 @@ static int smc91c111_probe(struct device_d *dev)
 		priv->shift = pdata->addr_shift;
 		if (pdata->bus_width == 16)
 			priv->a = access_via_16bit;
-		pdata->config_setup = pdata->config_setup;
-		pdata->control_setup = pdata->control_setup;
+		if (((pdata->bus_width == 0) || (pdata->bus_width == 32)) &&
+		    (pdata->word_aligned_short_writes))
+			priv->a = access_via_32bit_aligned_short_writes;
 		priv->config_setup = pdata->config_setup;
 		priv->control_setup = pdata->control_setup;
 	}
diff --git a/include/net/smc91111.h b/include/net/smc91111.h
index ba9da0b..72193bf 100644
--- a/include/net/smc91111.h
+++ b/include/net/smc91111.h
@@ -11,6 +11,7 @@ struct smc91c111_pdata {
 	int qemu_fixup;
 	int addr_shift;
 	int bus_width;
+	bool word_aligned_short_writes;
 	int config_setup;
 	int control_setup;
 };
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
