Delivery-date: Sat, 10 Apr 2021 12:36:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVAyy-0000y5-19
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:36:52 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVAyw-0007SC-FL
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:36:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dMmhQjPMC/qsqXI8qwolyiw/eUdn4sqptUdHW8U0p+o=; b=CYlA8MBNqK1VJdLrjeuXrc89Sd
	vke5ZgBqrPZp5Dco0oGgL+EB+3pRwhjCoINFQHlBqfcOMRvcXrPgH2OfEuTnJtGjB6YvXLrBroNAB
	x+GEJZAXlE52jJMKiwCDIwYSB/erTR6gd0D9QNJxXx7jlQFPGY0q8mQEzmK+KrT0NBIt31cysjfiR
	uDeNT0unaYUWu7mXuahnVIh/tgHF1izOoMODkgsHGIMYIWUVJo7wOqsJmaWIcA5hXtMt+G1y3Kxvm
	1ogjCkUptOAm4AWvkmpEPzn6WzDgM53nvHmGKbjDo1s647m1DoSqVpR2VCbWSzQYykq73cM+DVQbB
	T34eYA/g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVAxf-002fKK-HR; Sat, 10 Apr 2021 10:35:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVAxZ-002fJz-4y
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:35:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=XXDGsKe42qNkNTvBwIqnOevH/zbLrF6rBQf65AuK51s=; b=PiAh52izUphpeG6CHTxrlP/+Ci
 6ur3RYRAPn5F1Ndxix6u/z0SeKMavbgrlYEdWLJ6nJC6fNm6Vh7x9IlBNV05wnQLHIWenkuJBvoDI
 GiK0UtlfVRykZuZBF0y9l2tMESlu3iKdEA+fSdMe9aJ9pddPVFLCcJOd8ftmup8e8VnHK6dVNE9n8
 mU9YGAPiii2KrN+4RrWziKwawrZ1IgWE/HkeF+Vs24FlaQDGeZH0muHnoVEiJk4b9o7Wj+bA+XX+H
 62S1CWReXyd24nnEHfE/3KMPKMrn4lod1zdQQ94hVvbDSJHnqgXl5u5h4HqoAVlcVfG3UjA09tN/Y
 iiHAhy5Q==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVAxW-0052M2-1o
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:35:23 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 3315840003;
 Sat, 10 Apr 2021 10:35:14 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 12:35:07 +0200
Message-Id: <20210410103511.2073504-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_033522_269635_0B966C5F 
X-CRM114-Status: GOOD (  15.47  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] gpiolib: add Linux-like gpiod_get() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Many Linux drivers use [devm_]gpiod_get to get appropriately configured
GPIO descriptors out with little code. Make porting such Linux code
easier by providing a semi-compatible gpiod_get function. Main
differences:

 - It returns a gpio index, so it can be passed to any gpio_ function
 - It's device-tree only, so it should only be used from drivers
   that themselves probe from device tree.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/gpio/gpiolib.c | 43 ++++++++++++++++++++++++++++++++++++++++++
 include/gpiod.h        | 26 +++++++++++++++++++++++++
 2 files changed, 69 insertions(+)
 create mode 100644 include/gpiod.h

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 6088cadd8a18..7b7261d01f24 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -6,6 +6,7 @@
 #include <complete.h>
 #include <gpio.h>
 #include <of_gpio.h>
+#include <gpiod.h>
 #include <errno.h>
 #include <malloc.h>
 
@@ -554,6 +555,48 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 	return 0;
 }
 
+/* Linux compatibility helper: Get a GPIO descriptor from device tree */
+int gpiod_get(struct device_d *dev, const char *_con_id, enum gpiod_flags flags)
+{
+	struct device_node *np = dev->device_node;
+	enum of_gpio_flags of_flags;
+	const char *con_id = "gpios", *label = dev_name(dev);
+	char *buf = NULL;
+	int gpio;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !dev->device_node)
+		return -ENODEV;
+
+	if (_con_id) {
+		con_id = buf = basprintf("%s-gpios", _con_id);
+		if (!buf)
+			return -ENOMEM;
+	}
+
+	gpio = of_get_named_gpio_flags(np, con_id, 0, &of_flags);
+	free(buf);
+
+	if (!gpio_is_valid(gpio))
+		return gpio < 0 ? gpio : -EINVAL;
+
+	if (of_flags & OF_GPIO_ACTIVE_LOW)
+		flags |= GPIOF_ACTIVE_LOW;
+
+	buf = NULL;
+
+	if (_con_id) {
+		label = buf = basprintf("%s-%s", dev_name(dev), _con_id);
+		if (!label)
+			return -ENOMEM;
+	}
+
+	ret = gpio_request_one(gpio, flags, label);
+	free(buf);
+
+	return ret ?: gpio;
+}
+
 int gpiochip_add(struct gpio_chip *chip)
 {
 	int base, i;
diff --git a/include/gpiod.h b/include/gpiod.h
new file mode 100644
index 000000000000..c8b2cd47a3cb
--- /dev/null
+++ b/include/gpiod.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __GPIOD_H_
+#define __GPIOD_H_
+
+#include <gpio.h>
+#include <of_gpio.h>
+
+/**
+ * Optional flags that can be passed to one of gpiod_* to configure direction
+ * and output value. These values cannot be OR'd.
+ */
+enum gpiod_flags {
+	GPIOD_ASIS	= 0,
+	GPIOD_IN	= GPIOF_IN,
+	/*
+	 * To change this later to a different logic level (i.e. taking
+	 * active low into account), use gpio_direction_active()
+	 */
+	GPIOD_OUT_LOW	= GPIOF_OUT_INIT_INACTIVE,
+	GPIOD_OUT_HIGH	= GPIOF_OUT_INIT_ACTIVE,
+};
+
+/* returned gpio descriptor can be passed to any normal gpio_* function */
+int gpiod_get(struct device_d *dev, const char *_con_id, enum gpiod_flags flags);
+
+#endif
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

