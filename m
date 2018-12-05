Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUStJ-0007qe-SN
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 08:50:47 +0000
Received: by mail-lf1-x144.google.com with SMTP id n18so14109794lfh.6
 for <barebox@lists.infradead.org>; Wed, 05 Dec 2018 00:50:35 -0800 (PST)
Date: Wed, 5 Dec 2018 11:50:31 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20181205115031.d90c15ad4703eba8f8be818d@gmail.com>
In-Reply-To: <20181127091935.2992-9-o.rempel@pengutronix.de>
References: <20181127091935.2992-1-o.rempel@pengutronix.de>
 <20181127091935.2992-9-o.rempel@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 08/10] MIPS: port all mach* to multiimage
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 27 Nov 2018 10:19:33 +0100
Oleksij Rempel <o.rempel@pengutronix.de> wrote:


...

> diff --git a/arch/mips/boards/8devices-lima/include/board/board_pbl_start=
.h b/arch/mips/boards/8devices-lima/lowlevel.S
> similarity index 78%
> rename from arch/mips/boards/8devices-lima/include/board/board_pbl_start.h
> rename to arch/mips/boards/8devices-lima/lowlevel.S
> index e95aa49256..a619747f39 100644
> --- a/arch/mips/boards/8devices-lima/include/board/board_pbl_start.h
> +++ b/arch/mips/boards/8devices-lima/lowlevel.S
> @@ -15,51 +15,39 @@
>   *
>   */
>  =

> -#include <mach/debug_ll_ar9344.h>
> +#define BOARD_PBL_START start_8devices_lima
> +
> +#include <mach/debug_ll.h>
> +#include <asm/asm.h>
>  #include <asm/pbl_macros.h>
>  #include <mach/pbl_macros.h>
>  #include <mach/pbl_ll_init_qca4531.h>
>  #include <asm/pbl_nmon.h>
>  =

> -	.macro	board_pbl_start
> -	.set	push
> -	.set	noreorder
> +ENTRY_FUNCTION(BOARD_PBL_START)
>  =

>  	mips_barebox_10h
>  =

> -	debug_ll_ar9344_init
> -
> -	debug_ll_outc '1'
> +	debug_ll_ath79_init
>  =


I suppose there is a problem with simultaneous debug_ll support for AR9344 =
and AR9331 in one binary.
the Kconfig DEBUG_AR9331_UART and DEBUG_AR9344_UART options are mutually ex=
clusive.

Your approach makes it possible to build barebox binary image for AR9331 bo=
ard with debug_ll code for AR9344
and vice versa.

>  	hornet_mips24k_cp0_setup
> -	debug_ll_outc '2'
>  =

>  	/* test if we are in the SRAM */
>  	pbl_blt 0xbd000000 1f t8

"if $pc < 0xbd000000 then jump to 1f"

> -	debug_ll_outc '3'
>  	b skip_flash_test
>  	nop
>  1:
>  	/* test if we are in the flash */
>  	pbl_blt 0xbf000000 skip_pll_ram_config t8

"if $pc < 0xbf000000 then jump to skip_pll_ram_config"


The code checks that $pc is less than 0xbd000000 if true then the code chec=
ks
that $pc is less than 0xbf000000. The second check is redundant!



> -	debug_ll_outc '4'
>  skip_flash_test:
>  =

>  	pbl_qca4531_ddr2_550_550_init
>  =

> -	debug_ll_outc '5'
>  	/* Initialize caches... */
>  	mips_cache_reset
>  =

>  	/* ... and enable them */
>  	dcache_enable
>  skip_pll_ram_config:
> -	debug_ll_outc '6'
> -	debug_ll_outnl
> -
> -	mips_nmon
> -
> -	copy_to_link_location	pbl_start
>  =

> -	.set	pop
> -	.endm
> +ENTRY_FUNCTION_END(BOARD_PBL_START, qca4531_8devices_lima)

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
