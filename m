Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvZf-0008Qb-Pj
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:39:39 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id DE2F9E0003
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:39:33 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:39:11 +0200
Message-Id: <20200330143915.663705-4-ahmad@a3f.at>
In-Reply-To: <20200330143915.663705-1-ahmad@a3f.at>
References: <20200330143915.663705-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/8] nvmem: bsec: allow reads at unaligned offsets
To: barebox@lists.infradead.org

Setting the NVMEM stride to 4 means we can't have nvmem cells pointing
at odd addresses. Linux sets it to 1 instead and handles reads at
unaligned addresses by splitting them up to aligned chunks. Copy over
the code to do the same. Unaligned writes remain illegal.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/nvmem/bsec.c | 42 ++++++++++++++++++++++++++++++++++++++----
 1 file changed, 38 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index d772d0b7af92..209c50dc7010 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -77,15 +77,49 @@ static int stm32_bsec_write(struct device_d *dev, int offset,
 {
 	struct bsec_priv *priv = dev->parent->priv;
 
+	/* Allow only writing complete 32-bits aligned words */
+	if ((bytes % 4) || (offset % 4))
+		return -EINVAL;
+
 	return regmap_bulk_write(priv->map, offset, val, bytes);
 }
 
 static int stm32_bsec_read(struct device_d *dev, int offset,
-			   void *val, int bytes)
+			   void *buf, int bytes)
 {
 	struct bsec_priv *priv = dev->parent->priv;
+	u32 roffset, rbytes, val;
+	u8 *buf8 = buf, *val8 = (u8 *)&val;
+	int i, j = 0, ret, skip_bytes, size;
+
+	/* Round unaligned access to 32-bits */
+	roffset = rounddown(offset, 4);
+	skip_bytes = offset & 0x3;
+	rbytes = roundup(bytes + skip_bytes, 4);
+
+	if (roffset + rbytes > priv->config.size)
+		return -EINVAL;
+
+	for (i = roffset; i < roffset + rbytes; i += 4) {
+		ret = regmap_bulk_read(priv->map, i, &val, 4);
+		if (ret) {
+			dev_err(dev, "Can't read data%d (%d)\n", i, ret);
+			return ret;
+		}
+
+		/* skip first bytes in case of unaligned read */
+		if (skip_bytes)
+			size = min(bytes, 4 - skip_bytes);
+		else
+			size = min(bytes, 4);
+
+		memcpy(&buf8[j], &val8[skip_bytes], size);
+		bytes -= size;
+		j += size;
+		skip_bytes = 0;
+	}
 
-	return regmap_bulk_read(priv->map, offset, val, bytes);
+	return 0;
 }
 
 static const struct nvmem_bus stm32_bsec_nvmem_bus = {
@@ -185,8 +219,8 @@ static int stm32_bsec_probe(struct device_d *dev)
 
 	priv->config.name = "stm32-bsec";
 	priv->config.dev = dev;
-	priv->config.stride = 4;
-	priv->config.word_size = 4;
+	priv->config.stride = 1;
+	priv->config.word_size = 1;
 	priv->config.size = data->num_regs;
 	priv->config.bus = &stm32_bsec_nvmem_bus;
 	dev->priv = priv;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
