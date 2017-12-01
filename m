Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKj9G-0003JS-Q2
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:06:28 +0000
Date: Fri, 1 Dec 2017 12:06:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171201110604.xc2ukpfazjwzdpqf@pengutronix.de>
References: <20171128130521.26270-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171128130521.26270-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] net/e1000: add missing \n in error message
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 28, 2017 at 02:05:21PM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/net/e1000/eeprom.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =


Applied, thanks

Sascha

> diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
> index 6ee850c7808d..6251c6cecc94 100644
> --- a/drivers/net/e1000/eeprom.c
> +++ b/drivers/net/e1000/eeprom.c
> @@ -717,7 +717,7 @@ static int e1000_flash_mode_check_command_valid(struc=
t e1000_hw *hw)
>  {
>  	const uint32_t flswctl =3D e1000_read_reg(hw, E1000_FLSWCTL);
>  	if (!(flswctl & E1000_FLSWCTL_CMDV)) {
> -		dev_err(hw->dev, "FLSWCTL.CMDV was cleared");
> +		dev_err(hw->dev, "FLSWCTL.CMDV was cleared\n");
>  		return -EIO;
>  	}
>  =

> -- =

> 2.11.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
