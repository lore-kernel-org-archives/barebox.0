Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzi1M-0008GD-I5
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 13:48:30 +0000
Date: Mon, 19 Aug 2019 15:48:26 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20190819134826.zr2ncp6yxhyjdf22@pengutronix.de>
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
 <20190819133847.17015-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819133847.17015-2-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/8] dtc: Update update-dtc-source.sh from Linux
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Aug 19, 2019 at 03:38:40PM +0200, Sascha Hauer wrote:
> This updates update-dtc-source.sh from Linux-5.3-rc4.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/dtc/update-dtc-source.sh | 25 +++++++++++++------------
>  1 file changed, 13 insertions(+), 12 deletions(-)
> 
> diff --git a/scripts/dtc/update-dtc-source.sh b/scripts/dtc/update-dtc-source.sh
> index e29f5af00f..7dd29a0362 100755
> --- a/scripts/dtc/update-dtc-source.sh
> +++ b/scripts/dtc/update-dtc-source.sh
> @@ -4,14 +4,15 @@
>  #
>  # This script assumes that the dtc and the linux git trees are in the
>  # same directory. After building dtc in the dtc directory, it copies the
> -# source files into the scripts/dtc directory in barebox and creates a git
> -# commit updating them to the new version.
> +# source files and generated source file(s) into the scripts/dtc directory
> +# in the kernel and creates a git commit updating them to the new
> +# version.

>  #
> -# Usage: from the top level barebox source tree, run:
> +# Usage: from the top level Linux source tree, run:
>  # $ ./scripts/dtc/update-dtc-source.sh
>  #
>  # The script will change into the dtc tree, build and test dtc, copy the
> -# relevant files into the barebox tree and create a git commit. The commit
> +# relevant files into the kernel tree and create a git commit. The commit
>  # message will need to be modified to reflect the version of DTC being
>  # imported
>  #

I don't know if those hunks were changed by accident, but it looks like
the previous version made more sense.

 - Roland

> @@ -31,9 +32,9 @@ DTC_UPSTREAM_PATH=`pwd`/../dtc
>  DTC_LINUX_PATH=`pwd`/scripts/dtc
>  
>  DTC_SOURCE="checks.c data.c dtc.c dtc.h flattree.c fstree.c livetree.c srcpos.c \
> -		srcpos.h treesource.c util.c util.h version_gen.h Makefile.dtc \
> -		dtc-lexer.l dtc-parser.y fdtget.c"
> -LIBFDT_SOURCE="fdt.c fdt.h fdt_addresses.c fdt_empty_tree.c \
> +		srcpos.h treesource.c util.c util.h version_gen.h yamltree.c Makefile.dtc \
> +		dtc-lexer.l dtc-parser.y"
> +LIBFDT_SOURCE="Makefile.libfdt fdt.c fdt.h fdt_addresses.c fdt_empty_tree.c \
>  		fdt_overlay.c fdt_ro.c fdt_rw.c fdt_strerror.c fdt_sw.c \
>  		fdt_wip.c libfdt.h libfdt_env.h libfdt_internal.h"
>  
> @@ -58,13 +59,13 @@ for f in $DTC_SOURCE; do
>  	git add ${f}
>  done
>  for f in $LIBFDT_SOURCE; do
> -       cp ${DTC_UPSTREAM_PATH}/libfdt/${f} ${f}
> -       git add ${f}
> +       cp ${DTC_UPSTREAM_PATH}/libfdt/${f} libfdt/${f}
> +       git add libfdt/${f}
>  done
>  
> -sed -i -- 's/#include <libfdt_env.h>/#include "libfdt_env.h"/g' ./libfdt.h
> -sed -i -- 's/#include <fdt.h>/#include "fdt.h"/g' ./libfdt.h
> -git add ./libfdt.h
> +sed -i -- 's/#include <libfdt_env.h>/#include "libfdt_env.h"/g' ./libfdt/libfdt.h
> +sed -i -- 's/#include <fdt.h>/#include "fdt.h"/g' ./libfdt/libfdt.h
> +git add ./libfdt/libfdt.h
>  
>  commit_msg=$(cat << EOF
>  scripts/dtc: Update to upstream version ${dtc_version}
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
