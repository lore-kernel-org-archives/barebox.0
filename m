Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6B69-0007tZ-G1
 for barebox@lists.infradead.org; Mon, 24 Feb 2020 10:36:27 +0000
Received: by mail-vs1-xe43.google.com with SMTP id x123so5380353vsc.2
 for <barebox@lists.infradead.org>; Mon, 24 Feb 2020 02:36:24 -0800 (PST)
MIME-Version: 1.0
References: <20200217143817.31360-1-yegorslists@googlemail.com>
 <20200219075241.i6lcrc5q4myhdbxz@pengutronix.de>
 <de1b6c7a-10ba-a206-4c10-263aef0d29ed@pengutronix.de>
In-Reply-To: <de1b6c7a-10ba-a206-4c10-263aef0d29ed@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Mon, 24 Feb 2020 11:35:50 +0100
Message-ID: <CAGm1_ktrXnZLtrZN7RKZMuywD_+GsLxBvX+GOmr+nPKV2_qZ_Q@mail.gmail.com>
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
Subject: Re: [PATCH] arm: baltos: use compressed DTB images
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Feb 19, 2020 at 4:34 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hello Sascha,
>
> On 2/19/20 8:52 AM, Sascha Hauer wrote:
> > On Mon, Feb 17, 2020 at 03:38:17PM +0100, yegorslists@googlemail.com wrote:
> >> From: Yegor Yefremov <yegorslists@googlemail.com>
> >>
> >> This reduces the size of MLO enough to fit into SRAM.
> >>
> >> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> >> ---
> >>  arch/arm/boards/vscom-baltos/lowlevel.c | 6 +++---
> >>  1 file changed, 3 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
> >> index 98bbbaae1..0a220f262 100644
> >> --- a/arch/arm/boards/vscom-baltos/lowlevel.c
> >> +++ b/arch/arm/boards/vscom-baltos/lowlevel.c
> >> @@ -66,7 +66,7 @@ static const struct am33xx_emif_regs ddr3_regs_256mb = {
> >>
> >>  };
> >>
> >> -extern char __dtb_am335x_baltos_minimal_start[];
> >> +extern char __dtb_z_am335x_baltos_minimal_start[];
> >>
> >>  /**
> >>   * @brief The basic entry point for board initialization.
> >> @@ -82,7 +82,7 @@ static noinline void baltos_sram_init(void)
> >>      uint32_t sdram_size;
> >>      void *fdt;
> >>
> >> -    fdt = __dtb_am335x_baltos_minimal_start;
> >> +    fdt = __dtb_z_am335x_baltos_minimal_start;
> >>
> >>      /* WDT1 is already running when the bootloader gets control
> >>       * Disable it to avoid "random" resets
> >> @@ -132,7 +132,7 @@ ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
> >>       */
> >>      __raw_writel(0x000010ff, AM33XX_PRM_RSTTIME);
> >>
> >> -    fdt = __dtb_am335x_baltos_minimal_start;
> >> +    fdt = __dtb_z_am335x_baltos_minimal_start;
> >
> > You have to select ARM_USE_COMPRESSED_DTB from the boards Kconfig entry
> > to make sure the uncompressing functions are available.
>
> ARM_USE_COMPRESSED_DTB is enabled transitively because ARCH_AM33XX
> selects it.

So, no changes required then?

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
