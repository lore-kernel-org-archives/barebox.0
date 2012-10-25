Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRH5C-0005JV-8Z
 for barebox@lists.infradead.org; Thu, 25 Oct 2012 06:38:23 +0000
Date: Thu, 25 Oct 2012 08:38:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121025063820.GD27665@pengutronix.de>
References: <1351069940-26322-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351069940-26322-1-git-send-email-w.sang@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Makefile: disable CDPATH
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 24, 2012 at 11:12:20AM +0200, Wolfram Sang wrote:
> CDPATH has sideeffects when generating barebox_default_env.h (printing
> the directory name into the header file), causing a build failure.
> Disable it for the build.
> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>

Applied, thanks

Sascha

> ---
>  Makefile |    3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Makefile b/Makefile
> index 881680d..55262ad 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -136,6 +136,9 @@ ifeq ($(skip-makefile),)
>  PHONY += all
>  _all: all
>  
> +# CDPATH can have sideeffects; disable, since we do know where we want to cd to
> +export CDPATH=
> +
>  srctree		:= $(if $(KBUILD_SRC),$(KBUILD_SRC),$(CURDIR))
>  objtree		:= $(CURDIR)
>  src		:= $(srctree)
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
