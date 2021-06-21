Delivery-date: Mon, 21 Jun 2021 10:09:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvEzv-00086K-86
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 10:09:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvEzu-0005i0-6Z
	for lore@pengutronix.de; Mon, 21 Jun 2021 10:09:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YMIaKiKzD6zDdnedPg4G2vAjITEo5qXV4r1Y2fhqvS4=; b=vwFGGdde47XNBuobyJlavGxc2h
	9SKAF35iSkejaVa40P15MRUoPmmhfNYVqQqi0mm0Kw0lcoKBOqqzRWyiiClk+pYVSUq3b5gDIz6EV
	sVlFCWWvi+Kno5bNsBo7sB3qFLq42FLYC89rNsNF1YayRo2IsHJtGWWE332TFefGMqj2hnWskN93V
	9vKbzDcrNAUlCR8P1liamgJELNKW7MMSV0teuGZsDBXF6iXLnoCZUXwwdPNQ6vnDTO+/RYw+2a7rt
	XkjydwUuaLuGYJzts1YK8qx1fIqfnil/sgR+4zCXoAHTXtMhcAKjSBN14YvydwNkWW3mwLR0sQXcf
	VTIICOcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvEyb-002dU7-M9; Mon, 21 Jun 2021 08:08:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvEyW-002dTW-RU
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 08:08:10 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lvEyU-0005dX-Gf; Mon, 21 Jun 2021 10:08:07 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20210606122400.22418-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5792bbab-5d62-e534-c8c3-8838ad953a5f@pengutronix.de>
Date: Mon, 21 Jun 2021 10:07:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210606122400.22418-1-o.rempel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_010808_947575_E3A3DF0C 
X-CRM114-Status: GOOD (  26.05  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/2] add device state flags and add error state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 06.06.21 14:23, Oleksij Rempel wrote:
> Add state flags for each registered device and set error state on each
> dev_err print.
> This states can be used by users to identify erroneous device.

I thought this over a bit. We have dev_err calls when:
 
 - probes are permanently deferred
 - have actual probe (!= -ENODEV, != -ENXIO, != -EPROBE_DEFER)
 - after probe something fails (e.g. you got the regulator, but couldn't enable it)

So, I think the hook point is appropriate. Board code could extend this
and get a device and do some extra tests and use dev_set_err as appropriate.

So feel free to add:

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  include/driver.h | 13 +++++++++++++
>  include/printk.h |  5 ++++-
>  2 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/include/driver.h b/include/driver.h
> index d84fe35d50..b64a8e258c 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -88,6 +88,9 @@ struct device_d {
>  	 * when the driver should actually detect client devices
>  	 */
>  	int     (*detect) (struct device_d *);
> +
> +#define DEV_ERR			BIT(0)
> +	u32	run_flags;

Just turn it into a bit field instead?

>  };
>  
>  /** @brief Describes a driver present in the system */
> @@ -361,6 +364,16 @@ static inline int dev_close_default(struct device_d *dev, struct filep *f)
>  	return 0;
>  }
>  
> +static inline void dev_set_err(struct device_d *dev)
> +{
> +	dev->run_flags |= DEV_ERR;
> +}
> +
> +static inline bool dev_have_err(struct device_d *dev)
> +{
> +	return !!(dev->run_flags & DEV_ERR);
> +}
> +
>  struct bus_type {
>  	char *name;
>  	int (*match)(struct device_d *dev, struct driver_d *drv);
> diff --git a/include/printk.h b/include/printk.h
> index f83ad3bf07..6c563be3e6 100644
> --- a/include/printk.h
> +++ b/include/printk.h
> @@ -61,7 +61,10 @@ static inline int pr_print(int level, const char *format, ...)
>  #define dev_crit(dev, format, arg...)		\
>  	__dev_printf(2, (dev) , format , ## arg)
>  #define dev_err(dev, format, arg...)		\
> -	__dev_printf(3, (dev) , format , ## arg)
> +	({ \

You're already using statement expressions, so you could add a
		struct device_d *__dev = (dev);
here and use that.

> +		dev_set_err(dev); \
> +		__dev_printf(3, (dev) , format , ## arg); \
> +	})
>  #define dev_warn(dev, format, arg...)		\
>  	__dev_printf(4, (dev) , format , ## arg)
>  #define dev_notice(dev, format, arg...)		\
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

