Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLAR2-0006l6-P3
 for barebox@lists.infradead.org; Wed, 05 Mar 2014 11:56:30 +0000
Date: Wed, 5 Mar 2014 13:55:57 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20140305115557.GJ4238@tarshish>
References: <1394020031-339-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1394020031-339-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] Makefile: add target for gtags
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Steffen,

On Wed, Mar 05, 2014 at 12:47:11PM +0100, Steffen Trumtrar wrote:
> The scripts/tags.sh file already supports the generation of gtags with
> GNU GLOBAL. The only thing missing is the makefile target to use it.
> 
> Copy the setup from the Linux Kernel to allow usage of gtags with barebox.

Adding gnu global generated files to top level .gitignore would be nice as 
well. See kernel commit f2ac5e78928bf.

baruch

> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  Makefile |    7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 640e589..502e009 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -353,7 +353,7 @@ endif
>  # of make so .config is not included in this case either (for *config).
>  
>  no-dot-config-targets := clean mrproper distclean \
> -			 cscope TAGS tags help %docs check% \
> +			 cscope gtags TAGS tags help %docs check% \
>  			 include/generated/version.h headers_% \
>  			 kernelrelease kernelversion
>  
> @@ -986,7 +986,7 @@ MRPROPER_DIRS  += include/config include2 usr/include
>  MRPROPER_FILES += .config .config.old include/asm .version .old_version \
>                    include/generated/autoconf.h include/generated/version.h      \
>                    include/generated/utsrelease.h include/config.h           \
> -		  Module.symvers tags TAGS cscope*
> +		  Module.symvers tags TAGS cscope* GPATH GTAGS GRTAGS GSYMS
>  
>  # clean - Delete most, but leave enough to build external modules
>  #
> @@ -1072,6 +1072,7 @@ help:
>  	@echo  '  dir/file.ko     - Build module including final link'
>  	@echo  '  tags/TAGS	  - Generate tags file for editors'
>  	@echo  '  cscope	  - Generate cscope index'
> +	@echo  '  gtags	  	  - Generate GNU GLOBAL index'
>  	@echo  '                    (default: $(INSTALL_HDR_PATH))'
>  	@echo  ''
>  	@echo  'Static analysers'
> @@ -1114,7 +1115,7 @@ htmldocs: Doxyfile.version
>  quiet_cmd_tags = GEN     $@
>        cmd_tags = $(CONFIG_SHELL) $(srctree)/scripts/tags.sh $@
>  
> -tags TAGS cscope: FORCE
> +tags TAGS cscope gtags: FORCE
>  	$(call cmd,tags)
>  
>  
> -- 
> 1.7.10.4

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
