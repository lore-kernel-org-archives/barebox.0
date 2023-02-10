Delivery-date: Fri, 10 Feb 2023 10:51:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQQ47-002oaj-Ju
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 10:51:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQQ45-0006w7-0h
	for lore@pengutronix.de; Fri, 10 Feb 2023 10:51:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gghZ4tGC4ayqbzfTU7J4TH1i6zwsTysCCDh0YdZRp/o=; b=KgtgZEaE8ir7PPsCLWQXegGyIq
	O2k7Q33VByD2hwpZsTk5dWueHiFNglmGZFVcgPivRmB8WnJT2SLF4tFnd7lg7qIi0QSUefAyR929Q
	y2ofbYMhNcrC56llwiCrQbmBUKyckH9cRcjJrRAcY+Pt7IGbSw+VqC/42rRP6mX7AXmX5G6Iy4qDy
	pyHwCpxsLxTrpGZCDvsIhWUH8RBFr11WPZyhkDUL05hcPdiGCXaDVT1NsyBsNyfGOehsNUwtyJx8I
	CvhZo5bDyVFlk03Nffed7rY8JgoxNVPThE3aVfzhAsRlVzSKmT67uQUwW3wkVRSF9sWTdWDLYMFia
	bHaMQQ2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQQ2t-0059Xx-T6; Fri, 10 Feb 2023 09:50:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQQ2o-0059Wf-Am
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 09:50:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQQ2m-0006dt-UG; Fri, 10 Feb 2023 10:50:12 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQQ2l-0003qO-Gv; Fri, 10 Feb 2023 10:50:11 +0100
Date: Fri, 10 Feb 2023 10:50:11 +0100
To: Kilian Strasser <kilian.strasser@wolfvision.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230210095011.GU10447@pengutronix.de>
References: <20230209095640.47469-1-kilian.strasser@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230209095640.47469-1-kilian.strasser@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_015014_402568_9512AC91 
X-CRM114-Status: GOOD (  23.65  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pinctrl: rockchip: fix get_value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 09, 2023 at 10:56:40AM +0100, Kilian Strasser wrote:
> Function gpioinfo returns wrong gpio values.
> In the file pinctrl.rockchip.c a wrong register offset is used by the
> function rockchip_gpiov2_get_value. Also the bit-mask for this register
> is wrong. Change register offset for this function to GPIO_EXT_PORT and
> set the bit-mask correctly.
> 
> Signed-off-by: Kilian Strasser <kilian.strasser@wolfvision.net>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index c99074407f..66d700d324 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -226,6 +226,7 @@ enum {
>  	RK_GPIOV2_DR_H	= 0x04,
>  	RK_GPIOV2_DDR_L	= 0x08,
>  	RK_GPIOV2_DDR_H	= 0x0c,
> +	RK_GPIOV2_EXT_PORT = 0x70,
>  };
>  
>  static struct rockchip_pin_bank *gc_to_rockchip_pinctrl(struct gpio_chip *gc)
> @@ -306,12 +307,8 @@ static int rockchip_gpiov2_get_value(struct gpio_chip *gc, unsigned int gpio)
>  	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
>  	u32 mask, r;
>  
> -	mask = 1 << (gpio % 16);
> -
> -	if (gpio < 16)
> -		r = readl(bank->reg_base + RK_GPIOV2_DR_L);
> -	else
> -		r = readl(bank->reg_base + RK_GPIOV2_DR_L);
> +	mask = 1 << (gpio % 32);
> +	r = readl(bank->reg_base + RK_GPIOV2_EXT_PORT);
>  
>  	return r & mask ? 1 : 0;
>  }
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


