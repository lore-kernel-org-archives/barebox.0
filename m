Delivery-date: Fri, 02 Jun 2023 09:51:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYu-0070tw-Os
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 09:51:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYr-0000v0-Rf
	for lore@pengutronix.de; Fri, 02 Jun 2023 09:51:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m0gXTe1Us23QPDoS02FgnP6/i0XfdKbsDXUU81D64Hs=; b=XjlyPahLGwfgdBd6H8gdMs296W
	aIB6SgSikBY3ZmtChUK6a9zty8mUFoXlLVg5JS5kTQNx10nuGxwm1pYIu12iaTbc5Je8OkBxPrCqS
	NnHG5xcUFnU6JNx6wZ/KV1NkoG6vbWc64I9whQEa1P6/8rZlRfG2q84zzPWV/viIYXObbexwJiFda
	JGfFCAWpyBussws1GHpRD38He4gin3U7/RJczwU+CMiwOOvpUuh2e3cLpxpVxXmJS564k+uZdA1Dq
	3dOO8V28i6mZticAopC5ZLq9t4cD/ZeTdZqy/L0ZHHEa4meXsy9wRKxQShWJgbaZqg7Fnpylo4k5l
	VCSHSc/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXg-0063gU-1V;
	Fri, 02 Jun 2023 07:49:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXX-0063av-0E
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 07:49:43 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1q4zXU-00006c-Ai; Fri, 02 Jun 2023 09:49:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri,  2 Jun 2023 09:49:18 +0200
Message-Id: <20230602074921.2687669-8-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230602074921.2687669-1-m.felsch@pengutronix.de>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_004939_237894_D4D26F27 
X-CRM114-Status: GOOD (  14.18  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 07/10] gpiolib: introduce of_gpiochip_add to bundle all of functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Introduce a common OF related function which does all the OF related
part. This allow us to drop the santity checks and harmonizes the code
with the linux kernel.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 32 ++++++++++++++++++--------------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 127cc60abd..d1087aa583 100644
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
@@ -550,15 +547,11 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
  */
 static int of_gpiochip_set_names(struct gpio_chip *chip)
 {
+	struct device_node *np = dev_of_node(chip->dev);
 	struct device *dev = chip->dev;
-	struct device_node *np;
 	const char **names;
 	int ret, i, count;
 
-	np = dev_of_node(dev);
-	if (!np)
-		return 0;
-
 	count = of_property_count_strings(np, "gpio-line-names");
 	if (count < 0)
 		return 0;
@@ -599,6 +592,22 @@ static int of_gpiochip_set_names(struct gpio_chip *chip)
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
@@ -660,7 +669,6 @@ int dev_gpiod_get_index(struct device *dev,
 
 int gpiochip_add(struct gpio_chip *chip)
 {
-	int ret;
 	int i;
 
 	if (chip->base >= 0) {
@@ -680,11 +688,7 @@ int gpiochip_add(struct gpio_chip *chip)
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



