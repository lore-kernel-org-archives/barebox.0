Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mpi-0001Pg-VO
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 13:08:56 +0000
Message-ID: <7151fbe6a872c23e28a5933e793cdcc7e6494c88.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 22 Aug 2019 15:08:53 +0200
In-Reply-To: <20190822125158.10296-3-s.hauer@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
 <20190822125158.10296-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/8] ARM: aarch64: Fix get_runtime_offset after relocation
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On Thu, 2019-08-22 at 14:51 +0200, Sascha Hauer wrote:
> get_runtime_offset shall return the offset between the address we are
> running at and the address we are linked at. This value obviously
> changes when we relocate the binary. cf3b09737b tried to avoid using
> R_AARCH64_RELATIVE relocations, but in fact this is exactly what the
> function needs to work. Consider barebox starting at 0x10000000
> when we are linked at 0x0 then get_runtime_offset() should return
> 0x10000000 before relocate_to_current_adr(), but afterwards it should
> return 0x0.
> 
> This patch brings back the previously removed "a" flag. Since gcc5
> doesn't put the values of R_AARCH64_RELATIVE fixup'd relocations
> into the binary but zeroes instead, we help ourselves by basing
> get_runtime_offset on an address which actually is zero. With
> CONFIG_RELOCATABLE=y the binary is always linked to 0x0, so _text
> is initially zero.
> 
> Tested with gcc-5.4.0 (which was "fixed" by cf3b09737b) and gcc-
> 8.2.1.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/lib64/runtime-offset.S | 18 +++---------------
>  1 file changed, 3 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm/lib64/runtime-offset.S
> b/arch/arm/lib64/runtime-offset.S
> index 6624fdfa15..d1b8bdac3c 100644
> --- a/arch/arm/lib64/runtime-offset.S
> +++ b/arch/arm/lib64/runtime-offset.S
> @@ -1,31 +1,19 @@
>  #include <linux/linkage.h>
>  #include <asm/assembler.h>
>  
> -/*
> - * The .section directive below intentionally omits "a", since that
> - * appears to be the simplest way to force assembler to not generate
> - * R_AARCH64_RELATIVE relocation for
> - *
> - * linkadr:
> - *	.quad get_runtime_offset
> - *
> - * statement below. While having that relocating was relatively
> - * harmless with GCC8, builging the code with GCC5 resulted in
> - * "linkaddr" being initialized to 0 causing complete boot breakdown
> - */
> -.section ".text_bare_init","x"
> +.section ".text_bare_init","ax"
>  
>  /*
>   * Get the offset between the link address and the address
>   * we are currently running at.
>   */
>  ENTRY(get_runtime_offset)
> -1:	adr x0, 1b
> +1:	adr x0, _text
>  	ldr x1, linkadr
>  	subs x0, x0, x1
>  	ret
>  
>  .align 3
>  linkadr:
> -.quad get_runtime_offset
> +.quad _text
>  ENDPROC(get_runtime_offset)

Acked-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

- rcz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
