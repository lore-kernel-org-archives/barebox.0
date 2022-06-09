Delivery-date: Thu, 09 Jun 2022 09:28:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCaI-008Viq-Cf
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 09:28:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzCaG-0006pE-KH
	for lore@pengutronix.de; Thu, 09 Jun 2022 09:28:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CogTx8EY9Gb8daDqoDjeVEDy4UwRB2mcW9xF9IBUOsY=; b=1Tf19cYO3pl7Ax2OPGp9+5rgEO
	MyEDnSzgx/k492ap98XAbzY1t4E0Wb2NSRrO2Q6I50YRvfJjjhL+3KOG/+PzbI0z3zxjl6GjcaDId
	jntqIE1YzCHGgcVUl79ki2/rdzQwNBKBigmZfw+GYHlEYo/jesk+EGDl3S4aEgP1VdAuW6hh4eVuN
	w7k8F3aS4JuaS+XAMD8A0FvnIGcunKldoZ3d7o1/Z07TZG6Gf4OjklWdVTJWBdI85Ez9EXWGoXVLG
	9sDwGtL0E4w6EhvrqNNGaQHzdI6nb5bGNgh/Jkpfzyr8JiEzd63QY5RMspQ2306hXHY6nvkc3dwqY
	qNxWulEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCYu-00HO0t-6K; Thu, 09 Jun 2022 07:26:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzCYo-00HNyV-HN
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 07:26:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzCYl-0006cg-77; Thu, 09 Jun 2022 09:26:27 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzCYk-0005vA-Gr; Thu, 09 Jun 2022 09:26:26 +0200
Date: Thu, 9 Jun 2022 09:26:26 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220609072626.GZ1615@pengutronix.de>
References: <20220607100337.18277-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220607100337.18277-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_002630_631851_EDC834F2 
X-CRM114-Status: GOOD (  25.49  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] serial: ns16550: Adding compatibility for the AM437X
 platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 07, 2022 at 01:03:36PM +0300, Alexander Shiyan wrote:
> Adding compatibility for AM437X platforms.
> Since the serial node is not populated with a clock node,
> let's add an additional driver variable to set the default clock speed.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/serial/serial_ns16550.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
> index f93a89ab95..fb6af42e00 100644
> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -42,8 +42,9 @@ struct ns16550_priv {
>  };
>  
>  struct ns16550_drvdata {
> -        void (*init_port)(struct console_device *cdev);
> -        const char *linux_console_name;
> +	void (*init_port)(struct console_device *cdev);
> +	const char *linux_console_name;
> +	unsigned int clk_default;
>  };
>  
>  static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
> @@ -362,6 +363,12 @@ static __maybe_unused struct ns16550_drvdata omap_drvdata = {
>  	.linux_console_name = "ttyO",
>  };
>  
> +static __maybe_unused struct ns16550_drvdata am43xx_drvdata = {
> +	.init_port = ns16550_omap_init_port,
> +	.linux_console_name = "ttyO",
> +	.clk_default = 48000000,
> +};
> +
>  static __maybe_unused struct ns16550_drvdata jz_drvdata = {
>  	.init_port = ns16550_jz_init_port,
>  };
> @@ -472,6 +479,9 @@ static int ns16550_probe(struct device_d *dev)
>  	else
>  		ns16550_probe_dt(dev, priv);
>  
> +	if (devtype->clk_default && !priv->plat.clock)
> +		priv->plat.clock = devtype->clk_default;
> +
>  	if (!priv->plat.clock) {
>  		priv->clk = clk_get(dev, NULL);
>  		if (IS_ERR(priv->clk)) {
> @@ -537,6 +547,9 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
>  	}, {
>  		.compatible = "ti,omap4-uart",
>  		.data = &omap_drvdata,
> +	}, {
> +		.compatible = "ti,am4372-uart",
> +		.data = &am43xx_drvdata,
>  	},
>  #endif
>  #if IS_ENABLED(CONFIG_MACH_MIPS_XBURST)
> -- 
> 2.32.0
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

