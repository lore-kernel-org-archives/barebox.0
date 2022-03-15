Delivery-date: Tue, 15 Mar 2022 15:25:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nU87W-004MdV-4P
	for lore@lore.pengutronix.de; Tue, 15 Mar 2022 15:25:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nU87U-00044c-Ii
	for lore@pengutronix.de; Tue, 15 Mar 2022 15:25:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4e+E3fduBjufqC2dXPjvc/iy2yG4lCSITYXQzcVIj0o=; b=erO7zNsYFSq/zq
	4M6p1Scl6iiBiCELgHD3nWAtjq6Y59HzcU0Gb5SZ/S1xJUGfqmlilHckNwbRv0kgPit3kakKHcZCs
	AjEB5Urha1cNMWO6cnTdQ0YaP3H+Vgvbk4rgNtJbJ/KKumbsOt5LI4VhGyjQ7DG2qxAtIqxCZDeZW
	0mnFduT1434G1+q/oMk6+ACwClP71dtaVQiK839wdqnbvfzfH6DrEbyenwGpHlw9AodY/14oMwXQL
	/Z/vKOATd1nl7RSTScZ+YlE/WaPUArG/gSuokAILb3ITnDw0yjFUoKdARIPe77whzh0Zvb98mxHDu
	bRBiFVxtMXfezxTQLOAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nU86D-009QVw-Mo; Tue, 15 Mar 2022 14:24:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nU864-009QUT-GU
 for barebox@lists.infradead.org; Tue, 15 Mar 2022 14:24:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nU863-0003nV-8e; Tue, 15 Mar 2022 15:24:23 +0100
Message-ID: <ad203551-3b95-4ce8-d060-a10de337af5a@pengutronix.de>
Date: Tue, 15 Mar 2022 15:24:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: Andrej Picej <andrej.picej@norik.com>, barebox@lists.infradead.org
References: <20220315133942.537756-1-andrej.picej@norik.com>
 <20220315133942.537756-2-andrej.picej@norik.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220315133942.537756-2-andrej.picej@norik.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_072424_601388_ABEB7564 
X-CRM114-Status: GOOD (  23.79  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] mfd: da9063: ensure all gpio devices are probed before
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 15.03.22 14:39, Andrej Picej wrote:
> GPIO lines in da9063 are assigned dynamically, while majority of SOC
> GPIO drivers assign their GPIOs in static manner (GPIO line numbers can
> be calculated).
> 
> This introduces regression if deep probe support is used. If da9063
> GPIOs are registered before the SOCs GPIOs, there is a good chance that
> the SOCs statically computed GPIO line numbers will already be used by
> PMIC.
> 
> Ensure all SOCs GPIO drivers and GPIO lines get registered before the
> da9063 registers its own gpiochip.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>

I don't think this is the proper place. Also I think you may have
introduced a recursion here if the PMIC happens to have an alias
itself?

What I think we could do instead is to move this into gpiochip_add()
and opencode the alias iterator:


foreach (gpio_alias) {
	if (gpio_alias_dev == chip->dev)
		__gpiochip_add();
	else
		of_device_ensure_probed();
}

I don't know if that's the cleanest way, but that's what came to my mind.

Cheers,
Ahmad

> ---
>  drivers/mfd/da9063.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
> index a4e5226f3c..8b943eb4ef 100644
> --- a/drivers/mfd/da9063.c
> +++ b/drivers/mfd/da9063.c
> @@ -390,6 +390,10 @@ static int da9063_probe(struct device_d *dev)
>  	restart_handler_register(&priv->restart);
>  
>  	if (IS_ENABLED(CONFIG_GPIOLIB)) {
> +		ret = of_device_ensured_probed_by_alias_stem("gpio");
> +		if (ret)
> +			goto on_error;
> +
>  		priv->gpio.base = -1;
>  		priv->gpio.ngpio = 5;
>  		priv->gpio.ops  = &da9063_gpio_ops;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

