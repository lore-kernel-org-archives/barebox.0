Delivery-date: Thu, 22 Jun 2023 09:25:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgu-00GhOd-JP
	for lore@lore.pengutronix.de; Thu, 22 Jun 2023 09:25:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgs-0001XD-4G
	for lore@pengutronix.de; Thu, 22 Jun 2023 09:25:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T6wJALR8jaYj5ASGTdGZPeu5Z8XttX6SVmGuFwzTMwg=; b=tDuaS2pmPwUkSEvNv4smmeJzqR
	9jQNnIwD+0ZmpvDqBcPbNzvAotwGugzyBuvukGzMqtOMntqpj1vo9leHj/DJA+isXOWzOyUj8l4AR
	UAEskE0yyvYacWKRtDFv10ZFz41gSUPDzRGliD1tBurbtDJ8VTLuyZmqsQBNUlVOEMeU/GAhEk3VZ
	wkj4gMMUpVTdPp4vXtC0YeoBrNPrJREYy8p04Yr488C+Ctgg37oWVuoHLL60R1l0yj4TzzEt+AtGg
	d9kAbZ1sXACehYpwRHM+5H3fLTYivfLPK4Jwax+nthEX9OT4+AqleYVjTWfAjf+mCz39DT/ulYM8v
	Q4PvDXZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfY-00HDuU-0Q;
	Thu, 22 Jun 2023 07:23:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfR-00HDpw-2g
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 07:23:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-0000zb-R9; Thu, 22 Jun 2023 09:23:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-009Djn-6W; Thu, 22 Jun 2023 09:23:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfL-005cRh-0L;
	Thu, 22 Jun 2023 09:23:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Jun 2023 09:23:27 +0200
Message-Id: <20230622072329.1339317-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
References: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_002345_881329_0707B28E 
X-CRM114-Status: GOOD (  15.00  )
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
Subject: [PATCH v2 7/9] gpiolib: factor out finding gpio property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The GPIO property may end with -gpios or -gpio or if there's only a
single GPIO, may have no dash at all. We will add more functions that
need to find the gpio property, so let's factor this out into
of_find_gpio_property.

This introduces functional change: When a foo-gpios property is found,
but points at an invalid GPIO, that failure will be propagated instead
of trying foo-gpio. This is deemed acceptable as this sounds like the
saner choice anyway.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 61 +++++++++++++++++++++++++++---------------
 1 file changed, 39 insertions(+), 22 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 11d2506deca4..f34337f6446f 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -802,21 +802,12 @@ static const char *gpio_suffixes[] = {
 	"gpio",
 };
 
-/* Linux compatibility helper: Get a GPIO descriptor from device tree */
-struct gpio_desc *dev_gpiod_get_index(struct device *dev,
-			struct device_node *np,
-			const char *_con_id, int index,
-			enum gpiod_flags flags,
-			const char *label)
+static struct property *of_find_gpio_property(struct device_node *np,
+					      const char *_con_id)
 {
-	struct gpio_desc *desc = NULL;
-	enum of_gpio_flags of_flags;
-	char *buf = NULL, *con_id;
-	int gpio;
-	int ret, i;
-
-	if (!np)
-		return ERR_PTR(-ENODEV);
+	struct property *pp = NULL;
+	char *con_id;
+	int i;
 
 	for (i = 0; i < ARRAY_SIZE(gpio_suffixes); i++) {
 		if (_con_id)
@@ -827,26 +818,52 @@ struct gpio_desc *dev_gpiod_get_index(struct device *dev,
 		if (!con_id)
 			return ERR_PTR(-ENOMEM);
 
-		gpio = of_get_named_gpio_flags(np, con_id, index, &of_flags);
+		pp = of_find_property(np, con_id, NULL);
 		free(con_id);
 
-		if (gpio_is_valid(gpio)) {
-			desc = gpio_to_desc(gpio);
-			break;
-		}
+		if (pp)
+			return pp;
 	}
 
-	if (!desc)
+	return NULL;
+}
+
+/* Linux compatibility helper: Get a GPIO descriptor from device tree */
+struct gpio_desc *dev_gpiod_get_index(struct device *dev,
+			struct device_node *np,
+			const char *con_id, int index,
+			enum gpiod_flags flags,
+			const char *label)
+{
+	struct gpio_desc *desc = NULL;
+	enum of_gpio_flags of_flags;
+	struct property *pp;
+	char *buf = NULL;
+	int gpio;
+	int ret;
+
+	if (!np)
+		return ERR_PTR(-ENODEV);
+
+	pp = of_find_gpio_property(np, con_id);
+	if (!pp)
+		return ERR_PTR(-ENOENT);
+
+	gpio = of_get_named_gpio_flags(dev->device_node, pp->name,
+				       index, &of_flags);
+	if (!gpio_is_valid(gpio))
 		return ERR_PTR(gpio < 0 ? gpio : -EINVAL);
 
+	desc = gpio_to_desc(gpio);
+
 	if (of_flags & OF_GPIO_ACTIVE_LOW)
 		flags |= GPIOF_ACTIVE_LOW;
 
 	buf = NULL;
 
 	if (!label) {
-		if (_con_id)
-			label = buf = basprintf("%s-%s", dev_name(dev), _con_id);
+		if (con_id)
+			label = buf = basprintf("%s-%s", dev_name(dev), con_id);
 		else
 			label = dev_name(dev);
 	}
-- 
2.39.2



