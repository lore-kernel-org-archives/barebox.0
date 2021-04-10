Delivery-date: Sat, 10 Apr 2021 12:36:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVAyx-0000xu-PV
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 12:36:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVAyw-0007SF-IU
	for lore@pengutronix.de; Sat, 10 Apr 2021 12:36:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AWMhZmtCP+psKH8LnwAS/bQ5dEwh5860L+dQahrxV9o=; b=Y9x5aphrT7AHMVDHfd0Yf2hku
	DW1KGZKcoegbwAdhlFKiTA8lW33MlMgH+PkyhwWboCd68vimZv4OlVE3X1D1BXQXz2e/ZctRUagV+
	vtuv0evsWi/of+JNbfIJSPmLPOhCt1XaM7J+ge9rmnqgSke80eguRyS6CrykT7Fl/OpzZ4du5DTvZ
	2nPU3lt+VT233PjH8l7HUi6txArUHej5zcwjQ3uFFMm3L9T6DIHS69NJ+9KipIQMlQtigG6oym4Q2
	t4NlMu9/W6+N41lY6L+nIsCZumFrBATJ5T9elTlq70YX/DnpSbsetLjURzrPrBIP+sFcdljDHYs94
	0JxXDtu/Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVAxn-002fKu-Qq; Sat, 10 Apr 2021 10:35:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVAxa-002fK5-5Q
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 10:35:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=NY/dSF++X80rutai2nOmfyQoitZrmVe0qK2x4JPcbkk=; b=gaJp8FHSOxf/bF8Cm9KbVdlVnT
 lccOh7l7IUxoAwYpMPoTJmWh3Gzi2afN/7Qsg5z3f6RcYdpgDsTE7bVyXL8WFOA4tBqQLADCOawGn
 eh0t45xjSvhaBI2VbiWsMsx0isSJj1sebXjd6bquHWfZjENi7EJCiVKsP1rzrA9rbGiIx6lu0x3pt
 Co+pZnQpn3VPTf31PSidcB1DgSe3Fcbjgdb2lJyJFvUX4JX76fblBySNg0kcKjcETMIfj+U9+9Lp6
 wheKRnUDjsdanUDixGEE3mfIvTMhUJD5NS7NlpMfrKl4Jg378PvGjJxfxBE98pHdO61d6vd96D91s
 zLyfJuSQ==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVAxW-0052M3-Ii
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 10:35:25 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id DD9154000B;
 Sat, 10 Apr 2021 10:35:15 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 12:35:08 +0200
Message-Id: <20210410103511.2073504-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210410103511.2073504-1-ahmad@a3f.at>
References: <20210410103511.2073504-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_033522_768824_9C4FD289 
X-CRM114-Status: GOOD (  10.76  )
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
Subject: [PATCH 2/5] sound: gpio-beeper: simplify using new gpiod_get helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

the new gpid_get helper allows us to remove the manual
active state setting. Make use of this.

This also fixes an issue where the initial state of the beeper
was on, not off.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/sound/gpio-beeper.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/sound/gpio-beeper.c b/drivers/sound/gpio-beeper.c
index 86fd4a4ee67c..300998d6079b 100644
--- a/drivers/sound/gpio-beeper.c
+++ b/drivers/sound/gpio-beeper.c
@@ -7,8 +7,7 @@
 #include <regulator.h>
 #include <sound.h>
 #include <of.h>
-#include <gpio.h>
-#include <of_gpio.h>
+#include <gpiod.h>
 
 struct gpio_beeper {
 	int gpio;
@@ -28,21 +27,12 @@ static int gpio_beeper_probe(struct device_d *dev)
 	struct device_node *np = dev->device_node;
 	struct gpio_beeper *beeper;
 	struct sound_card *card;
-	enum of_gpio_flags of_flags;
-	unsigned long gpio_flags = GPIOF_OUT_INIT_ACTIVE;
-	int ret, gpio;
+	int gpio;
 
-	gpio = of_get_named_gpio_flags(np, "gpios", 0, &of_flags);
-	if (!gpio_is_valid(gpio))
+	gpio = gpiod_get(dev, NULL, GPIOD_OUT_LOW);
+	if (gpio < 0) {
+		dev_err(dev, "failed to request gpio: %pe\n", ERR_PTR(gpio));
 		return gpio;
-
-	if (of_flags & OF_GPIO_ACTIVE_LOW)
-		gpio_flags |= GPIOF_ACTIVE_LOW;
-
-	ret = gpio_request_one(gpio, gpio_flags, "gpio-beeper");
-	if (ret) {
-		dev_err(dev, "failed to request gpio %d: %d\n", gpio, ret);
-		return ret;
 	}
 
 	beeper = xzalloc(sizeof(*beeper));
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

