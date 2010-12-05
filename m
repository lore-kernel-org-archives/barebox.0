Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PPCAr-0006Dh-PT
	for barebox@lists.infradead.org; Sun, 05 Dec 2010 10:50:34 +0000
Date: Sun, 5 Dec 2010 11:50:28 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20101205105028.GD10693@pengutronix.de>
References: <201012031459.50684.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201012031459.50684.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] STM/MCI: Fix wrong register bit
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 03, 2010 at 02:59:50PM +0100, Juergen Beisert wrote:
> =

Maybe add something like: "The define isn't used up to now, so the wrong
offset didn't stick out before.  For the same reason this fix isn't
critical." to the changelog?

Uwe
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  drivers/mci/stm378x.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> Index: barebox-git/drivers/mci/stm378x.c
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> --- barebox-git.orig/drivers/mci/stm378x.c
> +++ barebox-git/drivers/mci/stm378x.c
> @@ -52,7 +52,7 @@
>  # define SSP_CTRL0_SFTRST (1 << 31)
>  # define SSP_CTRL0_CLKGATE (1 << 30)
>  # define SSP_CTRL0_RUN (1 << 29)
> -# define SSP_CTRL0_LOCK_CS (1 << 29)
> +# define SSP_CTRL0_LOCK_CS (1 << 27)
>  # define SSP_CTRL0_READ (1 << 25)
>  # define SSP_CTRL0_IGNORE_CRC (1 << 26)
>  # define SSP_CTRL0_DATA_XFER (1 << 24)

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
