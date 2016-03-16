Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x234.google.com ([2a00:1450:4010:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ag3sY-0002uG-NA
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 05:20:19 +0000
Received: by mail-lf0-x234.google.com with SMTP id e138so10352417lfe.1
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 22:19:58 -0700 (PDT)
Date: Wed, 16 Mar 2016 08:46:19 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160316084619.0056157064fdb1a9ecf332cb@gmail.com>
In-Reply-To: <1458099232-9050-7-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
 <1458099232-9050-7-git-send-email-andrew.smirnov@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/16] fec_imx: Impelemnt reset timeout
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, 15 Mar 2016 20:33:42 -0700
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> [PATCH 07/16] fec_imx: Impelemnt reset timeout
                         ^^^^^^^^^ Implement?

> Don't wait for more than one second for IP block to finish resetting. If
> the block is dead it makes more sence to continue execution in hopes
> that the rest of the processor is fine, rather than spin indefinetly
> inside of the fec_probe function
> =

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/net/fec_imx.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 601edba..fc2c8e1 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -656,6 +656,7 @@ static int fec_probe(struct device_d *dev)
>  	enum fec_type type;
>  	int phy_reset;
>  	u32 msec =3D 1;
> +	u64 start;
>  =

>  	ret =3D dev_get_drvdata(dev, (const void **)&type);
>  	if (ret)
> @@ -708,9 +709,13 @@ static int fec_probe(struct device_d *dev)
>  	}
>  =

>  	/* Reset chip. */
> +	start =3D get_time_ns();
>  	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
>  	while(readl(fec->regs + FEC_ECNTRL) & FEC_ECNTRL_RESET) {
> -		udelay(10);
> +		if (is_timeout(start, SECOND)) {
> +			ret =3D -ETIMEDOUT;
> +			goto free_gpio;
> +		}
>  	}
>  =

>  	/*
> -- =

> 2.5.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
