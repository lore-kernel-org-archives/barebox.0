Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ57q-0007en-NR
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 08:48:43 +0000
Date: Wed, 7 Oct 2020 10:48:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201007084841.GD12463@pengutronix.de>
References: <20200916151951.29117-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200916151951.29117-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2] kbuild: add dtbs target for building all dtbs of an
 ARCH
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 16, 2020 at 05:19:51PM +0200, Ahmad Fatoum wrote:
> As described in the documentation, upstream device trees extended by
> barebox should take care to cause compile errors, not runtime errors,
> when the paths they extend disappear. This way, breakage can be easily
> detected when synchronizing the dts/ directory and fixed right then.
> 
> Make this process easier by providing a dtbs target that builds all
> device trees available in arch/$(SRCARCH)/dts/.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - populate $(targets) with device trees to build, so make dtbs does
>     only build dts files changed since the last make dtbs run (Sascha)
> ---
>  Makefile | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Makefile b/Makefile
> index 906068036715..3bf5cbce32a4 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -998,6 +998,22 @@ include/generated/version.h: FORCE
>  include/generated/utsrelease.h: include/config/kernel.release FORCE
>  	$(call filechk,utsrelease.h)
>  
> +# ---------------------------------------------------------------------------
> +# Devicetree files
> +
> +ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/dts/),)
> +dtstree := arch/$(SRCARCH)/dts
> +endif
> +
> +ifneq ($(dtstree),)
> +
> +PHONY += dtbs
> +all_dtbs += $(patsubst $(srctree)/%.dts,$(objtree)/%.dtb,$(wildcard $(srctree)/$(dtstree)/*.dts))
> +targets += $(all_dtbs)
> +dtbs: $(all_dtbs)
> +
> +endif
> +
>  # ---------------------------------------------------------------------------
>  # Modules
>  
> @@ -1173,6 +1189,10 @@ help:
>  	@$(if $(archhelp),$(archhelp),\
>  		echo '  No architecture specific help defined for $(SRCARCH)')
>  	@echo  ''
> +	@$(if $(dtstree), \
> +		echo '  Devicetree:'; \
> +		echo '    * dtbs             - Build device tree blobs for all boards'; \
> +		echo '')
>  	@$(if $(boards), \
>  		$(foreach b, $(boards), \
>  		printf "  %-24s - Build for %s\\n" $(b) $(subst _defconfig,,$(b));) \
> -- 
> 2.28.0
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
