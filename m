Delivery-date: Mon, 07 Jun 2021 18:00:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqHgA-0001o7-Gj
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 18:00:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqHg6-0001gM-HA
	for lore@pengutronix.de; Mon, 07 Jun 2021 18:00:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZfvpT8csRLDfKOFpo4pZgOygluJ71dqiiTIgqZqSwS4=; b=sPswifA4r3TEkXqG6vo915hNV2
	sYu47kt8J8mOiQD/TZpE+B9jMnthufoq977dD3o80FZHQ8S6fXjbvmUJRUDbQN8z2Z0DIRX8nc0H9
	ltNpXxFpMjhc0moHJD/EbS2VzGzAgtVaD56g8BY9KC66vh/PtFsql4Xja8PS9GK8N9/WpIsaHeawW
	nD8PISG0oK10nx+T4izXn6ueMmZJaSs1CVv3Nxz8fwvkeTW9ll3qcOziiTjBSfMiV0l2nYbHt43Un
	VI/qg/HvgEvTLtBeKyF0SzDuSJ7shLUVUWAYAkvfApUU6g08cB2jHWf5y9oriBCc8vDbLE6FcZah3
	8FMVCjSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqHef-004Lm8-D0; Mon, 07 Jun 2021 15:59:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqHea-004Lle-9D
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 15:59:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lqHeY-0001S3-OR; Mon, 07 Jun 2021 17:59:02 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210607141057.23255-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <e787566e-33cc-0b9e-73e3-74ab23812646@pengutronix.de>
Date: Mon, 7 Jun 2021 17:59:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210607141057.23255-1-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_085904_359562_40C8B38A 
X-CRM114-Status: GOOD (  26.14  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] net: designware: eqos: reset phy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 07.06.21 16:10, Sascha Hauer wrote:
> The designware eqos DT binding has support for specifying reset GPIOs.
> Add support for them.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/designware_eqos.c | 33 +++++++++++++++++++++++++++++++++
>  drivers/of/of_gpio.c          |  7 +++++++
>  2 files changed, 40 insertions(+)
> 
> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> index d2baaeaf63..0321024169 100644
> --- a/drivers/net/designware_eqos.c
> +++ b/drivers/net/designware_eqos.c
> @@ -8,9 +8,11 @@
>  
>  #include <common.h>
>  #include <init.h>
> +#include <gpio.h>
>  #include <dma.h>
>  #include <net.h>
>  #include <of_net.h>
> +#include <of_gpio.h>
>  #include <linux/iopoll.h>
>  #include <linux/time.h>
>  #include <linux/sizes.h>
> @@ -189,6 +191,33 @@ struct eqos_desc {
>  
>  #define MII_BUSY		(1 << 0)
>  
> +static int eqos_phy_reset(struct device_d *dev, struct eqos *eqos)
> +{
> +	int phy_reset;
> +	int ret;
> +	u32 delays[3] = { 0, 0, 0 };
> +
> +	phy_reset = of_get_named_gpio(dev->device_node, "snps,reset-gpio", 0);
> +
> +        if (!gpio_is_valid(phy_reset))
> +		return 0;

Whitespace is wrong.

> +
> +	ret = gpio_request(phy_reset, "phy-reset");
> +	if (ret)
> +		return ret;

Can you use gpiod_get instead? This would reduce the boilerplate here.

> +
> +	of_property_read_u32_array(dev->device_node,
> +				   "snps,reset-delays-us",
> +				   delays, ARRAY_SIZE(delays));
> +

Looks strange to read out a delay and not act on it. I'd prefer
waiting delays[0] here.

> +	gpio_direction_active(phy_reset, 0);

This always sets logical zero, because gpio_request above doesn't
accept a flag telling it otherwise. You'll need of_get_named_gpio_flags
here, at which point, you'll have basically open-coded gpiod_get(), so
you could use that.

> +	udelay(delays[1]);

Linux rounds up to 1 msec granularity here. We should do likewise.

> +	gpio_set_active(phy_reset, 1);

Nitpick: true/false.

> +	udelay(delays[2]);
> +
> +	return 0;
> +}
> +
>  static int eqos_mdio_wait_idle(struct eqos *eqos)
>  {
>  	u32 idle;
> @@ -843,6 +872,10 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
>  	if (ret)
>  		return ret;
>  
> +	ret = eqos_phy_reset(dev, eqos);
> +	if (ret)
> +		return ret;
> +
>  	ret = mdiobus_register(miibus);
>  	if (ret)
>  		return ret;
> diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
> index 7cbeeaf69e..e1cafdc848 100644
> --- a/drivers/of/of_gpio.c
> +++ b/drivers/of/of_gpio.c
> @@ -35,6 +35,13 @@ static void of_gpio_flags_quirks(struct device_node *np,
>  		if (active_low)
>  			*flags |= OF_GPIO_ACTIVE_LOW;
>  	}
> +
> +	/* Legacy handling of stmmac's active-low PHY reset line */
> +	if (IS_ENABLED(CONFIG_DRIVER_NET_DESIGNWARE_EQOS) &&
> +	    !strcmp(propname, "snps,reset-gpio") &&
> +	    of_property_read_bool(np, "snps,reset-active-low"))
> +		*flags |= OF_GPIO_ACTIVE_LOW;
> +
>  }
>  
>  /**
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

