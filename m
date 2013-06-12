Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Umpn2-0005ip-8U
 for barebox@lists.infradead.org; Wed, 12 Jun 2013 18:29:01 +0000
Received: by mail-wg0-f44.google.com with SMTP id m15so6098403wgh.11
 for <barebox@lists.infradead.org>; Wed, 12 Jun 2013 11:28:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1371021464-2390-1-git-send-email-j.weitzel@phytec.de>
References: <1371021464-2390-1-git-send-email-j.weitzel@phytec.de>
Date: Wed, 12 Jun 2013 13:28:37 -0500
Message-ID: <CAGo_u6pP9djhzUZyOLNewL4kDwcY0A_KW1ZmdHVurCwBUxBEEg@mail.gmail.com>
From: Nishanth Menon <nm@ti.com>
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
Subject: Re: [PATCH] OMAP4 do not set TPS62361_REG_ADDR_SET0
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Wed, Jun 12, 2013 at 2:17 AM, Jan Weitzel <j.weitzel@phytec.de> wrote:
> Don't set SET0 voltage, because it acts as boot voltage for OPP boot.
> Take care that the kernel doesn't drive vset gpio to low. This may
> happen while reseting the gpio module at initialization, look for
> HWMOD_INIT_NO_RESET.
>
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  arch/arm/mach-omap/omap4_generic.c |    5 ++---
>  1 files changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
> index 7200393..bf1f1a7 100644
> --- a/arch/arm/mach-omap/omap4_generic.c
> +++ b/arch/arm/mach-omap/omap4_generic.c
> @@ -586,11 +586,10 @@ noinline int omap4460_scale_vcores(unsigned vsel0_pin, unsigned volt_mv)
>         writel(0x6026, OMAP44XX_PRM_VC_CFG_I2C_CLK);
>
>         /* TPS - supplies vdd_mpu on 4460
> -        * Setup SET1 and SET0 with right values so that kernel
> -        * can use either of them based on its needs.
> +        * Setup SET1 and don't touch SET0 it acts as boot voltage
> +        * source after reset.
>          */
>
> -       omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET0, volt_mv);
>         omap4_do_scale_tps62361(TPS62361_REG_ADDR_SET1, volt_mv);
>
>         /*
> --
> 1.7.0.4
Reviewed-by: Nishanth Menon <nm@ti.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
