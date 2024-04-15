Delivery-date: Mon, 15 Apr 2024 07:29:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEuB-001Z69-08
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:29:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEuA-0008JL-GT
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:29:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hVwAsPsEM9OrLHrK/Pd4umJs9klHAts4+aA2RZuFxbQ=; b=YIGWqQj2L7Vw4lAyLwaA/r0a3B
	Llzefsv7FPxIBscuUwbvusnodzTh/38Z/SuSh/VzWIuE88ynRlqxFur8XsqzFhac39zjvYa40KP9k
	0rpeeZ6+GsO/uXt/BGbWmXAYyXCKnUQVe12bNegkrp2EKHc7T2sMkcwtT8fLIug9N1e7E1wXo8E6o
	hWZaGFS7YVnE8bjV9Uxesw/rjSmVLdOMuPz8JCkv7O/d7Onty8nr7jmN4zcMzQ5Zf/+1FoqIlqYYB
	KYHmp6IGW7KZN7yr+otF9ZpwliEDE3gJND4phaJP/fEiBdeyyIIen6Mh3Mdhvo8oSgdSX/b1AB6mQ
	BMKfiwuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEtk-000000070Px-3ebm;
	Mon, 15 Apr 2024 05:28:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEth-000000070Oi-34Px
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:28:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEtg-0007mJ-HP; Mon, 15 Apr 2024 07:28:52 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEtg-00CMjT-5C; Mon, 15 Apr 2024 07:28:52 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEtg-001XRx-0F;
	Mon, 15 Apr 2024 07:28:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:28:50 +0200
Message-Id: <20240415052850.366859-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_222854_002727_6DF9D037 
X-CRM114-Status: GOOD (  10.15  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] gpiolib: implement gpiod_slice_acquired
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by poller code that makes use of GPIO descriptors instead of the
unstable indices, add a gpiod variant of the existing
gpiod_slice_acquird.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c        | 11 ++++++++---
 include/linux/gpio/consumer.h |  2 ++
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 5bc261a0105c..a70e13eafca2 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -172,16 +172,21 @@ int gpio_request(unsigned gpio, const char *label)
 	return gpiodesc_request(desc, label);
 }
 
-bool gpio_slice_acquired(unsigned gpio)
+bool gpiod_slice_acquired(struct gpio_desc *desc)
 {
-	struct gpio_desc *desc = gpio_to_desc(gpio);
-
 	if (!desc)
 		return false;
 
 	return slice_acquired(&desc->chip->slice);
 }
 
+bool gpio_slice_acquired(unsigned gpio)
+{
+	struct gpio_desc *desc = gpio_to_desc(gpio);
+
+	return gpiod_slice_acquired(desc);
+}
+
 static void gpiodesc_free(struct gpio_desc *desc)
 {
 	if (!desc->requested)
diff --git a/include/linux/gpio/consumer.h b/include/linux/gpio/consumer.h
index 531ed1472546..e04f516b3155 100644
--- a/include/linux/gpio/consumer.h
+++ b/include/linux/gpio/consumer.h
@@ -45,6 +45,8 @@ struct gpio_descs {
 	DECLARE_FLEX_ARRAY(struct gpio_desc *, desc);
 };
 
+bool gpiod_slice_acquired(struct gpio_desc *);
+
 #if defined(CONFIG_OFDEVICE) && defined(CONFIG_GPIOLIB)
 
 /* returned gpio descriptor can be passed to any normal gpio_* function */
-- 
2.39.2



