Delivery-date: Wed, 14 Jun 2023 12:09:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRE-006UJk-MT
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 12:09:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRB-00066R-UC
	for lore@pengutronix.de; Wed, 14 Jun 2023 12:09:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ycZdHdse9hhlYGPLUm6OGPTgBLPtX8WM1PkgVPzyD4Q=; b=uZoPercocqpJ9tP8NbRm3FiVZo
	nU5iDXhLqRUBRN2jDXOYSy8gcGjydkTEJVQPItz9SODDH2bjqhk87qI9w1iYkT8YB9KwOYBUVn7cA
	ZkIEyIjkHJ4AQRN5UFqsv44Opt6K89ENhi3//njPQPc5aLGmh1MoJ+Xx501TbpVVlEx3csm5kgoIX
	aDwQHPzhcDd29FDNorW+kq4/dNOWU87EG1TEZiqqVQMriwPurVONlpLK8QvmGh+bsDOU8nsVPfaI8
	tBZ0OaOT+J8NSNe+vHDafM9Fz2r8MinE0iX3CVMIgGpu4GGKAk5woGXU5bDPe2QVxpsB6PP5oz1DY
	uDJvA89g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQ8-00BAWE-2C;
	Wed, 14 Jun 2023 10:08:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQ0-00BAQt-2s
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 10:08:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPt-0005cZ-VO; Wed, 14 Jun 2023 12:07:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPt-007Kbr-AV; Wed, 14 Jun 2023 12:07:53 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPr-00E9uq-Md; Wed, 14 Jun 2023 12:07:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Jules Maselbas <jmaselbas@kalray.eu>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 12:07:44 +0200
Message-Id: <20230614100747.3368109-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
References: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_030800_956698_36EC01B0 
X-CRM114-Status: GOOD (  14.66  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/10] gpiolib: introduce of_gpiochip_add to bundle all of functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Introduce a common OF related function which does all the OF related
part. This allow us to drop the santity checks and harmonizes the code
with the linux kernel.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 drivers/gpio/gpiolib.c | 33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 97d1a6d6687f..5e753d1c7300 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -517,9 +517,6 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 	struct device_node *np;
 	int ret, i;
 
-	if (!IS_ENABLED(CONFIG_OFDEVICE) || !chip->dev->of_node)
-		return 0;
-
 	for_each_available_child_of_node(chip->dev->of_node, np) {
 		if (!of_property_read_bool(np, "gpio-hog"))
 			continue;
@@ -550,15 +547,10 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
  */
 static int of_gpiochip_set_names(struct gpio_chip *chip)
 {
-	struct device *dev = chip->dev;
-	struct device_node *np;
+	struct device_node *np = dev_of_node(chip->dev);
 	const char **names;
 	int ret, i, count;
 
-	np = dev_of_node(dev);
-	if (!np)
-		return 0;
-
 	count = of_property_count_strings(np, "gpio-line-names");
 	if (count < 0)
 		return 0;
@@ -598,6 +590,22 @@ static int of_gpiochip_set_names(struct gpio_chip *chip)
 	return 0;
 }
 
+static int of_gpiochip_add(struct gpio_chip *chip)
+{
+	struct device_node *np;
+	int ret;
+
+	np = dev_of_node(chip->dev);
+	if (!np)
+		return 0;
+
+	ret = of_gpiochip_set_names(chip);
+	if (ret)
+		return ret;
+
+	return of_gpiochip_scan_hogs(chip);
+}
+
 #ifdef CONFIG_OFDEVICE
 static const char *gpio_suffixes[] = {
 	"gpios",
@@ -659,7 +667,6 @@ int dev_gpiod_get_index(struct device *dev,
 
 int gpiochip_add(struct gpio_chip *chip)
 {
-	int ret;
 	int i;
 
 	if (chip->base >= 0) {
@@ -679,11 +686,7 @@ int gpiochip_add(struct gpio_chip *chip)
 	for (i = chip->base; i < chip->base + chip->ngpio; i++)
 		gpio_desc[i].chip = chip;
 
-	ret = of_gpiochip_set_names(chip);
-	if (ret)
-		return ret;
-
-	return of_gpiochip_scan_hogs(chip);
+	return of_gpiochip_add(chip);
 }
 
 void gpiochip_remove(struct gpio_chip *chip)
-- 
2.39.2



