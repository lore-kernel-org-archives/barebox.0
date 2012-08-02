Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwxFO-00081g-C9
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 15:23:35 +0000
Date: Thu, 2 Aug 2012 17:23:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120802152331.GC1451@pengutronix.de>
References: <20120730100022.GD19759@game.jcrosoft.org>
 <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
 <1343642565-32257-8-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343642565-32257-8-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 08/12] ARM: add early malloc support needed by the
 decompressor
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 30, 2012 at 12:02:41PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This is not needed by lzo but by gunzip, xz and others.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/cpu/start.c |    7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index a54f5fd..f61c326 100644
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
> +	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
> +	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
> +	free_mem_end_ptr = free_mem_ptr + SZ_128K;

This is not needed here, so it should be better done in barebox_pbl()
when we actually need it. Also, global variables should not be used when
we do not run from the address we are linked at.

I fixed this before applying.

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
