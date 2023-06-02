Delivery-date: Fri, 02 Jun 2023 09:51:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYy-0070vw-OQ
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 09:51:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYw-0000wl-5X
	for lore@pengutronix.de; Fri, 02 Jun 2023 09:51:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P+U4fDX7w6GB2ZUNFdRKCWoBcUNgvk4LpuD9Oz27+BU=; b=QSAIbJR7V8lUlsOfP1DbjYpGAa
	bifIK3yxmVoitqFxEJcJSkZGyHyuzX4cWLIXQeR+z9UQ4JgmpRUhHBOlyHJFZ/GOCk++1dIEottct
	m+8zjRbhFmfp/QL5sJZaTw7YK5YCOit00eOcGPsMP9Mv8TFuZfg5Fl/w+hqpc5MMOC1XlJ1mRidZt
	w1hoI3FPNViDChT0votsiCGUO5LFT+ApsSCpt4KNKS3YoI4WVd+GjIYWbrwbV0elIj+KW4HltAlUG
	FSIhE5mxoRUxpRBlbh767pa3GHG+41BnKnyFd52qepILys7zxTZFUdLpOzoLoq3pZzvVYudgFmBGH
	HuwPeM9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXh-0063go-2e;
	Fri, 02 Jun 2023 07:49:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXX-0063at-0E
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 07:49:43 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1q4zXU-00006c-48; Fri, 02 Jun 2023 09:49:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri,  2 Jun 2023 09:49:17 +0200
Message-Id: <20230602074921.2687669-7-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230602074921.2687669-1-m.felsch@pengutronix.de>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_004939_191186_8E43022F 
X-CRM114-Status: GOOD (  21.04  )
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
Subject: [PATCH 06/10] gpiolib: refactor gpio-line-names parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Move the gpio-line-names parsing out of of_gpiochip_scan_hogs() since
this has nothing to do with gpio-hogs. The new function is very similar
with the kernel function devprop_gpiochip_set_names().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 104 ++++++++++++++++++++++++++---------------
 1 file changed, 66 insertions(+), 38 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 166356c85a..127cc60abd 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -515,48 +515,11 @@ static int of_hog_gpio(struct device_node *np, struct gpio_chip *chip,
 static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 {
 	struct device_node *np;
-	int ret, i, count;
+	int ret, i;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !chip->dev->of_node)
 		return 0;
 
-	count = of_property_count_strings(chip->dev->of_node,
-					  "gpio-line-names");
-
-	if (count > 0) {
-		const char **names = xzalloc(count * sizeof(char *));
-
-		ret = of_property_read_string_array(chip->dev->of_node,
-						    "gpio-line-names", names,
-						    count);
-		if (ret < 0) {
-			dev_warn(chip->dev, "failed to read GPIO line names\n");
-			kfree(names);
-			return ret;
-		}
-
-		/*
-		 * Since property 'gpio-line-names' cannot contains gaps, we
-		 * have to be sure we only assign those pins that really exists
-		 * since chip->ngpio can be less.
-		 */
-		if (count > chip->ngpio)
-			count = chip->ngpio;
-
-		for (i = 0; i < count; i++) {
-			/*
-			 * Allow overriding "fixed" names provided by the GPIO
-			 * provider. The "fixed" names are more often than not
-			 * generic and less informative than the names given in
-			 * device properties.
-			 */
-			if (names[i] && names[i][0])
-				gpio_desc[chip->base + i].name = names[i];
-		}
-
-		free(names);
-	}
-
 	for_each_available_child_of_node(chip->dev->of_node, np) {
 		if (!of_property_read_bool(np, "gpio-hog"))
 			continue;
@@ -576,6 +539,66 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 	return 0;
 }
 
+/*
+ * of_gpiochip_set_names - Set GPIO line names using OF properties
+ * @chip: GPIO chip whose lines should be named, if possible
+ *
+ * Looks for device property "gpio-line-names" and if it exists assigns
+ * GPIO line names for the chip. The memory allocated for the assigned
+ * names belong to the underlying firmware node and should not be released
+ * by the caller.
+ */
+static int of_gpiochip_set_names(struct gpio_chip *chip)
+{
+	struct device *dev = chip->dev;
+	struct device_node *np;
+	const char **names;
+	int ret, i, count;
+
+	np = dev_of_node(dev);
+	if (!np)
+		return 0;
+
+	count = of_property_count_strings(np, "gpio-line-names");
+	if (count < 0)
+		return 0;
+
+	names = kcalloc(count, sizeof(*names), GFP_KERNEL);
+	if (!names)
+		return -ENOMEM;
+
+	ret = of_property_read_string_array(np, "gpio-line-names",
+					    names, count);
+	if (ret < 0) {
+		dev_warn(dev, "failed to read GPIO line names\n");
+		kfree(names);
+		return ret;
+	}
+
+	/*
+	 * Since property 'gpio-line-names' cannot contains gaps, we
+	 * have to be sure we only assign those pins that really exists
+	 * since chip->ngpio can be less.
+	 */
+	if (count > chip->ngpio)
+		count = chip->ngpio;
+
+	for (i = 0; i < count; i++) {
+		/*
+		 * Allow overriding "fixed" names provided by the GPIO
+		 * provider. The "fixed" names are more often than not
+		 * generic and less informative than the names given in
+		 * device properties.
+		 */
+		if (names[i] && names[i][0])
+			gpio_desc[chip->base + i].name = names[i];
+	}
+
+	free(names);
+
+	return 0;
+}
+
 #ifdef CONFIG_OFDEVICE
 static const char *gpio_suffixes[] = {
 	"gpios",
@@ -637,6 +660,7 @@ int dev_gpiod_get_index(struct device *dev,
 
 int gpiochip_add(struct gpio_chip *chip)
 {
+	int ret;
 	int i;
 
 	if (chip->base >= 0) {
@@ -656,6 +680,10 @@ int gpiochip_add(struct gpio_chip *chip)
 	for (i = chip->base; i < chip->base + chip->ngpio; i++)
 		gpio_desc[i].chip = chip;
 
+	ret = of_gpiochip_set_names(chip);
+	if (ret)
+		return ret;
+
 	return of_gpiochip_scan_hogs(chip);
 }
 
-- 
2.39.2



