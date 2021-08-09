Delivery-date: Mon, 09 Aug 2021 20:19:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD9sS-0001sq-Dm
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 20:19:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD9sO-0006aI-Iv
	for lore@pengutronix.de; Mon, 09 Aug 2021 20:19:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9cewNGmsv2tWB1+Uw3OuUITcNIm4Yfq1roUJOzvDfJs=; b=coE5rTANOGt7yXOoAkWZT3EW31
	LOn2a9CM81iq0JpO0yEPrqoQJQbEDeIVw/NHORSmOb0oA1FPZm7rAE1HYgcEc2tLfkvC0rN+Kr0Zq
	HdkbD0w+JHh0H6fo4Es7o9Za7SlmFh5BTNXXcJkuUoAjkXo1rTD1uopzBHTS3CWXTKD0VkXrnSlIg
	KaT9fwsVqhfUQns0fB+jBQlo1IBURoSkWv6HCbsIKU8SKetLnWtdE4nFnMeJGBjsh+ThKAhI6HulT
	rDHUq03W7jhek+dvDRdI3ELLcIWFYzD3HHYT32dsu2MBVwJrPqsDgJ66yL3pfPuXp8CXKou4gHvMD
	Wk2XI5+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD9qp-001foP-Fk; Mon, 09 Aug 2021 18:18:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD9qh-001fnh-Fv
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 18:18:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mD9qg-0006U1-5Q; Mon, 09 Aug 2021 20:18:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mD9qf-0005Kn-Ri; Mon, 09 Aug 2021 20:18:05 +0200
Date: Mon, 9 Aug 2021 20:18:05 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210809181805.GD11515@pengutronix.de>
References: <20210803165937.31608-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210803165937.31608-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 20:17:56 up 172 days, 21:41, 81 users,  load average: 0.04, 0.09,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_111807_584053_E258DF91 
X-CRM114-Status: GOOD (  27.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] watchdog: imxwd: register explicit warm reset handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 03, 2021 at 06:59:36PM +0200, Ahmad Fatoum wrote:
> With fsl,ext-reset-output and WDOG_B muxed correctly, the i.MX watchdog
> will toggle an external signal to effect a PMIC reset.
> 
> That's good for normal use, but when exchanging information with the
> BootROM over GPRs, a warm reset is required. This is needed e.g. to
> set the reboot mode. Support this by defining a second, lower
> priority, reset that will never toggle external lines.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/watchdog/imxwd.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/imxwd.c b/drivers/watchdog/imxwd.c
> index 26c62b7bcb31..a109f6fee712 100644
> --- a/drivers/watchdog/imxwd.c
> +++ b/drivers/watchdog/imxwd.c
> @@ -39,6 +39,7 @@ struct imx_wd {
>  	struct device_d *dev;
>  	const struct imx_wd_ops *ops;
>  	struct restart_handler restart;
> +	struct restart_handler restart_warm;
>  	bool ext_reset;
>  	bool bigendian;
>  };
> @@ -183,6 +184,14 @@ static void __noreturn imxwd_force_soc_reset(struct restart_handler *rst)
>  	hang();
>  }
>  
> +static void __noreturn imxwd_force_soc_reset_internal(struct restart_handler *rst)
> +{
> +	struct imx_wd *priv = container_of(rst, struct imx_wd, restart_warm);
> +
> +	priv->ext_reset = false;
> +	imxwd_force_soc_reset(&priv->restart);
> +}
> +
>  static void imx_watchdog_detect_reset_source(struct imx_wd *priv)
>  {
>  	u16 val = imxwd_read(priv, IMX21_WDOG_WSTR);
> @@ -284,9 +293,16 @@ static int imx_wd_probe(struct device_d *dev)
>  
>  	priv->restart.name = "imxwd";
>  	priv->restart.restart = imxwd_force_soc_reset;
> +	priv->restart.priority = RESTART_DEFAULT_PRIORITY;
>  
>  	restart_handler_register(&priv->restart);
>  
> +	priv->restart_warm.name = "imxwd-warm";
> +	priv->restart_warm.restart = imxwd_force_soc_reset_internal;
> +	priv->restart_warm.priority = RESTART_DEFAULT_PRIORITY - 10;
> +
> +	restart_handler_register(&priv->restart_warm);
> +
>  	return 0;
>  
>  error_unregister:
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

