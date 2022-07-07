Delivery-date: Thu, 07 Jul 2022 22:10:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9XpG-009hb8-Aa
	for lore@lore.pengutronix.de; Thu, 07 Jul 2022 22:10:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9XpI-0005Ih-DI
	for lore@pengutronix.de; Thu, 07 Jul 2022 22:10:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IFbjMrmshVd4lXovyo66QP9zF7w+tcKsp/hzNTP2Eis=; b=ALcPy+1gK6/qB+EfXYBZQ1ajAa
	JcXQwdBlfGIxyISUIiBGVu14H8NC6/KM/NjAQ/vl04iCZawIrN6K51QwSHx91Bfc6dpDvfFre+euC
	cssVt6gjEZuiI5qcf3kUjJbltP8fmUPUT0rbnrWwHT45UuA1LRI1Oc4X0jqk8vRLqzBoAs/hYfv/t
	OayIw9yjpDZHjEYueNOiceeLOQ6xXxYZCoteUtSuskdnDeZ86FZf2wcTAyiLYNbk9AkKnSmRTMHzd
	qMTBlBO+ucXKznhy8bD4Ak/AaV7xlm911n6JiEcJDe9fD5g2Wejuv74/ZhPa8P2Usk/3RElPjs355
	f6DWoh3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Xna-0004lz-6J; Thu, 07 Jul 2022 20:08:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9XnV-0004jc-A0
	for barebox@lists.infradead.org; Thu, 07 Jul 2022 20:08:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o9XnQ-00054k-Rt; Thu, 07 Jul 2022 22:08:20 +0200
Message-ID: <b706f998-f30e-297c-702f-886767a10c99@pengutronix.de>
Date: Thu, 7 Jul 2022 22:08:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Johannes Zink <j.zink@pengutronix.de>, barebox@lists.infradead.org
References: <20220707155427.3468397-1-j.zink@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220707155427.3468397-1-j.zink@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_130825_398345_3FF92402 
X-CRM114-Status: GOOD (  26.44  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] base: driver: print dev_err_probe message on permanent
 probe deferral
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Johannes,

On 07.07.22 17:54, Johannes Zink wrote:
> This stores the probe deferral reason in the device structure.
> If a probe is permanently deferred, the last reason is displayed.
> 
> Other dev_err_probe outputs are displayed as before.
> 
> Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
> ---
> v1 -> v2:

Looks good now, some minor feedback below.

> +static char *device_get_deferred_probe_reason(const struct device_d *dev)
> +{
> +	return dev->deferred_probe_reason;
> +}

Compiler would always inline this function, but still, why not use the member
directly? Gets rid of the helper and call sites are even shorter than with the
helper.

> -/**

Comment was kerneldoc before, but now it's not anymore. I guess you didn't
intend that?

> +static void device_set_deferred_probe_reason(struct device_d *dev, const struct va_format *vaf)
> +{
> +	char *reason;

As commented on v1, this is rather unnecessary, just drop it?

> + * In case of -EPROBE_DEFER it sets the device's deferred_probe_reason attribute,
> + * but does not report an error. The error is recorded and displayed later, if
> + * (and only if) the probe is permanently  deferred. For all other error codes,

s/permanently  deferred/permanently deferred/

> + * it just outputs the error

.. code along with the error message (see v1).

> + *
>   * It replaces code sequence::
>   *
>   * 	if (err != -EPROBE_DEFER)
> @@ -606,13 +631,17 @@ int dev_err_probe(const struct device_d *dev, int err, const char *fmt, ...)
>  {
>  	struct va_format vaf;
>  	va_list args;
> -
> +	

Unintended whitespace change?

>  	va_start(args, fmt);
>  	vaf.fmt = fmt;
>  	vaf.va = &args;
>  
> -	dev_printf(err == -EPROBE_DEFER ? MSG_DEBUG : MSG_ERR,
> -		   dev, "error %pe: %pV", ERR_PTR(err), &vaf);
> +	/* deferred probe, just remember the error reason */
> +	if (err == -EPROBE_DEFER)
> +		device_set_deferred_probe_reason((struct device_d*)dev, &vaf);

Better drop const from dev_err_probe's first parameter type. It makes sense
for Linux, which keeps private data separate, but it doesn't for barebox.
This is somewhat ugly too, because the other dev_printf functions (e.g. dev_err)
accept a const struct device_d, but that's most probably less ugly than
having a prototype saying that it's const and cast that away anyway..

> +
> +	dev_printf(err == -EPROBE_DEFER ? MSG_DEBUG : MSG_ERR, 
> +		   dev, "error %pe: %pV\n", ERR_PTR(err), &vaf);

The format string will already be new line terminated and here you
add one more new line that didn't exist before, so you end up with
an empty line after every error message.

> @@ -88,6 +88,12 @@ struct device_d {
>  	 * when the driver should actually detect client devices
>  	 */
>  	int     (*detect) (struct device_d *);
> +
> +	/*
> +	 * if a driver probe is deferred, this stores the last error
> +	 */
> +

At least the previous member didn't have a space after the comment, so you
may want to do likewise here.

> +	char *deferred_probe_reason;
>  };
>  
>  /** @brief Describes a driver present in the system */

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


