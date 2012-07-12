Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a01:e0c:1:1599::11] (helo=smtp2-g21.free.fr)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SpFwr-0005vs-Cz
 for barebox@lists.infradead.org; Thu, 12 Jul 2012 09:45:05 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 5303F4B0042
 for <barebox@lists.infradead.org>; Thu, 12 Jul 2012 11:43:53 +0200 (CEST)
Date: Thu, 12 Jul 2012 11:43:52 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120712114352.51e3de9b@eb-e6520>
In-Reply-To: <1341817779-29531-1-git-send-email-s.hauer@pengutronix.de>
References: <1341817779-29531-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: Enable unaligned accesses on armv6 and later
To: barebox@lists.infradead.org

Hi Sascha,

Le Mon,  9 Jul 2012 09:09:39 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

> We have the following in the tree:
> =

> |commit af42feb9d255bc3ea3b514180f265479ea8834f9
> |Author: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> |Date:   Mon Jan 2 11:49:17 2012 +0100
> |
> |    ARM: set SCTRL[A] only when architecture does not support unaligned =
access
> |
> |    Recent gcc generates code with unaligned access when architecture
> |    supports it. Setting A bit unconditionally causes data-aborts on such
> |    code rendering barebox unusable.
> |
> |    Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> |    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> =

> What the patch tried is correct: We should set the A bit only when the ar=
chitecture
> does not support unaligned accesses. To figure out whether the architectu=
re supports
> unaligned accesses the patch tested for the U bit which is wrong. The U b=
it may be
> 0 after a reset, so instead of testing for the U bit we have to set it. T=
his can
> be done on armv6 and later. All others have the A bit set to trap unalign=
ed accesses.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> =

> Enrico, can you confirm this is correct?
> =

> Thanks
>  Sascha
> =

>  arch/arm/cpu/start.c |   12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> =

> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 3c282ee..523179d 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -81,13 +81,11 @@ void __naked __bare_init reset(void)
>  	r &=3D ~(CR_M | CR_C | CR_B | CR_S | CR_R | CR_V);
>  	r |=3D CR_I;
>  =

> -	if (!(r & CR_U))
> -		/* catch unaligned access on architectures which do not
> -		 * support unaligned access */
> -		r |=3D CR_A;
> -	else
> -		r &=3D ~CR_A;
> -
> +#if __LINUX_ARM_ARCH__ >=3D 6
> +	r |=3D CR_U;
> +#else
> +	r |=3D CR_A;
> +#endif
>  =

>  #ifdef __ARMEB__
>  	r |=3D CR_B;

Tested-by: Eric B=E9nard <eric@eukrea.com>

this patch fix the crash we had in show_progress.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
