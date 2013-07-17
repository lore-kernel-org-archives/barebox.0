Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzO1U-0004kL-WA
 for barebox@lists.infradead.org; Wed, 17 Jul 2013 09:27:50 +0000
Date: Wed, 17 Jul 2013 11:27:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130717092725.GD10380@pengutronix.de>
References: <20130716123012.3cea8ffd77234ce1edd94493@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130716123012.3cea8ffd77234ce1edd94493@gmail.com>
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
Subject: Re: ARM: stack region-related issue
To: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 16, 2013 at 12:30:12PM +0400, antonynpavlov@gmail.com wrote:
> Hi, all!
> 
> We have common request_sdram_region("stack", ...)
> in mem_malloc_resource() (common/memory.c).
> 
> But we also have ARM-special request_sdram_region("stack", ...)
> inside arm_request_stack() initcall.
> 
> In normal situation there is no problem at all.
> 
> Here is the 'iomem' log for versatile qemu virtual board:
> 
> 0x00000000 - 0x03ffffff (size 0x04000000) ram0
> 0x00c00000 - 0x00ffffff (size 0x00400000) malloc space
> 0x01000000 - 0x0102d5f3 (size 0x0002d5f4) barebox
> 0x0102d5f4 - 0x0102f307 (size 0x00001d14) barebox data
> 0x0102f308 - 0x010346db (size 0x000053d4) bss
> 0x03ff8000 - 0x03ffffff (size 0x00008000) stack
> 
> But if the board use MEMORY_LAYOUT_FIXED then
> we can have a problem.
> 
> I enabled CONFIGURABLE_MEMORY_LAYOUT for versatile.
> Here is a patch:
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index bd10591..2969b19 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -134,6 +134,7 @@ config ARCH_VERSATILE
>  	bool "ARM Versatile boards (ARM926EJ-S)"
>  	select CPU_ARM926T
>  	select GPIOLIB
> +	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
>  
>  config ARCH_VEXPRESS
>  	bool "ARM Vexpres boards"
> 
> I have rebuilt barebox with this memory layout:
> 
> CONFIG_HAVE_CONFIGURABLE_MEMORY_LAYOUT=y
> # CONFIG_MEMORY_LAYOUT_DEFAULT is not set
> CONFIG_MEMORY_LAYOUT_FIXED=y
> CONFIG_STACK_BASE=0x20000
> CONFIG_STACK_SIZE=0x8000
> CONFIG_MALLOC_BASE=0x00c00000
> CONFIG_MALLOC_SIZE=0x400000
> 
> Here is the 'iomem' log for MEMORY_LAYOUT_FIXED:
> 
> 0x00000000 - 0x03ffffff (size 0x04000000) ram0
> 0x00020000 - 0x00027fff (size 0x00008000) stack
> 0x00c00000 - 0x00ffffff (size 0x00400000) malloc space
> 0x01000000 - 0x0102d61b (size 0x0002d61c) barebox
> 0x0102d61c - 0x0102f327 (size 0x00001d0c) barebox data
> 0x0102f328 - 0x010346fb (size 0x000053d4) bss
> 0x03ff8000 - 0x03ffffff (size 0x00008000) stack
> 
> The result is confusing!
> We got two stack regions:
>  * the first region registered by common code (CONFIG_STACK_BASE=0x20000);
>  * the second region registered by ARM-specific code.

We should probably get rid of CONFIG_MEMORY_LAYOUT_FIXED completely.
Currently this is used only by some omap xloader configurations, but
this could be changed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
