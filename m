Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dI7UA-00086N-1L
 for barebox@lists.infradead.org; Tue, 06 Jun 2017 05:56:59 +0000
Date: Tue, 6 Jun 2017 07:56:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170606055636.6kr6qglik5xbwjwe@pengutronix.de>
References: <20170602182204.32309-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170602182204.32309-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 1/2] docs: mvebu can do 2nd stage booting
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 02, 2017 at 08:22:03PM +0200, Uwe Kleine-K=F6nig wrote:
> Since commit
> =

> 	823d08e3e261 ("kwbimage_v1: add support to boot a mvebu image")
> =

> barebox can use bootm to load a 2nd barebox image. Update the
> documentation accordingly.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  Documentation/boards/mvebu.rst | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/Documentation/boards/mvebu.rst b/Documentation/boards/mvebu.=
rst
> index b4f8e6043dac..4dfdc4a8f761 100644
> --- a/Documentation/boards/mvebu.rst
> +++ b/Documentation/boards/mvebu.rst
> @@ -28,8 +28,8 @@ initialisation that could be taken.
>  Booting second stage
>  --------------------
>  =

> -This is currently not possible because barebox assumes the registers are=
 mapped
> -at 0xd0000000 as is the case when the boot ROM gives control to the boot=
loader.
> +Since ``v2017.04.0`` barebox can boot a barebox image even if the regist=
er
> +window is moved. This is implemented by writing the actual window positi=
on into the image where it is then picked up by the second stage bootloader.

Applied with an additional line break, thanks

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
