Delivery-date: Mon, 31 May 2021 09:25:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIj-00032c-EQ
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:25:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIi-0005yh-CW
	for lore@pengutronix.de; Mon, 31 May 2021 09:25:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSn5tNAu/RYEGLIDFkJWQsLqwzTTalimZJ2t5Z+L/bk=; b=4ukQhooMKjHbvO
	ydl7bnihNt0UUlQiSzH2IUXpZtl/aHTRDSSP5Vu+6FKWeAj9HlTjQgvfB+kcxPVVtKamyLTnMR6M1
	3hZE66/pKpC+4v8WJLC6L+CCD/rANBTmQKg0KqpY0b1NO02fwA3CEUV4DhipwS1wA89XZEojuyiM2
	3pt77f+MGMOWsChvxYYeCfWOVLtqLYA3z1edLI1XPE9zzgqhevc02KthSeRwjoVtcZg+f7QNmisa/
	/8fwM/6j91Z/JQ2skBtQ1B3pTmzx2vKelu5nFOZcY2SLdg9/bW9hTeo5ACKdLTDHCIcaFbj8onWkW
	fCx2/lDHVUi1PSFrqmAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncHZ-00BAsF-Tw; Mon, 31 May 2021 07:24:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncHR-00BAp1-Rk
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:24:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncHQ-0005Me-Lk; Mon, 31 May 2021 09:24:08 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncHQ-0001WN-Au; Mon, 31 May 2021 09:24:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:24:03 +0200
Message-Id: <20210531072406.5630-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531072406.5630-1-a.fatoum@pengutronix.de>
References: <20210531072406.5630-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_002409_943361_3D73C177 
X-CRM114-Status: GOOD (  11.74  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] mfd: stpmic1: simplify using regmap_init_i2c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the new regmap_init_i2c, we can drop opencoding the regmap
accessors for the i2c registers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/stpmic1.c | 47 +++----------------------------------------
 1 file changed, 3 insertions(+), 44 deletions(-)

diff --git a/drivers/mfd/stpmic1.c b/drivers/mfd/stpmic1.c
index d22758bd6105..11154e742e5d 100644
--- a/drivers/mfd/stpmic1.c
+++ b/drivers/mfd/stpmic1.c
@@ -8,47 +8,10 @@
 #include <errno.h>
 #include <i2c/i2c.h>
 #include <init.h>
-#include <malloc.h>
 #include <of.h>
 #include <regmap.h>
-#include <xfuncs.h>
 #include <linux/mfd/stpmic1.h>
 
-struct stpmic1 {
-	struct device_d		*dev;
-	struct i2c_client	*client;
-};
-
-static int stpmic1_i2c_reg_read(void *ctx, unsigned int reg, unsigned int *val)
-{
-	struct stpmic1 *stpmic1 = ctx;
-	u8 buf[1];
-	int ret;
-
-	ret = i2c_read_reg(stpmic1->client, reg, buf, 1);
-	*val = buf[0];
-
-	return ret == 1 ? 0 : ret;
-}
-
-static int stpmic1_i2c_reg_write(void *ctx, unsigned int reg, unsigned int val)
-{
-	struct stpmic1 *stpmic1 = ctx;
-	u8 buf[] = {
-		val & 0xff,
-	};
-	int ret;
-
-	ret = i2c_write_reg(stpmic1->client, reg, buf, 1);
-
-	return ret == 1 ? 0 : ret;
-}
-
-static struct regmap_bus regmap_stpmic1_i2c_bus = {
-	.reg_write = stpmic1_i2c_reg_write,
-	.reg_read = stpmic1_i2c_reg_read,
-};
-
 static const struct regmap_config stpmic1_regmap_i2c_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
@@ -57,17 +20,13 @@ static const struct regmap_config stpmic1_regmap_i2c_config = {
 
 static int __init stpmic1_probe(struct device_d *dev)
 {
-	struct stpmic1 *stpmic1;
 	struct regmap *regmap;
 	u32 reg;
 	int ret;
 
-	stpmic1 = xzalloc(sizeof(*stpmic1));
-	stpmic1->dev = dev;
-
-	stpmic1->client = to_i2c_client(dev);
-	regmap = regmap_init(dev, &regmap_stpmic1_i2c_bus,
-			     stpmic1, &stpmic1_regmap_i2c_config);
+	regmap = regmap_init_i2c(to_i2c_client(dev), &stpmic1_regmap_i2c_config);
+	if (IS_ERR(regmap))
+		return PTR_ERR(regmap);
 
 	ret = regmap_register_cdev(regmap, NULL);
 	if (ret)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

