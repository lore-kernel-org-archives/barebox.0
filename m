Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjPFE-0007eT-HX
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 07:31:57 +0000
Date: Mon, 3 Jun 2013 09:31:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130603073132.GB26150@pengutronix.de>
References: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
 <1370073169-29009-4-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1370073169-29009-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 3/6] MIPS: rzx50: pbl: use debug_ll
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jun 01, 2013 at 11:52:46AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/boards/rzx50/include/board/board_pbl_start.h |    6 ++++++
>  arch/mips/mach-xburst/include/mach/debug_ll_jz4750d.h  |    4 ++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/arch/mips/boards/rzx50/include/board/board_pbl_start.h b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
> index cba3e7f..f71641a 100644
> --- a/arch/mips/boards/rzx50/include/board/board_pbl_start.h
> +++ b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
> @@ -18,6 +18,7 @@
>   */
>  
>  #include <asm/pbl_macros.h>
> +#include <mach/debug_ll.h>
>  
>  	.macro	board_pbl_start
>  	.set	push
> @@ -28,6 +29,11 @@
>  	/* CPU/SoC specific setup ... */
>  	/* ... absent */
>  
> +	debug_ll_ns16550_init
> +
> +	debug_ll_ns16550_outc '.'
> +	debug_ll_ns16550_outnl
> +
>  	copy_to_link_location	pbl_start

I had to drop this series beginning from this patch as it breaks
bisectibility. There seem to be some C stuff leaking in to the
assembler. I tried to fix this myself but I wasn't really sure what to
to. Could you update this based on current master?

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
