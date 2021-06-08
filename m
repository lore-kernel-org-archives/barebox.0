Delivery-date: Tue, 08 Jun 2021 11:38:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqYBq-0003jO-P9
	for lore@lore.pengutronix.de; Tue, 08 Jun 2021 11:38:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqYBm-0000eA-9T
	for lore@pengutronix.de; Tue, 08 Jun 2021 11:38:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3muo4VedFBeF+ms6vPzKmIz2tGZKqvsYYRl97E0bGI=; b=QcDQmXMEPaiHeN
	PQY79zN3FcM+yOnLrOW96ZoXH4Hmhp/HxwF9zt93tHh0jyNjwI/yGulo3NG8dkx2Q+8SdKZcOBoAq
	jA1lfyxXwJlQ89hxw5TrIpSzRhsqosHCZHOP+6290kpLMsExRP/OQ8RH3yB3CPp1mjTu7baEXNT8N
	RNq2Krn6SMpKJ+iCFAOwTbNDUnLUDI2KpTXTLp2aRAXDXhYjgoUc8Cd3ccpehHNAqUNeumcZ92tcH
	ibD4d7Nr9ovSsDl8o6GVqh7KjVMV34Wu0CCNz+Pns4GrEuC9q9gWK57EiZY6WzTbBmXa8GzLMs6Xo
	rRLTy16wC3meHiioT2TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqYA8-007SC4-5I; Tue, 08 Jun 2021 09:36:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqYA2-007SAU-Tm
 for barebox@lists.infradead.org; Tue, 08 Jun 2021 09:36:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqYA1-0000Qa-5t; Tue, 08 Jun 2021 11:36:37 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqYA0-0004kt-SR; Tue, 08 Jun 2021 11:36:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Jun 2021 11:36:32 +0200
Message-Id: <20210608093635.5749-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210608093635.5749-1-s.hauer@pengutronix.de>
References: <20210608093635.5749-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_023639_015488_69B4F504 
X-CRM114-Status: GOOD (  14.77  )
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
Subject: [PATCH 1/4] gpio: allow -gpio suffix for gpio property names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

GPIO properties in the device tree can have a -gpios suffix or a -gpio
suffix. The latter was not handled, this patch changes that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 30 +++++++++++++++++++++---------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 7b7261d01f..387b410f12 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -555,27 +555,39 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 	return 0;
 }
 
+static const char *gpio_suffixes[] = {
+	"gpios",
+	"gpio",
+};
+
 /* Linux compatibility helper: Get a GPIO descriptor from device tree */
 int gpiod_get(struct device_d *dev, const char *_con_id, enum gpiod_flags flags)
 {
 	struct device_node *np = dev->device_node;
 	enum of_gpio_flags of_flags;
-	const char *con_id = "gpios", *label = dev_name(dev);
-	char *buf = NULL;
+	const char *label = dev_name(dev);
+	char *buf = NULL, *con_id;
 	int gpio;
-	int ret;
+	int ret, i;
 
 	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
 		return -ENODEV;
 
-	if (_con_id) {
-		con_id = buf = basprintf("%s-gpios", _con_id);
-		if (!buf)
+	for (i = 0; i < ARRAY_SIZE(gpio_suffixes); i++) {
+		if (_con_id)
+			con_id = basprintf("%s-%s", _con_id, gpio_suffixes[i]);
+		else
+			con_id = basprintf("%s", gpio_suffixes[i]);
+
+		if (!con_id)
 			return -ENOMEM;
-	}
 
-	gpio = of_get_named_gpio_flags(np, con_id, 0, &of_flags);
-	free(buf);
+		gpio = of_get_named_gpio_flags(np, con_id, 0, &of_flags);
+		free(con_id);
+
+		if (gpio_is_valid(gpio))
+			break;
+	}
 
 	if (!gpio_is_valid(gpio))
 		return gpio < 0 ? gpio : -EINVAL;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

