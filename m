Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBdy4-0002sT-9a
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 05:59:28 +0000
Date: Mon, 28 Jul 2014 07:59:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140728055905.GV23235@pengutronix.de>
References: <1406395031-8756-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406395031-8756-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/2] treewide: drop Doxygen stuff
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jul 26, 2014 at 09:17:10PM +0400, Antony Pavlov wrote:
> Doxygen documentation is removed in the commit
> 
>   commit 98360be0fefd58bf27df03c47d887dd676a31d73
>   Author: Sascha Hauer <s.hauer@pengutronix.de>
>   Date:   Tue Jun 17 10:27:03 2014 +0200
> 
>       Documentation: remove doxygen documentation
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  .gitignore | 1 -
>  Makefile   | 6 +-----
>  README     | 2 +-
>  3 files changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/.gitignore b/.gitignore
> index 19534c9..ddeb7b1 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -67,7 +67,6 @@ include/linux/compile.h
>  include/generated
>  
>  # Generated files
> -Doxyfile.version
>  Documentation/commands/*.rst
>  doctrees/
>  
> diff --git a/Makefile b/Makefile
> index 69320d8..0fde711 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -774,10 +774,6 @@ include/config/kernel.release: include/config/auto.conf FORCE
>  	$(Q)rm -f $@
>  	$(Q)echo $(KERNELVERSION)$(localversion) > $@
>  
> -Doxyfile.version: include/config/auto.conf FORCE
> -	$(Q)rm -f $@
> -	$(Q)echo "PROJECT_NUMBER = $(KERNELRELEASE)" > $@
> -
>  # Things we need to do before we recursively start building the kernel
>  # or the modules are listed in "prepare".
>  # A multi level approach is used. prepareN is processed before prepareN-1.
> @@ -996,7 +992,7 @@ CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
>                  .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
>  		.tmp_kallsyms* common/barebox_default_env* barebox.ldr \
>  		scripts/bareboxenv-target barebox-flash-image \
> -		Doxyfile.version barebox.srec barebox.s5p barebox.ubl \
> +		barebox.srec barebox.s5p barebox.ubl \
>  		barebox.uimage barebox.spi barebox.kwb barebox.kwbuart \
>  		barebox.efi
>  
> diff --git a/README b/README
> index cec9ccb..3862f60 100644
> --- a/README
> +++ b/README
> @@ -179,7 +179,7 @@ net/                  -> Networking stuff
>  
>  scripts/              -> Kconfig system
>  
> -Documentation/        -> Doxygen generated documentation
> +Documentation/        -> Sphinx generated documentation
>  
>  
>  Release Strategy
> -- 
> 2.0.1
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
