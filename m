Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhF0Q-0007BG-I8
 for barebox@lists.infradead.org; Tue, 28 May 2013 08:11:43 +0000
Date: Tue, 28 May 2013 10:11:11 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20130528081111.GJ11166@pengutronix.de>
References: <1369727146-15275-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369727146-15275-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] scripts: genenv: remove empty files from tempdir
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On Tue, May 28, 2013 at 09:45:46AM +0200, Jan Luebbe wrote:
> This allows leaving out default files from the environment by overriding
> them with empty files in the board or BSP.
> =

> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  scripts/genenv | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/scripts/genenv b/scripts/genenv
> index 374db6d..3e91062 100755
> --- a/scripts/genenv
> +++ b/scripts/genenv
> @@ -24,7 +24,7 @@ for i in $*; do
>  done
>  )
>  =

> -find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
> +find $tempdir -name '.svn' -o -name '*~' -o -size 0 | xargs --no-run-if-=
empty rm -r
Maybe use -empty instead of -size 0?

Other than that this is broken for funny filenames.

	find "$tempdir" -name '.svn' -o -name '*~' -o -size 0 -print0 | xargs --no=
-run-if-empty --null rm -r

would work, but depends on GNU find and xargs. I don't know if that is a
problem. Alternatively use:

	find "$tempdir" -depth -name '.svn' -o -name '*~' -o -size 0 -execdir rm -=
r {} +

(Obviously this doesn't make your patch worse, I'm just pointing out
another possible improvement.) And note my suggestions are untested.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
