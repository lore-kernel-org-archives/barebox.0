Delivery-date: Sat, 10 Apr 2021 12:52:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBE3-00012K-Ld
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:52:27 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBE2-0000gh-SC
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:52:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uXI+uNj6BdYXwpDsmTOhxQoXexxlF5vrg87Du4SdbtE=; b=ZP9gPZqgUIv4S0SF4NEzvGEKlI
	z9DytmcUMXS6ZACX5U7cJwZ+bjH+YG9PJ2FAc/k9Xy9CBS+/fljmdWsN4y9qNP1x+G7/shy8OCB2O
	BaBsppLdNZ4HXgu6xp1ph3q/32nil1RQ7Vg9LrZk0KJby5ADNoCK4aLcWIXfl8vRkmvU/lg2HC3MV
	OVRaRxTV8uq7puzWWWGnkMls2MoSplvhks8lKZj+B2sMfvJXgRPV4RntalnMEcfx/82KrgTbp9eRf
	WGhrLm6a9PdtstRPyaHmO9mSd+4KfBilA4H6kqe23IYU6Lcj3eZ5Epz9QuHDwpX8wbq+NDwyXHOUO
	+jtjcS5g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVBD6-002h2C-9C; Sat, 10 Apr 2021 10:51:28 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBCx-002h23-TS
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:51:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=AmuKPQhARnwn/QS74PB71zxJLU6paZrtxT6wD4ZxH3o=; b=gp1ia0KuXAiadBnzdBmjozOAJC
 5MAzbd0DM/7OG4Km0JjP/1WI626rgdyXqUjyg4TNaeJhvMI0H/4HpI00bdrZ9lQDJmwugiEQ0eCbP
 1SXcwH21G4wv9o85+w9xaVJc3Mm7az4F21+x/8+63UbCKhWfGi3Y1UqTEpgZrhhTozTRfKsS7Lhfy
 aOUogozFF36O05LuA41TH87Q6PkO7e92BnLOIVUnoWx/omiVJINYgcXVlFp8mcDDsDbpcWf5YKK0S
 pYPsfp/wfueUBuq2+c5kO2qfNBuDGahhgNjSd/qsBcZ5JRlM6TmX68LJN4INviJJsSvYEkQwDZ0IH
 5rhwFm9g==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBCv-0052p7-80
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:51:18 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 2C3A01C0003;
 Sat, 10 Apr 2021 10:51:13 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 12:51:10 +0200
Message-Id: <20210410105110.2080785-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_035117_441874_CD93FC14 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] gpio: pl061: implement gpio_ops::get_direction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This makes gpioinfo on board that incorporate it more useful.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/gpio/gpio-pl061.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpio/gpio-pl061.c b/drivers/gpio/gpio-pl061.c
index b9a8846dedaa..8dd9ca3bd5cd 100644
--- a/drivers/gpio/gpio-pl061.c
+++ b/drivers/gpio/gpio-pl061.c
@@ -84,7 +84,18 @@ static void pl061_set_value(struct gpio_chip *gc, unsigned offset, int value)
 	writeb(!!value << offset, chip->base + (1 << (offset + 2)));
 }
 
+static int pl061_get_direction(struct gpio_chip *gc, unsigned offset)
+{
+	struct pl061_gpio *chip = container_of(gc, struct pl061_gpio, gc);
+
+	if (readb(chip->base + GPIODIR) & (1 << offset))
+		return GPIOF_DIR_OUT;
+
+	return GPIOF_DIR_IN;
+}
+
 static struct gpio_ops pl061_gpio_ops = {
+	.get_direction = pl061_get_direction,
 	.direction_input = pl061_direction_input,
 	.direction_output = pl061_direction_output,
 	.get = pl061_get_value,
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

