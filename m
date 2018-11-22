Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPr4q-00011k-3q
 for barebox@lists.infradead.org; Thu, 22 Nov 2018 15:39:37 +0000
Received: by mail-lj1-x22e.google.com with SMTP id z80-v6so8325896ljb.8
 for <barebox@lists.infradead.org>; Thu, 22 Nov 2018 07:39:22 -0800 (PST)
Date: Thu, 22 Nov 2018 18:39:18 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20181122183918.e222c20e51c6e41afcfd5d6a@gmail.com>
In-Reply-To: <20181122081200.12642-1-u.oelmann@pengutronix.de>
References: <20181122081200.12642-1-u.oelmann@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] arch: *: cpuinfo: harmonize command description
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, 22 Nov 2018 09:12:00 +0100
Ulrich =D6lmann <u.oelmann@pengutronix.de> wrote:

Hello Robert!

AFAIR you are a native English speaker.

Would you please comment this change

> -	BAREBOX_CMD_DESC("show CPU information")
> +	BAREBOX_CMD_DESC("show information about CPU")

Which version of the cpuinfo command description is better?

-- =

Best regards,
=A0 Antony Pavlov

> Unify the different cpuinfo commands' description and adjust them to the
> descriptions of "clk_dump" and "devinfo".
> =

> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  arch/arm/cpu/cpuinfo.c      | 2 +-
>  arch/mips/lib/cpuinfo.c     | 2 +-
>  arch/openrisc/lib/cpuinfo.c | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
> index 175475b038dc..2421b91e57f1 100644
> --- a/arch/arm/cpu/cpuinfo.c
> +++ b/arch/arm/cpu/cpuinfo.c
> @@ -268,7 +268,7 @@ static int do_cpuinfo(int argc, char *argv[])
>  =

>  BAREBOX_CMD_START(cpuinfo)
>  	.cmd            =3D do_cpuinfo,
> -	BAREBOX_CMD_DESC("show info about CPU")
> +	BAREBOX_CMD_DESC("show information about CPU")
>  	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
>  	BAREBOX_CMD_COMPLETE(empty_complete)
>  BAREBOX_CMD_END
> diff --git a/arch/mips/lib/cpuinfo.c b/arch/mips/lib/cpuinfo.c
> index fb02a4d20217..a327672f78a5 100644
> --- a/arch/mips/lib/cpuinfo.c
> +++ b/arch/mips/lib/cpuinfo.c
> @@ -63,6 +63,6 @@ static int do_cpuinfo(int argc, char *argv[])
>  =

>  BAREBOX_CMD_START(cpuinfo)
>  	.cmd            =3D do_cpuinfo,
> -	BAREBOX_CMD_DESC("show CPU information")
> +	BAREBOX_CMD_DESC("show information about CPU")
>  	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
>  BAREBOX_CMD_END
> diff --git a/arch/openrisc/lib/cpuinfo.c b/arch/openrisc/lib/cpuinfo.c
> index 175adc582ca4..3d7fcb1f59ce 100644
> --- a/arch/openrisc/lib/cpuinfo.c
> +++ b/arch/openrisc/lib/cpuinfo.c
> @@ -198,6 +198,6 @@ static int do_cpuinfo(int argc, char *argv[])
>  =

>  BAREBOX_CMD_START(cpuinfo)
>  	.cmd            =3D do_cpuinfo,
> -	BAREBOX_CMD_DESC("show CPU information")
> +	BAREBOX_CMD_DESC("show information about CPU")
>  	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
>  BAREBOX_CMD_END
> -- =

> 2.19.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
