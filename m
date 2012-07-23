Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StQpo-0007cX-4N
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 22:10:37 +0000
Date: Tue, 24 Jul 2012 00:10:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723221029.GQ24458@pengutronix.de>
References: <1342812585-22017-1-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342812585-22017-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM/Samsung: more clean up...
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Fri, Jul 20, 2012 at 09:29:36PM +0200, Juergen Beisert wrote:
> ...in preparation to add the S3C6410 SoC support.
> =

> Mostly simplifying the Samsung serial driver and some more cosmetic.
> =

> Comments are welcome.

Applied up to 6/9

Thanks
 Sascha

> =

> Regards,
> Juergen
> =

> The following changes since commit b47220d7f70df9191fc456dbcaeaa6ead72c6c=
02:
> =

>   NAND/Samsung: remove a leftover from architeture clean ups (2012-07-20 =
08:41:35 +0200)
> =

> are available in the git repository at:
> =

>   git://git.pengutronix.de/git/jbe/barebox.git master_samsung_clean_up
> =

> for you to fetch changes up to fc361ff7de449f9bb8a7653a5705621320d84560:
> =

>   Samsung/serial: make the clock source configureable (2012-07-20 21:16:0=
2 +0200)
> =

> ----------------------------------------------------------------
> Juergen Beisert (9):
>       ARM/Samsung: List only really supported S3C24xx SoCs
>       ARM/Samsung: follow the name style of the other source files in thi=
s directory
>       Samsung/serial: remove more ugly ifdef lines
>       Samsung/serial: make the code more readable
>       Samsung/serial: there is no need to ifdef these register defines
>       Samsung/serial: there is no need to ifdef the slot table
>       Samsung/serial: move the decision about an improved UART into Kconf=
ig
>       Samsung/serial: unify UCON register settings
>       Samsung/serial: make the clock source configureable
> =

>  arch/arm/Kconfig                                   |    2 +-
>  arch/arm/mach-samsung/Kconfig                      |    5 ++
>  arch/arm/mach-samsung/Makefile                     |    3 +-
>  .../{s3c24xx-clocks.c =3D> clocks-s3c24xx.c}         |    0
>  arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h  |    5 +-
>  drivers/serial/serial_s3c.c                        |   71 +++++++++++---=
------
>  6 files changed, 48 insertions(+), 38 deletions(-)
>  rename arch/arm/mach-samsung/{s3c24xx-clocks.c =3D> clocks-s3c24xx.c} (1=
00%)
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
