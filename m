Delivery-date: Tue, 07 Mar 2023 11:24:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZUV3-00CD6l-2q
	for lore@lore.pengutronix.de; Tue, 07 Mar 2023 11:24:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZUV2-0000w0-Su
	for lore@pengutronix.de; Tue, 07 Mar 2023 11:24:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f5980ZqZCy4G1XPxfewUUAVS+jGXUPG+5v1JcYJeCUk=; b=EANwkuvgglQvjz3dAd+mMZNwBk
	Fux4qrz3LKu5258U9MhWMqI2xHpxUMcNBse9la14j67lpE57BtWMCc3r7zDpdwo37itZGdmbCr+ak
	nqAVYuxovRSOgIckOGeZjJDR9OUhrgTAR560ClqPE7ScdRR4bp/KZHW6QuRBrZbRbTTwdkZmFq289
	8YqFy4tu3RBCM8jQksWWNjc+8qBFduuKyfRYoWfT5T3migSLcog8wdFAHEPpIv8B5+Xm+HUoLJaCJ
	wfOl3CPBGBq/Ydvz6MwyALbmfxx3DvMRR4HXzt2KwyHdC1HPM3kwoLIXgysBYVjGs/3YSMUp/0+DB
	QY+I6O9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZUTt-00HEIH-1E; Tue, 07 Mar 2023 10:23:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZUTh-00HEEd-0W
	for barebox@lists.infradead.org; Tue, 07 Mar 2023 10:23:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pZUTf-0000eN-Gh; Tue, 07 Mar 2023 11:23:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZUTe-002SXw-SH; Tue, 07 Mar 2023 11:23:26 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pZUTe-008kMw-1Q; Tue, 07 Mar 2023 11:23:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  7 Mar 2023 11:23:20 +0100
Message-Id: <20230307102320.2084684-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230307102320.2084684-1-a.fatoum@pengutronix.de>
References: <20230307102320.2084684-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_022329_362604_20A0776A 
X-CRM114-Status: GOOD (  12.75  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] gpio: pca953x: add optional support for regulator and reset GPIO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Traditionally, pca953x have a Power-On Reset mechanism that activates
once supply voltage rises over threshold. Newer chips additionally
feature a reset input. Add support for both. To not break existing
boards, we will ignore failure to claim GPIO or regulator, even
if it's just probe deferral. Boards wanting to make use of the newly
parsed DT properties should enable deep probe.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpio-pca953x.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-pca953x.c b/drivers/gpio/gpio-pca953x.c
index 2a1822ef3bcc..2fafa0325663 100644
--- a/drivers/gpio/gpio-pca953x.c
+++ b/drivers/gpio/gpio-pca953x.c
@@ -12,6 +12,8 @@
 #include <common.h>
 #include <malloc.h>
 #include <driver.h>
+#include <gpiod.h>
+#include <regulator.h>
 #include <xfuncs.h>
 #include <errno.h>
 #include <i2c/i2c.h>
@@ -414,7 +416,8 @@ static int pca953x_probe(struct device *dev)
 	unsigned long driver_data;
 	struct pca953x_platform_data *pdata;
 	struct pca953x_chip *chip;
-	int ret;
+	struct regulator *reg;
+	int reset_gpio, ret;
 	u32 invert = 0;
 
 	chip = xzalloc(sizeof(struct pca953x_chip));
@@ -437,6 +440,20 @@ static int pca953x_probe(struct device *dev)
 
 	chip->client = client;
 
+	reset_gpio = gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+	if (!gpio_is_valid(reset_gpio) && reset_gpio != -ENOENT)
+		dev_warn(dev, "Failed to get 'reset' GPIO (ignored)\n");
+
+	reg = regulator_get(dev, "vcc");
+	if (IS_ERR(reg)) {
+		dev_warn(dev, "Failed to get 'vcc' regulator (ignored).\n");
+		reg = NULL;
+	}
+
+	ret = regulator_enable(reg);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to enable register\n");
+
 	chip->chip_type = driver_data & (PCA953X_TYPE | PCA957X_TYPE);
 
 	/* initialize cached registers from their original values.
-- 
2.30.2



