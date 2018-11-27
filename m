Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRYM9-0006jU-Mg
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 08:04:31 +0000
Date: Tue, 27 Nov 2018 09:04:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181127080417.fj52tvzngiv2kpih@pengutronix.de>
References: <20181127073714.16472-1-o.rempel@pengutronix.de>
 <20181127073714.16472-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181127073714.16472-6-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 05/10] MIPS: multiimage: add ENTRY_FUNCTION macros
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 27, 2018 at 08:37:09AM +0100, Oleksij Rempel wrote:
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/include/asm/asm.h | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 
> diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
> index 12e17581b8..b9ccccc0cc 100644
> --- a/arch/mips/include/asm/asm.h
> +++ b/arch/mips/include/asm/asm.h
> @@ -79,6 +79,35 @@ symbol:		.frame	sp, framesize, rpc
>  		.globl	symbol;                         \
>  symbol:
>  
> +/*
> + * ENTRY_FUNCTION - mark start of entry function
> + */
> +#define ENTRY_FUNCTION(symbol)				\
> +	.set noreorder;					\
> +	.section .text_head_entry.BOARD_PBL_START;	\

In your boards you have:

#define BOARD_PBL_START start_8devices_lima
ENTRY_FUNCTION(BOARD_PBL_START)

It's strange that you pass in the same string both as macro argument and
preprocessor define. Seems like you should drop BOARD_PBL_START and use
"symbol" directly.

> +							\
> +	la	a0, dtb_start;				\
> +	la	a1, dtb_end;				\
> +	la	v0, pbl_main_entry;			\
> +	jal	v0;					\
> +	 nop;						\

Whitespace inconsistency here.

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
