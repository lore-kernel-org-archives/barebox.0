Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StvC3-0005PV-IH
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 06:35:37 +0000
Date: Wed, 25 Jul 2012 08:35:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120725063521.GH30009@pengutronix.de>
References: <1343130282-32096-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343130282-32096-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] scripts/checkpatch.pl: reset rpt_cleaners warnings
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 24, 2012 at 01:44:42PM +0200, Teresa G=E1mez wrote:
> When running checkpatch against multiple patches and one
> of them has a whitespace issue, all following patches will
> contain the same note, even if they are ok.
> =

> This patch is taken from the linux kernel:
> =

> scripts/checkpatch.pl: reset rpt_cleaners warnings
> b0781216e7bff68aca2fbcd275b4db7531d1e22f
> Written by Mike Frysinger <vapier@gentoo.org>
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

 Sascha

> ---
>  scripts/checkpatch.pl |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> =

> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 151c53a..0d94f98 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -2934,6 +2934,7 @@ sub process {
>  		if ($rpt_cleaners) {
>  			print "NOTE: whitespace errors detected, you may wish to use scripts/=
cleanpatch or\n";
>  			print "      scripts/cleanfile\n\n";
> +			$rpt_cleaners =3D 0;
>  		}
>  	}
>  =

> -- =

> 1.7.0.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
