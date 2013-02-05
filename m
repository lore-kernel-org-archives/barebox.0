Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U2e8O-0006lq-Or
 for barebox@lists.infradead.org; Tue, 05 Feb 2013 08:44:09 +0000
Date: Tue, 5 Feb 2013 09:44:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130205084404.GM1906@pengutronix.de>
References: <1360008030-4169-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360008030-4169-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: pbl: fix none compression support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 05, 2013 at 12:00:30AM +0400, Antony Pavlov wrote:
> Here's the error message:
> 
>   AS      arch/mips/pbl/piggy.shipped.o
>   arch/mips/pbl/piggy.shipped.S: Assembler messages:
>   arch/mips/pbl/piggy.shipped.S:1: Error: unrecognized opcode `globl input_data'
>   make[1]: *** [arch/mips/pbl/piggy.shipped.o] Error 1
>   make: *** [zbarebox.bin] Error 2
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/mips/pbl/piggy.shipped.S |   12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/mips/pbl/piggy.shipped.S b/arch/mips/pbl/piggy.shipped.S
> index 963262d..8a35f6b 100644
> --- a/arch/mips/pbl/piggy.shipped.S
> +++ b/arch/mips/pbl/piggy.shipped.S
> @@ -1,6 +1,6 @@
> -	.section .piggydata,#alloc
> -	.globl  input_data
> -input_data:
> -	.incbin "arch/mips/pbl/piggy.shipped"
> -	.globl  input_data_end
> -input_data_end:
> +#include <asm/asm.h>
> +
> +	.section .data
> +EXPORT(input_data)
> +	.incbin	"arch/mips/pbl/piggy.shipped"
> +EXPORT(input_data_end)
> -- 
> 1.7.10.4
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
