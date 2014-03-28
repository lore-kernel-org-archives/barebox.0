Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTRaA-000488-KD
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 07:52:07 +0000
Received: by mail-la0-f51.google.com with SMTP id pv20so3489542lab.10
 for <barebox@lists.infradead.org>; Fri, 28 Mar 2014 00:51:44 -0700 (PDT)
Date: Fri, 28 Mar 2014 12:01:32 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140328120132.60cb4a7d25fb42cda18bdadc@gmail.com>
In-Reply-To: <1395822642-14342-1-git-send-email-antonynpavlov@gmail.com>
References: <1395822642-14342-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: lib: add BAREBOX_CLK_TABLE to linker script
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 26 Mar 2014 12:30:42 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

I have included just the same patch into Atheros AR933x series.

> This commit is based on
>     commit fa1a406f7245c5482a17014d5b97e8948352e5a5
>     Author: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>     Date:   Sat Nov 9 14:24:18 2013 +0100
> =

>         ARM: lib: add BAREBOX_CLK_TABLE to linker script
> =

>         This adds an .oftables section right before .dtb section with
>         BAREBOX_CLK_TABLE to ARM linker script.
> =

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/lib/barebox.lds.S | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
> index bc78d2b..4ee4252 100644
> --- a/arch/mips/lib/barebox.lds.S
> +++ b/arch/mips/lib/barebox.lds.S
> @@ -69,6 +69,8 @@ SECTIONS
>  	__usymtab : { BAREBOX_SYMS }
>  	__usymtab_end =3D .;
>  =

> +	.oftables : { BAREBOX_CLK_TABLE() }
> +
>  	.dtb : { BAREBOX_DTB() }
>  =

>  	_edata =3D .;
> -- =

> 1.9.0
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
