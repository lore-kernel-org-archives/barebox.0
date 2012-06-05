Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SbpYs-0007wD-MF
 for barebox@lists.infradead.org; Tue, 05 Jun 2012 08:56:23 +0000
Received: from mediacenter.hi.pengutronix.de ([2001:6f8:1178:2::65])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1SbpYp-0000mF-LR
 for barebox@lists.infradead.org; Tue, 05 Jun 2012 10:56:19 +0200
Received: from mol by mediacenter.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1SbpYo-0006R1-HT
 for barebox@lists.infradead.org; Tue, 05 Jun 2012 10:56:18 +0200
Date: Tue, 5 Jun 2012 10:56:18 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20120605085618.GA12403@pengutronix.de>
References: <1338842419-27037-1-git-send-email-dirker@gmail.com>
 <1338842419-27037-4-git-send-email-dirker@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1338842419-27037-4-git-send-email-dirker@gmail.com>
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
Subject: Re: [PATCH 3/6] make: check for greadlink first, fall back to readlink
To: barebox@lists.infradead.org

On Mon, Jun 04, 2012 at 10:40:16PM +0200, Dirk H=F6rner wrote:
> OS X' readlink does not have an -f option.
> =

> Signed-off-by: Dirk H=F6rner <dirker@gmail.com>
> ---
>  common/Makefile |    4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/common/Makefile b/common/Makefile
> index 9c14d7b..48cf715 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -48,7 +48,9 @@ ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
>  DEFAULT_ENVIRONMENT_PATH +=3D $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
>  endif
>  =

> -ENV_FILES :=3D $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PAT=
H); do find $${i} -type f -exec readlink -f '{}' \;; done)
> +READLINK :=3D $(shell command -v greadlink || echo readlink)
> +
> +ENV_FILES :=3D $(shell cd $(srctree); for i in $(DEFAULT_ENVIRONMENT_PAT=
H); do find $${i} -type f -exec $(READLINK) -f '{}' \;; done)

This is already broken. '-type f' only matches regular files. And ENV_FILES
is only used for make dependencies. And make follows links. I think what we
really need here is 'find $${i} ! -type d -print'

Michael

>  =

>  endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
>  =

> -- =

> 1.7.10.3
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
