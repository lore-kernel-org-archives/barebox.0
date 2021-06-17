Delivery-date: Thu, 17 Jun 2021 16:14:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltsn2-0005Dr-2R
	for lore@lore.pengutronix.de; Thu, 17 Jun 2021 16:14:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltsn1-0007T0-74
	for lore@pengutronix.de; Thu, 17 Jun 2021 16:14:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TMcz22pSgYO2M5F1GDd3gAWiF9Qeq4GrP3uNhQ/5co8=; b=qZ11tzPHeDQyKj
	zZwvLI/R/qlv8yq4Xc+F4hZqsKouBIi1mPdcJrTcRQQjvTWfk/rqsdi4l+MIVbo3+Do4dIJx4465M
	XXaG/ivAcnqpQjA0CX1YPlL2YQh8Jy0Tvk2J6AdLwc6yuRmJqLeghEAPJpdbrCARaarQDstsxSkkY
	Aqw92uZFNgO9a4C2izf7jP19vKxz18KW3s0ykZrCCkBcDoY+M3D4iDR1C4GYq7JFosjkpqk5mYsNB
	1E8HrbwKGjALoavdti1s6tN6tCt5w2yRX7ntiuNoN/xEZ96QzIT2HCyUaqNaTq1xlGsq9DvalutBy
	2tot22M8VkZarGD8yDdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltslJ-00Adlr-Si; Thu, 17 Jun 2021 14:12:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltslF-00Adkb-9L
 for barebox@lists.infradead.org; Thu, 17 Jun 2021 14:12:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltsl9-0007P0-R2; Thu, 17 Jun 2021 16:12:43 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltsl9-00009Z-IQ; Thu, 17 Jun 2021 16:12:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 17 Jun 2021 16:12:42 +0200
Message-Id: <20210617141242.545-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_071249_369645_E6412A6C 
X-CRM114-Status: GOOD (  13.11  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] regulator: fixed: Use gpiod
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Switch to gpiod_get() which makes the implementation a bit more
straight forward.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/fixed.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
index 160a55163f..e35b294fb2 100644
--- a/drivers/regulator/fixed.c
+++ b/drivers/regulator/fixed.c
@@ -20,10 +20,10 @@
 #include <of.h>
 #include <of_gpio.h>
 #include <gpio.h>
+#include <gpiod.h>
 
 struct regulator_fixed {
 	int gpio;
-	int active_low;
 	int always_on;
 	struct regulator_dev rdev;
 	struct regulator_desc rdesc;
@@ -36,7 +36,7 @@ static int regulator_fixed_enable(struct regulator_dev *rdev)
 	if (!gpio_is_valid(fix->gpio))
 		return 0;
 
-	return gpio_direction_output(fix->gpio, !fix->active_low);
+	return gpio_direction_active(fix->gpio, true);
 }
 
 static int regulator_fixed_disable(struct regulator_dev *rdev)
@@ -49,7 +49,7 @@ static int regulator_fixed_disable(struct regulator_dev *rdev)
 	if (!gpio_is_valid(fix->gpio))
 		return 0;
 
-	return gpio_direction_output(fix->gpio, fix->active_low);
+	return gpio_direction_active(fix->gpio, false);
 }
 
 const static struct regulator_ops fixed_ops = {
@@ -60,7 +60,6 @@ const static struct regulator_ops fixed_ops = {
 static int regulator_fixed_probe(struct device_d *dev)
 {
 	struct regulator_fixed *fix;
-	enum of_gpio_flags gpioflags;
 	int ret;
 
 	if (!dev->device_node)
@@ -70,14 +69,11 @@ static int regulator_fixed_probe(struct device_d *dev)
 	fix->gpio = -EINVAL;
 
 	if (of_get_property(dev->device_node, "gpio", NULL)) {
-		fix->gpio = of_get_named_gpio_flags(dev->device_node, "gpio", 0, &gpioflags);
+		fix->gpio = gpiod_get(dev, NULL, GPIOD_ASIS);
 		if (fix->gpio < 0) {
 			ret = fix->gpio;
 			goto err;
 		}
-
-		if (gpioflags & OF_GPIO_ACTIVE_LOW)
-			fix->active_low = 1;
 	}
 
 	fix->rdesc.ops = &fixed_ops;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

