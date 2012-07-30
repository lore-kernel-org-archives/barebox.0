Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Svkvv-0002vC-Pn
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 08:02:32 +0000
Date: Mon, 30 Jul 2012 10:02:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120730080227.GK30009@pengutronix.de>
References: <20120727183103.GX22657@game.jcrosoft.org>
 <1343413990-31891-1-git-send-email-plagnioj@jcrosoft.com>
 <1343413990-31891-10-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343413990-31891-10-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 10/12] ARM: add early malloc support needed by the
 decompressor
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 27, 2012 at 08:33:08PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This is not needed by lzo but by gunzip, xz and others.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/cpu/start.c |    7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index a54f5fd..f500ca8 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -28,6 +28,9 @@
>  #include <asm-generic/memory_layout.h>
>  #include <asm/sections.h>
>  
> +unsigned long free_mem_ptr;
> +unsigned long free_mem_end_ptr;
> +
>  #ifdef CONFIG_PBL_IMAGE
>  void __naked __section(.text_head_entry) pbl_start(void)
>  {
> @@ -193,6 +196,10 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
>  	/* clear bss */
>  	memset(__bss_start, 0, __bss_stop - __bss_start);
>  
> +	/* set 128 KiB before the STACK_BASE - 16 address for early malloc */
> +	free_mem_ptr = STACK_BASE - 0x20000 - 16;
> +	free_mem_end_ptr = STACK_BASE - 16;
> +

This assumes that the malloc area is directly before the stack. How
about using __bss_stop or _end instead?

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
