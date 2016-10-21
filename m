Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxU6g-0004Cu-Vi
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 07:19:12 +0000
Date: Fri, 21 Oct 2016 09:18:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161021071849.gt4a7i65gk4mooiz@pengutronix.de>
References: <20161020190355.20181-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161020190355.20181-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] pinctrl: mvebu: fix a comment about mv78460
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Oct 20, 2016 at 09:03:55PM +0200, Uwe Kleine-K=F6nig wrote:
> It's pin mpp57 that has function vdd/cpu2-3-pd
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/pinctrl/mvebu/armada-xp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/drivers/pinctrl/mvebu/armada-xp.c b/drivers/pinctrl/mvebu/ar=
mada-xp.c
> index f1bc8b498aac..f2e6b0d38f7b 100644
> --- a/drivers/pinctrl/mvebu/armada-xp.c
> +++ b/drivers/pinctrl/mvebu/armada-xp.c
> @@ -16,7 +16,7 @@
>   * both have 67 MPP pins (more GPIOs and address lines for the memory
>   * bus mainly). The only difference between the mv78260 and the
>   * mv78460 in terms of pin muxing is the addition of two functions on
> - * pins 43 and 56 to access the VDD of the CPU2 and 3 (mv78260 has two
> + * pins 43 and 57 to access the VDD of the CPU2 and 3 (mv78260 has two
>   * cores, mv78460 has four cores).
>   */
>  =

> -- =

> 2.8.1
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
