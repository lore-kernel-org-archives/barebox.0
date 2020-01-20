Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSUp-0004FG-2G
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 08:33:21 +0000
Date: Mon, 20 Jan 2020 09:33:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200120083316.nmsq44hrcmnse4md@pengutronix.de>
References: <20200114145140.15766-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114145140.15766-1-cleger@kalray.eu>
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
Subject: Re: [PATCH] pinctrl-single: Handle "pinctrl-single, function-mask" dt
 property
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org, =?iso-8859-15?Q?Sim=E9on?= Marijon <simeon.marijon@kalray.eu>, Simeon Marijon <simeon@marijon.fr>

On Tue, Jan 14, 2020 at 03:51:40PM +0100, Clement Leger wrote:
> From: Sim=E9on Marijon <simeon.marijon@kalray.eu>
> =

> Implement linux behavior regarding "pinctrl-single,function-mask" and
> "pinctrl-single,bits".
> It allows multiple pins control per register.
> =

> (linux sha1: 4e7e8017a80e1810100c9b416b86e3baef900285)
> =

> Signed-off-by: Simeon Marijon <simeon@marijon.fr>
> ---
>  drivers/pinctrl/pinctrl-single.c | 81 ++++++++++++++++++++++++++++++----=
------
>  1 file changed, 62 insertions(+), 19 deletions(-)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
