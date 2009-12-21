Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMfsL-0001GA-JC
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 10:52:31 +0000
Date: Mon, 21 Dec 2009 11:51:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221105128.GB15126@pengutronix.de>
References: <alpine.LFD.2.00.0912210515100.12260@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912210515100.12260@localhost>
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
Subject: Re: [PATCH] scripts: Delete non-barebox content from scripts/.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 21, 2009 at 05:19:06AM -0500, Robert P. J. Day wrote:
> 
> Remove scripts/ content having nothing to do with barebox:
> 
>   - pnmtologo
>   - conmakehash
>   - unifdef
>   - genksyms
> 
> ---
> 
>   if there's anything else that can be added to this patch (that is,
> scripts/ content that can be tossed), i can resubmit a more complete
> patch.  otherwise, might as well just apply as is.

Applied as is. If there's more to cleanup, a second patch doesn't hurt.

Sascha


> 
> 
> diff --git a/scripts/Makefile b/scripts/Makefile
> index a6829c5..c22a8b6 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -3,14 +3,8 @@
>  # the kernel for the build process.
>  # ---------------------------------------------------------------------------
>  # kallsyms:      Find all symbols in barebox
> -# pnmttologo:    Convert pnm files to logo files
> -# conmakehash:   Create chartable
> -# conmakehash:	 Create arrays for initializing the kernel console tables
> 
>  hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
> -hostprogs-$(CONFIG_LOGO)         += pnmtologo
> -hostprogs-$(CONFIG_VT)           += conmakehash
> -hostprogs-$(CONFIG_PROM_CONSOLE) += conmakehash
>  hostprogs-y                      += bin2c
>  hostprogs-y                      += mkimage
>  hostprogs-y                      += bareboxenv
> @@ -18,10 +12,6 @@ hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
> 
>  always		:= $(hostprogs-y) $(hostprogs-m)
> 
> -# The following hostprogs-y programs are only build on demand
> -hostprogs-y += unifdef
> -
> -#subdir-$(CONFIG_MODVERSIONS) += genksyms
>  subdir-y                     += mod
> 
>  # Let clean descend into subdirs
> 
> 
> 
> ========================================================================
> Robert P. J. Day                               Waterloo, Ontario, CANADA
> 
>             Linux Consulting, Training and Kernel Pedantry.
> 
> Web page:                                          http://crashcourse.ca
> Twitter:                                       http://twitter.com/rpjday
> ========================================================================
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
