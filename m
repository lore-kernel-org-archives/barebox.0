Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpAPd-0006Zz-VU
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 07:35:50 +0000
Date: Thu, 22 Oct 2015 09:35:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151022073528.GL14476@pengutronix.de>
References: <1445484848-32599-1-git-send-email-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445484848-32599-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: Re: [PATCH 1/2] kbuild: fix DTC-native include path for dts/ directory
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 22, 2015 at 12:34:06PM +0900, Masahiro Yamada wrote:
> For the pre-processor to include sources below dts/ directory,
> -I$(srctree)/dts/src is specified as an include path.  On the other
> hand, for the DTC-native, -i $(srctree)/dts/src/$(SRCARCH) is
> currently specified.
> 
> Theoretically, the pre-processor style (#include) and DTC-native
> style (/include/) should work with the same include paths.
> 
> Currently, there are no users for the latter, so we can fix it safely.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Applied both, thanks

Sascha

> ---
> 
>  scripts/Makefile.lib | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index e991f33..c529d15 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -258,7 +258,7 @@ quiet_cmd_dtc = DTC     $@
>  cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
>  	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
>  		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
> -		-i $(srctree)/dts/src/$(SRCARCH) \
> +		-i $(srctree)/dts/src/ \
>  		-d $(depfile).dtc $(dtc-tmp) ; \
>  	cat $(depfile).pre $(depfile).dtc > $(depfile)
>  
> -- 
> 1.9.1
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
