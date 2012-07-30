Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Svkkn-0000Qh-P2
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 07:51:03 +0000
Date: Mon, 30 Jul 2012 09:50:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120730075056.GI30009@pengutronix.de>
References: <20120727183103.GX22657@game.jcrosoft.org>
 <1343413990-31891-1-git-send-email-plagnioj@jcrosoft.com>
 <1343413990-31891-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343413990-31891-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 07/12] ARM: Separate assembler functions into their own
 section
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 27, 2012 at 08:33:05PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> To let the linker remove unused functions.

This patch contains the hunks I intentionally removed from the second
version of this patch because they are wrong. Please drop this patch.

Sascha

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/lib/findbit.S |    9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/lib/findbit.S b/arch/arm/lib/findbit.S
> index ef4caff..422455d 100644
> --- a/arch/arm/lib/findbit.S
> +++ b/arch/arm/lib/findbit.S
> @@ -22,6 +22,7 @@
>   * Purpose  : Find a 'zero' bit
>   * Prototype: int find_first_zero_bit(void *addr, unsigned int maxbit);
>   */
> +.section .text._find_first_zero_bit_le
>  ENTRY(_find_first_zero_bit_le)
>  		teq	r1, #0
>  		beq	3f
> @@ -43,6 +44,7 @@ ENDPROC(_find_first_zero_bit_le)
>   * Purpose  : Find next 'zero' bit
>   * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
>   */
> +.section .text._find_next_zero_bit_le
>  ENTRY(_find_next_zero_bit_le)
>  		teq	r1, #0
>  		beq	3b
> @@ -63,6 +65,7 @@ ENDPROC(_find_next_zero_bit_le)
>   * Purpose  : Find a 'one' bit
>   * Prototype: int find_first_bit(const unsigned long *addr, unsigned int maxbit);
>   */
> +.section .text._find_first_bit_le
>  ENTRY(_find_first_bit_le)
>  		teq	r1, #0
>  		beq	3f
> @@ -84,6 +87,7 @@ ENDPROC(_find_first_bit_le)
>   * Purpose  : Find next 'one' bit
>   * Prototype: int find_next_zero_bit(void *addr, unsigned int maxbit, int offset)
>   */
> +.section .text._find_next_bit_le
>  ENTRY(_find_next_bit_le)
>  		teq	r1, #0
>  		beq	3b
> @@ -101,6 +105,7 @@ ENDPROC(_find_next_bit_le)
>  
>  #ifdef __ARMEB__
>  
> +.section .text._find_first_zero_bit_be
>  ENTRY(_find_first_zero_bit_be)
>  		teq	r1, #0
>  		beq	3f
> @@ -118,6 +123,7 @@ ENTRY(_find_first_zero_bit_be)
>  		mov	pc, lr
>  ENDPROC(_find_first_zero_bit_be)
>  
> +.section .text._find_next_zero_bit_be
>  ENTRY(_find_next_zero_bit_be)
>  		teq	r1, #0
>  		beq	3b
> @@ -135,6 +141,7 @@ ENTRY(_find_next_zero_bit_be)
>  		b	2b			@ loop for next bit
>  ENDPROC(_find_next_zero_bit_be)
>  
> +.section .text._find_first_bit_be
>  ENTRY(_find_first_bit_be)
>  		teq	r1, #0
>  		beq	3f
> @@ -152,6 +159,7 @@ ENTRY(_find_first_bit_be)
>  		mov	pc, lr
>  ENDPROC(_find_first_bit_be)
>  
> +.section .text._find_next_bit_be
>  ENTRY(_find_next_bit_be)
>  		teq	r1, #0
>  		beq	3b
> @@ -173,6 +181,7 @@ ENDPROC(_find_next_bit_be)
>  /*
>   * One or more bits in the LSB of r3 are assumed to be set.
>   */
> +.section .text.L_found
>  .L_found:
>  #if __LINUX_ARM_ARCH__ >= 5
>  		rsb	r0, r3, #0
> -- 
> 1.7.10.4
> 
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
