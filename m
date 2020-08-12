Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5nJU-0008KI-23
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 09:44:52 +0000
Date: Wed, 12 Aug 2020 11:44:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200812094450.GR9475@pengutronix.de>
References: <20200720064312.22894-1-Denis.Osterland@diehl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200720064312.22894-1-Denis.Osterland@diehl.com>
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
Subject: Re: [PATCH] dtc_cpp: allow to pass options per target
To: Denis Osterland-Heim <denis.osterland@diehl.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jul 20, 2020 at 06:43:39AM +0000, Denis Osterland-Heim wrote:
> This patch adds support to pass extra option per target to DTC CPP.
> =

> For example:
> =

>     DTC_CPP_FLAGS_my-board-name.dtb :=3D -DMY_DEFINE=3Dextra
>     lwl-dtb-$(CONFIG_MACH_MY_BOARD_NAME) +=3D my-board-name.dtb.o
> =

> Signed-off-by: Denis Osterland-Heim <Denis.Osterland@diehl.com>
> ---
>  scripts/Makefile.lib | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> =

> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 39cc24b196a2..c8f3be8aad01 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -178,6 +178,7 @@ dtc_cpp_flags  =3D -Wp,-MD,$(depfile).pre -nostdinc  =
                      \
>  		 -I$(srctree)/dts/include                                \
>  		 -I$(srctree)/include                                    \
>  		 -I$(srctree)/dts/src/                                   \
> +		 $(DTC_CPP_FLAGS_$(basetarget).dtb)                      \
>  		 -undef -D__DTS__
>  =

>  ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
> -- =

> 2.27.0
> =

> =

> =

> Diehl Connectivity Solutions GmbH
> Gesch=E4ftsf=FChrung: Horst Leonberger
> Sitz der Gesellschaft: N=FCrnberg - Registergericht: Amtsgericht
> N=FCrnberg: HRB 32315
> _________________________________________________________________________=
__________________________
> =

> Der Inhalt der vorstehenden E-Mail ist nicht rechtlich bindend. Diese E-M=
ail enthaelt vertrauliche und/oder rechtlich geschuetzte Informationen.
> Informieren Sie uns bitte, wenn Sie diese E-Mail faelschlicherweise erhal=
ten haben. Bitte loeschen Sie in diesem Fall die Nachricht.
> Jede unerlaubte Form der Reproduktion, Bekanntgabe, Aenderung, Verteilung=
 und/oder Publikation dieser E-Mail ist strengstens untersagt.
> - Informationen zum Datenschutz, insbesondere zu Ihren Rechten, erhalten =
Sie unter https://www.diehl.com/group/de/transparenz-und-informationspflich=
ten/
> =

> The contents of the above mentioned e-mail is not legally binding. This e=
-mail contains confidential and/or legally protected information. Please in=
form us if you have received this e-mail by
> mistake and delete it in such a case. Each unauthorized reproduction, dis=
closure, alteration, distribution and/or publication of this e-mail is stri=
ctly prohibited. =

> - For general information on data protection and your respective rights p=
lease visit https://www.diehl.com/group/en/transparency-and-information-obl=
igations/
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
