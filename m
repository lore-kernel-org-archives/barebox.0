Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA3U-0008Lp-74
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:27:36 +0000
Date: Tue, 15 Sep 2020 14:27:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200915122726.GF4498@pengutronix.de>
References: <20200915094540.26840-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200915094540.26840-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] scripts/imx-usb-loader: Drop duplicate definition of ALIGN
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Tue, Sep 15, 2020 at 11:45:40AM +0200, Uwe Kleine-K=F6nig wrote:
> This fixes:
> =

> 	scripts/imx/imx-usb-loader.c:42: warning: "ALIGN" redefined
> 	 #define ALIGN(x, a)        (((x) + (a) - 1) & ~((a) - 1))
> =

> 	In file included from scripts/imx/imx-usb-loader.c:35:
> 	scripts/include/linux/kernel.h:10: note: this is the location of the pre=
vious definition
> 	 #define ALIGN(x, a)  __ALIGN_MASK(x, (typeof(x))(a) - 1)
> =

> Fixes: a876d16e6ad3 ("scripts: define ALIGN(x) in scripts' <linux/kernel.=
h>")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 2 --
>  1 file changed, 2 deletions(-)

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
