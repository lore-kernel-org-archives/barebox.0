Delivery-date: Mon, 31 Mar 2025 10:11:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzAEn-006UMo-2n
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 10:11:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzAEn-0002in-8B
	for lore@pengutronix.de; Mon, 31 Mar 2025 10:11:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jnqpm2lebv+B44CAz+EBKYN88sMR31+6ze2+JCXZmqU=; b=VWHhzBXtriLVXqG4AU3hVrvn9J
	Q7E2QRdn08HkXD34Ww2L8X6xzVsp+Dy/o2+8ku+CKOTqLfC5yznScMsBJoKjmMq8gVpWrIEpLdnA0
	/qtAQMhQQEe8iHTmbAxbJMlCTPxPMHWH+pGLFYpKqDUNVXBOr2w15rQXnNc2WvtJueP0Oo/Tz0RRB
	rRGlW0fpoWfZjFk201KHtc/9j/Uxm53zNufJlzY0l7TyY0NNCZhmObftupKqiBfseyyV/tKzOYdad
	8tC9k19DkI4qH0v4T0nyoIM4/dgrmQAVamZrBiIK8/7upB+yEGPOuHm08TBRbJ5a1uPvlYnv0KM0S
	vM1bjuRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzAEA-0000000HJMC-0zIx;
	Mon, 31 Mar 2025 08:10:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzAE7-0000000HJLs-3I3j
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 08:10:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tzAE6-0002bU-Fx; Mon, 31 Mar 2025 10:10:34 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tzAE6-002Yhl-0t;
	Mon, 31 Mar 2025 10:10:34 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tzAE6-009BUH-0a;
	Mon, 31 Mar 2025 10:10:34 +0200
Date: Mon, 31 Mar 2025 10:10:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org
Message-ID: <Z-pN-jyaGJ50sGqg@pengutronix.de>
References: <20250327100635.656657-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250327100635.656657-1-robin@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_011035_828732_0757FDCC 
X-CRM114-Status: GOOD (  22.73  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: boards: protonic-imx6: prtvt7: Don't use fixed
 numbers for dynamic GPIOs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Mar 27, 2025 at 11:06:34AM +0100, Robin van der Gracht wrote:
> The GPIO indexing differs from the pin indexing.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  arch/arm/boards/protonic-imx6/board.c | 32 +++++++++++++++++++++------
>  1 file changed, 25 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> index 9e62dc1544..4585ca4730 100644
> --- a/arch/arm/boards/protonic-imx6/board.c
> +++ b/arch/arm/boards/protonic-imx6/board.c
> @@ -21,6 +21,7 @@
>  #include <net.h>
>  #include <of_device.h>
>  #include <linux/regmap.h>
> +#include <of_gpio.h>
>  #include <sys/mount.h>
>  #include <sys/stat.h>
>  #include <unistd.h>
> @@ -740,17 +741,34 @@ static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv *priv)
>  	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_WITH_YACO);
>  }
>  
> -#define GPIO_KEY_F6     (0xe0 + 5)
> -#define GPIO_KEY_CYCLE  (0xe0 + 2)
> -
>  static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
>  {
> -	/* This function relies heavely on the gpio-pca9539 driver */
> +	int gpio_cycle, gpio_f6;
> +	struct device_node *keys, *key;
> +
> +	keys = of_find_compatible_node(NULL, NULL, "gpio-keys");
> +	if (!keys) {
> +		dev_err(priv->dev, "Can't find gpio-keys of node!\n");
> +		return -ENODEV;
> +	}
>  
> -	gpio_direction_input(GPIO_KEY_F6);
> -	gpio_direction_input(GPIO_KEY_CYCLE);
> +	key = of_find_node_by_name(keys, "key-cycle");
> +	gpio_cycle = of_get_named_gpio_flags(key, "gpios", 0, NULL);
> +	if (gpio_cycle < 0) {
> +		dev_err(priv->dev, "Unable to get cycle key gpio\n");
> +		return gpio_cycle;
> +	}
> +	gpio_request_one(gpio_cycle, GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "Cycle");
> +
> +	key = of_find_node_by_name(keys, "key-f6");
> +	gpio_f6 = of_get_named_gpio_flags(key, "gpios", 0, NULL);
> +	if (gpio_f6 < 0) {
> +		dev_err(priv->dev, "Unable to get F6 key gpio\n");
> +		return gpio_f6;
> +	}
> +	gpio_request_one(gpio_f6, GPIOF_DIR_IN | GPIOF_ACTIVE_LOW, "F6");
>  
> -	if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
> +	if (!(gpio_is_active(gpio_cycle) && gpio_is_active(gpio_f6)))
>  		priv->no_usb_check = 1;

Given that you parse the gpio-keys node here, have you thought about
using the gpio-keys driver directly instead?

input_register_notfier() should give you the necessary events when KEY_CYCLEWINDOWS
and KEY_F6 are pressed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


