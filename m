Delivery-date: Tue, 01 Apr 2025 07:59:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzUeo-006sBZ-29
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 07:59:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzUeo-0004U3-3P
	for lore@pengutronix.de; Tue, 01 Apr 2025 07:59:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bKfeGVfnhhwUqjIHugJY/nm9yi6rpCTtI3VOVFCPmY4=; b=NCa85qsGrK5xq+W6Rt54/7PJbk
	+FodHB87SOOkrY4+Kv9HatEGHZLexX9ilEmt4oVxL6Orvxf73G/uyvCBj3r7g2bXfhFePMKwQVZOS
	oX37mB5/mULHuVQZqPxaTu+WwO9KI1ZIxUBpO3bJr5MLjkgLxvrMftjzS3yZbtxtYfmKzbY+loDKQ
	8d3zBrbdsOQJOhuJC3AxKv1nJdBdweePdsQhQucrSpAk8lvi8AKgRXrmeOihCKfm2257iMw5Jvd90
	cUSsu4wR51M0Z4/9kVnNh51dNGXsx31WEVnXr0r+1KQlMOLQEQPCO/I2J9zRilYg+qidzb/pUqtP0
	Cf9Ily+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUeN-0000000227Z-3c1e;
	Tue, 01 Apr 2025 05:59:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzUde-0000000226C-17Tn
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 05:58:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tzUdc-0004Jk-Vv; Tue, 01 Apr 2025 07:58:17 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tzUdc-002iK8-2W;
	Tue, 01 Apr 2025 07:58:16 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tzUdc-00B1M2-2D;
	Tue, 01 Apr 2025 07:58:16 +0200
Date: Tue, 1 Apr 2025 07:58:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org
Message-ID: <Z-uAeJBk49WRASr9@pengutronix.de>
References: <20250331150528.3270385-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250331150528.3270385-1-robin@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_225818_306896_9AB8BA41 
X-CRM114-Status: GOOD (  19.98  )
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
Subject: Re: [PATCH] ARM: boards: protonic-imx6: prtvt7: Use the input system
 for key detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 31, 2025 at 05:05:28PM +0200, Robin van der Gracht wrote:
> Static gpio mapping is deprecated. Instead query the gpio-keys driver for
> pressed keys.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  arch/arm/boards/protonic-imx6/board.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> index 9292052d30..4bfae3d608 100644
> --- a/arch/arm/boards/protonic-imx6/board.c
> +++ b/arch/arm/boards/protonic-imx6/board.c
> @@ -13,6 +13,7 @@
>  #include <globalvar.h>
>  #include <gpio.h>
>  #include <i2c/i2c.h>
> +#include <input/input.h>
>  #include <mach/imx/bbu.h>
>  #include <mach/imx/imx6.h>
>  #include <mach/imx/ocotp-fusemap.h>
> @@ -740,19 +741,21 @@ static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv *priv)
>  	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_WITH_YACO);
>  }
>  
> -#define GPIO_KEY_F6     (0xe0 + 5)
> -#define GPIO_KEY_CYCLE  (0xe0 + 2)
> -
>  static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
>  {
> -	/* This function relies heavely on the gpio-pca9539 driver */
> +	unsigned long *keys;
>  
> -	gpio_direction_input(GPIO_KEY_F6);
> -	gpio_direction_input(GPIO_KEY_CYCLE);

I added a

	of_devices_ensure_probed_by_compatible("gpio-keys");

here to be sure you don't depend on probe order.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


