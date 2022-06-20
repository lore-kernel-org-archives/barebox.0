Delivery-date: Mon, 20 Jun 2022 17:44:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3JZi-008CiY-5j
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 17:44:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3JZh-00037v-Ty
	for lore@pengutronix.de; Mon, 20 Jun 2022 17:44:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rY1qxPh+MKu5vCUY0ICCjGAEjFX5N27Z71SUI94oUv0=; b=huaTawigXiRVRK
	ruVqvzPIGjKEk0fiG6AkeeqpR4x8Zm80anHaXhA8HVQPFzuxbsI2osPP0tQgXpZqsV/+u8i3T4ngA
	uxp59ni4jfqbNLfxxuU9VKlKPwkpFbm0Tby36BP1nYbKtp/eJgjF5aZrbwMhzgYT28KjsnzoHvDpm
	XrrT0qnnXo/Zwbs8OYnlktE6+6WIoo1b249KFE58c31fsl1c+7E4yETkdtNfo30JW6xOfAWMJytfc
	Dhca8f63y1IyQD1SozaQX6kZXlW8kHb6w14Acyv222cX5U5O4DsUhfTxkvNFHal5fvwCdQHcLv1qF
	z7wSfZo6T772VYgenA1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3JY8-001Htw-Ix; Mon, 20 Jun 2022 15:42:48 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3JY2-001Hra-6u
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 15:42:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:message-id:references:in-reply-to:
	 reply-to:subject:cc:to:from:date:mime-version:from;
	bh=rY1qxPh+MKu5vCUY0ICCjGAEjFX5N27Z71SUI94oUv0=;
	b=teUqBW9GudX6ojg6Awox4kiUWw4WMhiEe92xIxvdScfCq1QKWYkuCFx3yQB6um0x+Rn+t+wm9yPh8
	 Dz/UIU9+rkNuwvAi14jD4f4idc8UzatFJXO3GR5Z5Ekra+gPG/2wVz98laMxQA0FhQdFaodsjHEAd4
	 4XDTZeiaYsskVR+rRq0RS+vmmUbXAP0mpJU32KM3KFpRY7O4hoMQT5vQNIqMwA6ovLoxORuF2zFglX
	 iKXOC3wRcwUzUKsLnUg13vQc8LdWTj/ezV0e8f0u9q2omZLp8WD4Cz6mgABv9bT/pPBpumfcV9m+4D
	 bfQfl0p+F3fFgAVEkc0zUz/uxvIShQA==
X-MSG-ID: 9ba99a12-f0af-11ec-8a45-0050569d11ae
MIME-Version: 1.0
Date: Mon, 20 Jun 2022 17:42:36 +0200
From: Robin van der Gracht <robin@protonic.nl>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, Sascha Hauer
 <sha@pengutronix.de>, Oleksij Rempel <linux@rempel-privat.de>, Oleksij
 Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org,
 david@protonic.nl
In-Reply-To: <ead464cf-803f-5795-4269-7ff4d15cf9ed@pengutronix.de>
References: <20220616131114.214628-1-robin@protonic.nl>
 <20220616131114.214628-2-robin@protonic.nl>
 <20220616162833.GD28995@pengutronix.de>
 <85d82f53-5290-613f-2214-924dc2135cb6@rempel-privat.de>
 <20220617065757.GC1615@pengutronix.de>
 <20220617084437.fvfwaxaxxediqm3t@pengutronix.de>
 <ead464cf-803f-5795-4269-7ff4d15cf9ed@pengutronix.de>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <dc804930a1d25f7aeefc2ab261ae375a@protonic.nl>
X-Sender: robin@protonic.nl
Organization: Protonic Holland
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_084243_910098_BC1C29C9 
X-CRM114-Status: GOOD (  13.70  )
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
Reply-To: robin@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/9] ARM: boards: protonic-imx6: prtvt7 hardkey inputs are
 active low
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Ahmad,

On 2022-06-20 09:51, Ahmad Fatoum wrote:
> Hello,
> 
> On 17.06.22 10:44, Marco Felsch wrote:
>> On 22-06-17, Sascha Hauer wrote:
>>>> Or, it is active low and your patch is correct :D
>>> 
>>> If they are, can we add a comment or _N suffix to the names?
>> 
>> Does barebox not have gpiod? The board code just should check if it is
>> active or not. Whatever active means in this case.
> 
> There is gpiod_get(), but there's also gpio-keys support. See
> drivers/input/specialkeys.c for an example on how to register an input
> notifier.

I'm interested in two keys pressed at the same time. When I implement a
notifyer like in specialkeys.c I'll have to check if the other key is pressed
at that time as well.

I noticed that the input subsystem is already maintaining a bitmask with keys
pressed. If I tap into that, I can implement it like so:

diff --git a/arch/arm/boards/protonic-imx6/board.c 
b/arch/arm/boards/protonic-imx6/board.c
index 8436903fd8..1e1a22ae8e 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -8,11 +8,13 @@
  #include <bootm.h>
  #include <common.h>
  #include <deep-probe.h>
+#include <dt-bindings/input/linux-event-codes.h>
  #include <environment.h>
  #include <fcntl.h>
  #include <globalvar.h>
  #include <gpio.h>
  #include <i2c/i2c.h>
+#include <input/input.h>
  #include <mach/bbu.h>
  #include <mach/imx6.h>
  #include <mach/ocotp-fusemap.h>
@@ -742,17 +744,13 @@ static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv 
*priv)
         return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_WITH_YACO);
  }

-#define GPIO_KEY_F6     (0xe0 + 5)
-#define GPIO_KEY_CYCLE  (0xe0 + 2)
-
  static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
  {
-       /* This function relies heavely on the gpio-pca9539 driver */
+       unsigned long keys[BITS_TO_LONGS(KEY_CYCLEWINDOWS)];

-       gpio_direction_input(GPIO_KEY_F6);
-       gpio_direction_input(GPIO_KEY_CYCLE);
+       input_key_get_status(keys, KEY_CYCLEWINDOWS);

-       if (gpio_get_value(GPIO_KEY_CYCLE) || gpio_get_value(GPIO_KEY_F6))
+       if (!(test_bit(KEY_CYCLEWINDOWS, keys) && test_bit(KEY_F6, keys)))
                 priv->no_usb_check = 1;

         return 0;


- Robin


