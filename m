Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gArcC-0000fx-Vg
 for barebox@lists.infradead.org; Fri, 12 Oct 2018 07:12:06 +0000
Date: Fri, 12 Oct 2018 09:11:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181012071153.vsbkag7ukbx7h5yp@pengutronix.de>
References: <20181012064848.1614-1-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181012064848.1614-1-u.oelmann@pengutronix.de>
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
Subject: Re: [PATCH] state: fix documentation of state_new_from_node()
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Oct 12, 2018 at 08:48:48AM +0200, Ulrich =D6lmann wrote:
> Commit a66a8d79871c ("state: remove unused arguments from
> state_new_from_node()") removed a little bit too much.
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  common/state/state.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> =

> diff --git a/common/state/state.c b/common/state/state.c
> index 25d9502111c2..7f032592097d 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -583,6 +583,7 @@ void state_release(struct state *state)
>  /*
>   * state_new_from_node - create a new state instance from a device_node
>   *
> + * @node	The device_node describing the new state instance
>   * @readonly	This is a read-only state. Note that with this option set,
>   *		there are no repairs done.
>   */
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
