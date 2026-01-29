Delivery-date: Thu, 29 Jan 2026 12:40:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlQO3-006b11-0N
	for lore@lore.pengutronix.de;
	Thu, 29 Jan 2026 12:40:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlQO2-0006bV-2e
	for lore@pengutronix.de; Thu, 29 Jan 2026 12:40:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Lw/kLXzoK9dSixHTHZ48IK2+vEuLfKROEb30z4vUltI=; b=le0dM9VIe+LXLFV/5Nes+DHqzc
	vDBJq5UXPp8qdZFXlyGuK8t0PcPoa83CpuecK0UdqTeoYE8S6fJ9Gs0+EreZLvEPiwulfRjbs8eyg
	T410ysd4eikDd1Q49TNKbszEiBnEMgO4LTzLQUf2K2G5hmQca9EdJNnOjAFC3bJ+WPapE35OrFb3K
	3VRUQXQ0WVUgxser3lum44+klgcwHRJop0SYv/T38KqU85g/tAeoXsTEmjXdvekPgygzxiiw+PU1R
	UbTr7w9FpVWVGtepF/ppuu7rdNmQoJTXF72ZYcG07xleU9RB7ZUuM7JFe/Dq8YkUdR9k+lk/6aJaG
	nSi/GHCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQNZ-000000003d2-1rgY;
	Thu, 29 Jan 2026 11:40:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQNX-000000003cJ-0Pcr
	for barebox@lists.infradead.org;
	Thu, 29 Jan 2026 11:40:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQNV-0006VM-IH; Thu, 29 Jan 2026 12:40:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQNW-0034oD-06;
	Thu, 29 Jan 2026 12:40:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQNV-0000000DaPD-32Us;
	Thu, 29 Jan 2026 12:40:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 29 Jan 2026 12:40:00 +0100
Message-ID: <20260129114000.3238194-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_034003_186336_D6BAA310 
X-CRM114-Status: GOOD (  17.37  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] nvmem: k3: add regulator support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

K3 SoCs need an extra vpp for writing fuses. For boards which have that
controllable add regulator support to the K3 OTP driver. The regulator
is turned on before writing and turned off after writing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/k3-fuse.c | 27 +++++++++++++++++++++++----
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/k3-fuse.c b/drivers/nvmem/k3-fuse.c
index 214239f2cd..6ee5e78920 100644
--- a/drivers/nvmem/k3-fuse.c
+++ b/drivers/nvmem/k3-fuse.c
@@ -11,6 +11,7 @@
 #include <linux/nvmem-provider.h>
 #include <linux/arm-smccc.h>
 #include <linux/bitmap.h>
+#include <regulator.h>
 
 /*
  * These SIP calls are currently only supported in the TI downstream
@@ -27,6 +28,7 @@ struct ti_k3_otp_driver_data {
 
 struct ti_k3_otp {
 	struct device *dev;
+	struct regulator *regulator_fuse;
 	uint32_t *map;
 	const struct ti_k3_otp_driver_data *data;
 };
@@ -132,20 +134,29 @@ static int ti_k3_otp_write(void *ctx, unsigned int offset, unsigned int val)
 	unsigned int bank = 0;
 	unsigned int word = offset >> 2;
 	unsigned int mask = val;
+	int ret;
+
+	ret = regulator_enable(priv->regulator_fuse);
+	if (ret) {
+		dev_err(priv->dev, "Cannot enable regulator: %pe\n", ERR_PTR(ret));
+		return ret;
+	}
 
 	if (word == 0 && priv->data->skip_init) {
 		unsigned int skip_mask = GENMASK(priv->data->skip_init, 0);
 		if (val & skip_mask) {
 			dev_err(priv->dev, "Lower %d bits of word 0 cannot be written\n",
 				priv->data->skip_init);
-			return -EINVAL;
+			ret = -EINVAL;
+			goto err;
 		}
 	}
 
 	if (val & GENMASK(31, priv->data->bits_per_row)) {
 		dev_err(priv->dev, "Each row only has %d bits",
 			priv->data->bits_per_row);
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err;
 	}
 
 	arm_smccc_smc(K3_SIP_OTP_WRITE, bank, word,
@@ -154,10 +165,14 @@ static int ti_k3_otp_write(void *ctx, unsigned int offset, unsigned int val)
 	if (res.a0 != 0) {
 		dev_err(priv->dev, "Writing fuse 0x%08x failed with: %lu\n",
 			offset, res.a0);
-		return -EIO;
+		ret = -EIO;
+		goto err;
 	}
 
-	return 0;
+	ret = 0;
+err:
+	regulator_disable(priv->regulator_fuse);
+	return ret;
 }
 
 static struct regmap_bus ti_k3_otp_regmap_bus = {
@@ -177,6 +192,10 @@ static int ti_k3_otp_probe(struct device *dev)
 	priv->dev = dev;
 	priv->map = xzalloc(sizeof(uint32_t) * priv->data->nrows);
 
+	priv->regulator_fuse = regulator_get(dev, "fuse");
+	if (IS_ERR(priv->regulator_fuse))
+		return PTR_ERR(priv->regulator_fuse);
+
 	config.name = "k3-otp";
 	config.reg_bits = 32;
 	config.val_bits = 32;
-- 
2.47.3



