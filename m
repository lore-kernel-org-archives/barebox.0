Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7Eb6-0007ux-4x
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 06:55:57 +0000
Date: Tue, 2 Oct 2018 08:55:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181002065543.zfhoi3wfhfmlgcet@pengutronix.de>
References: <20181001091907.4475-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181001091907.4475-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] e1000/flash: Increased erase timeout
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Michael Schuhmacher <m.schuhmacher@eckelmann.de>

On Mon, Oct 01, 2018 at 11:19:07AM +0200, Uwe Kleine-K=F6nig wrote:
> From: Michael Schuhmacher <m.schuhmacher@eckelmann.de>
> =

> Serial flash Adesto AT25DF321A specifies the maximal chip erase time as
> 40 seconds. Extend timeout accordingly.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/net/e1000/eeprom.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
> index dda022e05437..ffd323106fbb 100644
> --- a/drivers/net/e1000/eeprom.c
> +++ b/drivers/net/e1000/eeprom.c
> @@ -883,7 +883,7 @@ static int e1000_flash_mode_erase_chunk(struct e1000_=
hw *hw, loff_t offset,
>  	ret =3D e1000_poll_reg(hw, E1000_FLSWCTL,
>  			     E1000_FLSWCTL_DONE | E1000_FLSWCTL_FLBUSY,
>  			     E1000_FLSWCTL_DONE,
> -			     10 * SECOND);
> +			     40 * SECOND);
>  	if (ret < 0) {
>  		dev_err(hw->dev,
>  			"Timeout waiting for FLSWCTL.DONE to be set (erase)\n");
> -- =

> 2.19.0
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
