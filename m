Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e1Yys-0005ic-Mi
 for barebox@lists.infradead.org; Mon, 09 Oct 2017 14:24:33 +0000
Date: Mon, 9 Oct 2017 16:24:08 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20171009142408.2g7k4mrfjq3tffwa@pengutronix.de>
References: <20171009093616.12686-1-u.kleine-koenig@pengutronix.de>
 <20171009093616.12686-4-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171009093616.12686-4-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 3/3] HACK: e1000: don't check for FLSWCTL.GLDONE when
 waiting for idle
To: barebox@lists.infradead.org, Andrey Smirnov <andrew.smirnov@gmail.com>

On Mon, Oct 09, 2017 at 11:36:16AM +0200, Uwe Kleine-K=F6nig wrote:
> I don't understand all the consequences of this patch yet, but this makes=
 reading
> out the flash chip connected to an i210 work for me.
> ---
>  drivers/net/e1000/eeprom.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
> index 739bc17a519e..482a969f8d56 100644
> --- a/drivers/net/e1000/eeprom.c
> +++ b/drivers/net/e1000/eeprom.c
> @@ -709,8 +709,8 @@ static int e1000_flash_mode_wait_for_idle(struct e100=
0_hw *hw)
>  	 * execution by polling only FLSWCTL.DONE */
>  =

>  	const int ret =3D e1000_poll_reg(hw, E1000_FLSWCTL,
> -				       E1000_FLSWCTL_DONE | E1000_FLSWCTL_GLDONE,
> -				       E1000_FLSWCTL_DONE | E1000_FLSWCTL_GLDONE,
> +				       E1000_FLSWCTL_DONE,
> +				       E1000_FLSWCTL_DONE,

I tested a bit with and without this change at it seems as long as
nothing "strange" happens, testing for both FLSWCTL.DONE and
FLSWCTL.GLDONE (i.e. not applying my HACK patch) works fine.

Still I think only testing for FLSWCTL.DONE is better because it works
well even if the state machine is in the middle of a read request and
then changing the command (which is always done after
e1000_flash_mode_wait_for_idle()) should work well.

I'll resend with a better commit log once I tested this.

Alexey: I didn't understand the comment above the patched line, maybe
I'm missing something?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
