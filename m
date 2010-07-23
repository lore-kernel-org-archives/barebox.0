Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OcBdk-0003BV-0M
	for barebox@lists.infradead.org; Fri, 23 Jul 2010 06:21:49 +0000
Date: Fri, 23 Jul 2010 08:21:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100723062144.GN14113@pengutronix.de>
References: <1279724722-31325-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1279724722-31325-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] barebox_default_env: fix out of tree build
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean Christophe,

Applied to -next.

Thanks
 Sascha

On Wed, Jul 21, 2010 at 05:05:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/Makefile |    8 +++++---
>  scripts/genenv  |    8 +++++---
>  2 files changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/common/Makefile b/common/Makefile
> index 8b8686d..14f8643 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -26,6 +26,8 @@ ENV_FILES := $(shell cd $(srctree); for i in $(CONFIG_DEFAULT_ENVIRONMENT_PATH);
>  
>  endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
>  
> -include/barebox_default_env.h: $(ENV_FILES)
> -	$(Q)scripts/genenv $(srctree) $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
> -	$(Q)cat barebox_default_env | scripts/bin2c default_environment > $@
> +barebox_default_env: $(ENV_FILES)
> +	$(Q)$(srctree)/scripts/genenv $(srctree) $(objtree) $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
> +
> +include/barebox_default_env.h: barebox_default_env
> +	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
> diff --git a/scripts/genenv b/scripts/genenv
> index 6a833b1..de8b4f1 100755
> --- a/scripts/genenv
> +++ b/scripts/genenv
> @@ -1,17 +1,19 @@
>  #!/bin/bash
>  
>  # Generate the default environment file from a list of directories
> -# usage: genenv <basedir> <dir>...
> +# usage: genenv <basedir> <objdir> <dir>...
>  # where <basedir> is the base directory for relative pathes in <dir>
> +# where <objdir> is the base directory for relative pathes for result
> +objtree=$2
>  cd $1 || exit 1
> -shift
> +shift 2
>  
>  tempdir=$(mktemp -d)
>  
>  for i in $*; do
>  	cp -r $i/* $tempdir
>  done
> -scripts/bareboxenv -s $tempdir barebox_default_env
> +$objtree/scripts/bareboxenv -s $tempdir $objtree/barebox_default_env
>  
>  rm -r $tempdir
>  
> -- 
> 1.7.1
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
