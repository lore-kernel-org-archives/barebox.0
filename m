Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVV5v-0003TM-3A
 for barebox@lists.infradead.org; Mon, 04 May 2020 07:00:53 +0000
Date: Mon, 4 May 2020 09:00:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200504070049.GP5877@pengutronix.de>
References: <20200430051357.766084-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430051357.766084-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 1/4] kbuild: do not delete $@ explicitly on failure
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Thu, Apr 30, 2020 at 02:13:54PM +0900, Masahiro Yamada wrote:
> The .DELETE_ON_ERROR special target is specified in scripts/Kbuild.include
> 
> You do not need to delete $@ explicitly when the command fails.
> GNU Make automatically does it.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Applied, thanks

Sascha

> 
>  Makefile                | 6 +-----
>  arch/arm/tools/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index de9b40ade..967c27909 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -643,11 +643,7 @@ define rule_barebox__
>  
>  	$(Q)$(if $($(quiet)cmd_sysmap),                                      \
>  	  echo '  $($(quiet)cmd_sysmap)  System.map' &&)                     \
> -	$(cmd_sysmap) $@ System.map;                                         \
> -	if [ $$? -ne 0 ]; then                                               \
> -		rm -f $@;                                                    \
> -		false;                                                       \
> -	fi;
> +	$(cmd_sysmap) $@ System.map
>  endef
>  
>  ifdef CONFIG_KALLSYMS
> diff --git a/arch/arm/tools/Makefile b/arch/arm/tools/Makefile
> index 67ae9e701..bff825e58 100644
> --- a/arch/arm/tools/Makefile
> +++ b/arch/arm/tools/Makefile
> @@ -7,4 +7,4 @@
>  include/generated/mach-types.h: $(src)/gen-mach-types $(src)/mach-types
>  	$(Q)$(kecho) '  Generating $@'
>  	$(Q)mkdir -p $(dir $@)
> -	$(Q)$(AWK) -f $^ > $@ || { rm -f $@; /bin/false; }
> +	$(Q)$(AWK) -f $^ > $@
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
