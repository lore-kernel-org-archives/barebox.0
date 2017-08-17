Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1diFob-00062v-Gu
 for barebox@lists.infradead.org; Thu, 17 Aug 2017 08:06:11 +0000
Date: Thu, 17 Aug 2017 10:05:43 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20170817080543.ul6ge4awubb6qbo2@pengutronix.de>
References: <20170816122709.23129-1-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170816122709.23129-1-jbe@pengutronix.de>
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
Subject: Re: [PATCH 1/3] state: provide an error message when an error occurs
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hallo J=FCrgen,

On Wed, Aug 16, 2017 at 02:27:07PM +0200, Juergen Borleis wrote:
> A simple typo makes the state framework fail, but without an error
> message the developer is lost in the dark.
> =

> Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> ---
>  common/state/state.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/common/state/state.c b/common/state/state.c
> index 121ba0c6d..fc822b21b 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -240,6 +240,7 @@ static int state_convert_node_variable(struct state *=
state,
>  =

>  	vtype =3D state_find_type_by_name(type_name);
>  	if (!vtype) {
> +		dev_dbg(&state->dev, "Error: invalid variable type '%s'\n", type_name);

I think this is only visible if you manually define DEBUG for state.
Assuming this is right dev_dbg doesn't match your intention.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
