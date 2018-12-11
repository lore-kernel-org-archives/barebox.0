Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWgGP-0006VU-Ez
 for barebox@lists.infradead.org; Tue, 11 Dec 2018 11:31:47 +0000
Received: by mail-lf1-x131.google.com with SMTP id p86so10504412lfg.5
 for <barebox@lists.infradead.org>; Tue, 11 Dec 2018 03:31:34 -0800 (PST)
Date: Tue, 11 Dec 2018 14:31:30 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20181211143130.573eb44a07866eb62f56e7ed@gmail.com>
In-Reply-To: <a749dfd0-031f-ba2d-f30a-b94769f04dbe@gmx.net>
References: <20181127091935.2992-1-o.rempel@pengutronix.de>
 <20181127091935.2992-9-o.rempel@pengutronix.de>
 <20181205115031.d90c15ad4703eba8f8be818d@gmail.com>
 <a749dfd0-031f-ba2d-f30a-b94769f04dbe@gmx.net>
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
To: Oleksij Rempel <fishor@gmx.net>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

On Fri, 7 Dec 2018 08:09:50 +0100
Oleksij Rempel <fishor@gmx.net> wrote:

> Hi Anthony,
> =

> i would be happy if you can say:
> - this set is no go, because...
> or:
> - right now, I can't test it and if it caused some regression they will
> be fixed in separate patches...
> =


Hi Oleksij!

Sorry for delay.

I have tested mltiimage barebox on top on next branch,
the latest next branch  commit  is a141773b21bdc3e57486594b687cd307637bd
Merge: 787c9fb55f 34d598023e
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Fri Nov 30 22:23:12 2018 +0100

    Merge branch 'for-next/ubimkvol_add_volume_id_parameter' into next

barebox succesfully works on DPTechnics module and on Black Swift board.

@Sascha!
Please merge Oleksij's mips multiimage branch.

> Am 05.12.18 um 09:50 schrieb Antony Pavlov:
> > On Tue, 27 Nov 2018 10:19:33 +0100
> > Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > =

> > =

> > ...
> > =

> >> diff --git a/arch/mips/boards/8devices-lima/include/board/board_pbl_st=
art.h b/arch/mips/boards/8devices-lima/lowlevel.S
> >> similarity index 78%
> >> rename from arch/mips/boards/8devices-lima/include/board/board_pbl_sta=
rt.h
> >> rename to arch/mips/boards/8devices-lima/lowlevel.S
> >> index e95aa49256..a619747f39 100644
> >> --- a/arch/mips/boards/8devices-lima/include/board/board_pbl_start.h
> >> +++ b/arch/mips/boards/8devices-lima/lowlevel.S
> >> @@ -15,51 +15,39 @@
> >>   *
> >>   */
> >>  =

> >> -#include <mach/debug_ll_ar9344.h>
> >> +#define BOARD_PBL_START start_8devices_lima
> >> +
> >> +#include <mach/debug_ll.h>
> >> +#include <asm/asm.h>
> >>  #include <asm/pbl_macros.h>
> >>  #include <mach/pbl_macros.h>
> >>  #include <mach/pbl_ll_init_qca4531.h>
> >>  #include <asm/pbl_nmon.h>
> >>  =

> >> -	.macro	board_pbl_start
> >> -	.set	push
> >> -	.set	noreorder
> >> +ENTRY_FUNCTION(BOARD_PBL_START)
> >>  =

> >>  	mips_barebox_10h
> >>  =

> >> -	debug_ll_ar9344_init
> >> -
> >> -	debug_ll_outc '1'
> >> +	debug_ll_ath79_init
> >>  =

> > =

> > I suppose there is a problem with simultaneous debug_ll support for AR9=
344 and AR9331 in one binary.
> > the Kconfig DEBUG_AR9331_UART and DEBUG_AR9344_UART options are mutuall=
y exclusive.
> > =

> > Your approach makes it possible to build barebox binary image for AR933=
1 board with debug_ll code for AR9344
> > and vice versa.
> > =

> >>  	hornet_mips24k_cp0_setup
> >> -	debug_ll_outc '2'
> >>  =

> >>  	/* test if we are in the SRAM */
> >>  	pbl_blt 0xbd000000 1f t8
> > =

> > "if $pc < 0xbd000000 then jump to 1f"
> > =

> >> -	debug_ll_outc '3'
> >>  	b skip_flash_test
> >>  	nop
> >>  1:
> >>  	/* test if we are in the flash */
> >>  	pbl_blt 0xbf000000 skip_pll_ram_config t8
> > =

> > "if $pc < 0xbf000000 then jump to skip_pll_ram_config"
> > =

> > =

> > The code checks that $pc is less than 0xbd000000 if true then the code =
checks
> > that $pc is less than 0xbf000000. The second check is redundant!
> > =

> > =

> > =

> >> -	debug_ll_outc '4'
> >>  skip_flash_test:
> >>  =

> >>  	pbl_qca4531_ddr2_550_550_init
> >>  =

> >> -	debug_ll_outc '5'
> >>  	/* Initialize caches... */
> >>  	mips_cache_reset
> >>  =

> >>  	/* ... and enable them */
> >>  	dcache_enable
> >>  skip_pll_ram_config:
> >> -	debug_ll_outc '6'
> >> -	debug_ll_outnl
> >> -
> >> -	mips_nmon
> >> -
> >> -	copy_to_link_location	pbl_start
> >>  =

> >> -	.set	pop
> >> -	.endm
> >> +ENTRY_FUNCTION_END(BOARD_PBL_START, qca4531_8devices_lima)
> > =

> =

> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
