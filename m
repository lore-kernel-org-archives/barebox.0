Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPYue-0006B1-CL
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 14:20:57 +0000
Date: Fri, 27 Sep 2013 16:20:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130927142034.GV30088@pengutronix.de>
References: <1380267201-17783-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380267201-17783-1-git-send-email-t.gamez@phytec.de>
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
Subject: Re: [PATCH] lib: Fix copy_file when filesize is FILESIZE_MAX
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 27, 2013 at 09:33:21AM +0200, Teresa G=E1mez wrote:
> Using tftp command does not work proper when files
> have FILESIZE_MAX, as copy_file and show_progress
> can not handle it. Check the file size for FILESIZE_MAX
> and handle it as file size =3D 0.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

Sascha

> ---
>  lib/copy_file.c     |    8 ++++++--
>  lib/show_progress.c |    5 +++--
>  2 files changed, 9 insertions(+), 4 deletions(-)
> =

> diff --git a/lib/copy_file.c b/lib/copy_file.c
> index ab3d845..55dee38 100644
> --- a/lib/copy_file.c
> +++ b/lib/copy_file.c
> @@ -63,8 +63,12 @@ int copy_file(const char *src, const char *dst, int ve=
rbose)
>  			total +=3D w;
>  		}
>  =

> -		if (verbose)
> -			show_progress(statbuf.st_size ? total : total / 16384);
> +		if (verbose) {
> +			if (statbuf.st_size && statbuf.st_size !=3D FILESIZE_MAX)
> +				show_progress(total);
> +			else
> +				show_progress(total / 16384);
> +		}
>  	}
>  =

>  	ret =3D 0;
> diff --git a/lib/show_progress.c b/lib/show_progress.c
> index bc067ea..98dc849 100644
> --- a/lib/show_progress.c
> +++ b/lib/show_progress.c
> @@ -18,6 +18,7 @@
>   */
>  =

>  #include <common.h>
> +#include <fs.h>
>  #include <progress.h>
>  #include <asm-generic/div64.h>
>  #include <linux/stringify.h>
> @@ -37,7 +38,7 @@ void show_progress(int now)
>  		return;
>  	}
>  =

> -	if (progress_max) {
> +	if (progress_max && progress_max !=3D FILESIZE_MAX) {
>  		uint64_t tmp =3D (int64_t)now * HASHES_PER_LINE;
>  		do_div(tmp, progress_max);
>  		now =3D tmp;
> @@ -56,7 +57,7 @@ void init_progression_bar(int max)
>  	printed =3D 0;
>  	progress_max =3D max;
>  	spin =3D 0;
> -	if (progress_max)
> +	if (progress_max && progress_max !=3D FILESIZE_MAX)
>  		printf("\t[%"__stringify(HASHES_PER_LINE)"s]\r\t[", "");
>  	else
>  		printf("\t");
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
