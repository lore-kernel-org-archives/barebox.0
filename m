Delivery-date: Thu, 02 Feb 2023 08:36:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNU9U-00B73c-Sr
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 08:36:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNU9S-00060Z-2z
	for lore@pengutronix.de; Thu, 02 Feb 2023 08:36:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dlp8jN1FEBby+BUH7j+d/Dp5vNhntBRLrzA818ZVy84=; b=OStXq/ZPEOUzlvYUDrsXeX07pD
	C4jk0fhMnGFyBGfPNKk3sth+MQD87ZArt30yYAU6TrvAPnXgSe8NzYk4hWKyc8wKIo9R3xDPr+aIq
	7TQbJjBeX6RErWFwdZENONk0/VxXh5w0bBdmeA9xuN+fu6iKkinM6aTU47HftKuTPYTeuQS1s7rnJ
	pDhds4nC0czV9T9LUIj8EnglFbkoXjyrIs+RruPW8qUMq009ODfKIZ9PNs9EtgtYTrKOYcqGoh+EO
	jfcEqBQxEuNkOR77C/ZBJaFG1VesGSjdyHL4mMNPCMeoLc9voR2hjfwnxTw6EqPxz2Aw1fEKJoV5l
	uxL2C1ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNU88-00EfJP-5U; Thu, 02 Feb 2023 07:35:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNU81-00EfHH-32
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 07:35:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNU7z-0005kU-FM; Thu, 02 Feb 2023 08:35:27 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNU7z-0002cU-5l; Thu, 02 Feb 2023 08:35:27 +0100
Date: Thu, 2 Feb 2023 08:35:27 +0100
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230202073527.GK13319@pengutronix.de>
References: <20230201094435.1228362-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230201094435.1228362-1-contact@jookia.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_233529_168257_D25D52BF 
X-CRM114-Status: GOOD (  27.92  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use a custom delay on i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 01, 2023 at 08:44:35PM +1100, John Watts wrote:
> The i.MX early I2C code requires waiting for the controller to settle
> after configuration. This is currently done using udelay which is
> supported on ARMv8 but not on ARMv7.
> 
> For the i.MX6 we will have to use a custom delay. This was only
> tested on the i.MX6Q but should work on all other i.MX6 chips.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  drivers/i2c/busses/i2c-imx-early.c | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
> index 6c8bdc7904..30cc65ca86 100644
> --- a/drivers/i2c/busses/i2c-imx-early.c
> +++ b/drivers/i2c/busses/i2c-imx-early.c
> @@ -90,6 +90,28 @@ static int i2c_fsl_acked(struct fsl_i2c *fsl_i2c)
>  	return i2c_fsl_poll_status(fsl_i2c, 0, I2SR_RXAK);
>  }
>  
> +static void i2c_fsl_settle(struct fsl_i2c *fsl_i2c)
> +{
> +#ifdef CPU_ARCH_ARMv8
> +	udelay(100);
> +#else
> +	/*
> +	 * We lack udelay on the i.MX6 prebootloader, so delay
> +	 * manually: On an i.MX6 with a 66Mhz I2C peripheral clock
> +	 * one cycle of this loop takes 1.30us,
> +	 * this means we have to wait for 76.9 microseconds.
> +	 *
> +	 * This clock may be 44Mhz if the BT_FREQ eFUSE is set,
> +	 * this just means it will take 150 microseconds.
> +	 */

I rounded up to 100 cycles and rephrased this to be a little less i.MX6
centric:

	/*
	 * We lack udelay on the 32bit i.MX SoCs, so delay manually: On an
	 * i.MX6 with a 66Mhz I2C peripheral clock one cycle of this loop
	 * takes 1.30us. Let's be generous and round up to 100 cycles. Other
	 * i.MX SoCs do not have a higher peripheral clock, so we should be
	 * safe here as well.
	 */

In the end it doesn't hurt when it takes a little longer.

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


