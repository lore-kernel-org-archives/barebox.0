Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bolbg-00078X-2l
 for barebox@lists.infradead.org; Tue, 27 Sep 2016 06:11:08 +0000
Date: Tue, 27 Sep 2016 08:10:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160927061044.nfib2knp6ibqiney@pengutronix.de>
References: <20160926091137.24719-1-u.kleine-koenig@pengutronix.de>
 <20160926093729.txxe5hjd2i6a7fiv@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160926093729.txxe5hjd2i6a7fiv@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] firmware: altera-serial: Make the driver match the
 dt binding documentation
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 26, 2016 at 11:37:29AM +0200, Uwe Kleine-K=F6nig wrote:
> Hello Sascha
> =

> I just noticed there is an additional change needed:
> =

> diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_s=
erial.c
> index ddee991ed073..b119778d720d 100644
> --- a/drivers/firmware/altera_serial.c
> +++ b/drivers/firmware/altera_serial.c
> @@ -328,7 +328,7 @@ out:
>  =

>  static struct of_device_id altera_spi_id_table[] =3D {
>  	{
> -		.compatible =3D "altr,passive-serial",
> +		.compatible =3D "altr,fpga-passive-serial",
>  	},
>  };
>  =

> Should I resend, or can you fixup yourself?

Fixed while applying

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
