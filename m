Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SaATf-0005Vh-Ir
 for barebox@lists.infradead.org; Thu, 31 May 2012 18:52:09 +0000
Date: Thu, 31 May 2012 20:52:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120531185203.GD30400@pengutronix.de>
References: <1337867420-23444-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337867420-23444-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] MIPS: XBurst: suitable solution for per-board debug_ll
 options
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 24, 2012 at 05:50:20PM +0400, Antony Pavlov wrote:
> In the commit 40492a0c1305835c996e15eb1cce2406473ae76d
> (MIPS: add common header file for DEBUG_LL via NS16550)
> introduced common DEBUG_LL via NS16550 for MIPS
> (see file arch/mips/include/debug_ll_ns16550.h).
> 
> In the commit 1cbe2b2c00de0efca503a983d0d008833f186f33
> (MIPS: XBurst: add Ritmix RZX-50 board support)
> the file debug_ll_ns16550.h used in
> the file arch/mips/mach-xburst/include/mach/debug_ll.h.
> 
> Usage looks like this:
> 
> ------------------------------------------------
> +#ifdef CONFIG_BOARD_RZX50
> +#include <mach/debug_ll_jz4755.h>
> +#endif
> +
> +#include <debug_ll_ns16550.h>
> ------------------------------------------------
> 
> So after adding another board (e.g. A320) we will have something like this:
> 
> ------------------------------------------------
>  #ifdef CONFIG_BOARD_RZX50
>  #include <mach/debug_ll_jz4755.h>
>  #endif
> 
> +#ifdef CONFIG_BOARD_A320
> +#include <mach/debug_ll_jz4740.h>
> +#endif
> 
>  #include <debug_ll_ns16550.h>
> ------------------------------------------------
> 
> This approach has disadvantage:
> * the files mach/debug_ll_jz4740.h and mach/debug_ll_jz4755.h
> (they go to arch/mips/arch-xburst) are __BOARD-SPECIFIC__
> (not SOC- or mach-specific!); The file mach-xburst/include/mach/debug_ll.h
> is outside board directory, but it contain some board related information.
> 
> This commit introduce more suitable solution.

Looks good. OK to apply?

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
