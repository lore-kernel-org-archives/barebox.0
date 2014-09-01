Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOOK5-0006Kl-CK
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 09:54:53 +0000
Date: Mon, 1 Sep 2014 11:54:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901095425.GQ5352@pengutronix.de>
References: <1407230089-26948-1-git-send-email-poggi.raph@gmail.com>
 <1407230089-26948-5-git-send-email-poggi.raph@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1407230089-26948-5-git-send-email-poggi.raph@gmail.com>
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
Subject: Re: [PATCH 4/5] board: atmel: initialise ecc_mode
To: =?iso-8859-15?Q?Rapha=EBl?= Poggi <poggi.raph@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 05, 2014 at 11:14:48AM +0200, Rapha=EBl Poggi wrote:
> This commit initialise the ecc_mode (NAND_ECC_SOFT) on atmel board init w=
hich missing it.
> =

> Signed-off-by: Rapha=EBl Poggi <poggi.raph@gmail.com>
> ---
>  arch/arm/boards/at91sam9260ek/init.c    |    1 +
>  arch/arm/boards/at91sam9261ek/init.c    |    1 +
>  arch/arm/boards/at91sam9263ek/init.c    |    1 +
>  arch/arm/boards/at91sam9m10g45ek/init.c |    1 +
>  arch/arm/boards/at91sam9m10ihd/init.c   |    1 +
>  5 files changed, 5 insertions(+)
> =

> diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91s=
am9260ek/init.c
> index 1298dde..76e0195 100644
> --- a/arch/arm/boards/at91sam9260ek/init.c
> +++ b/arch/arm/boards/at91sam9260ek/init.c
> @@ -51,6 +51,7 @@ static struct atmel_nand_data nand_pdata =3D {
>  	.det_pin	=3D -EINVAL,
>  	.rdy_pin	=3D AT91_PIN_PC13,
>  	.enable_pin	=3D AT91_PIN_PC14,
> +	.ecc_mode	=3D NAND_ECC_SOFT,

You have to combine 3/5 and 4/5 in a single patch. Otherwise the ecc
mode is not initialized correctly between both patches.

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
