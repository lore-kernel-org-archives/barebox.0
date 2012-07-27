Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SulND-0004bf-0L
 for barebox@lists.infradead.org; Fri, 27 Jul 2012 14:18:36 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 50E76FF9FCB
 for <barebox@lists.infradead.org>; Fri, 27 Jul 2012 16:24:25 +0200 (CEST)
Date: Fri, 27 Jul 2012 16:18:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120727141830.GW22657@game.jcrosoft.org>
References: <1343396404-10288-1-git-send-email-j.weitzel@phytec.de>
 <1343396404-10288-4-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343396404-10288-4-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH 3/3] OMAP4460: clock init
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On 15:40 Fri 27 Jul     , Jan Weitzel wrote:
> Change clock init to allow early gpio access. Add support for 4460 clocks.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  arch/arm/boards/panda/lowlevel.c              |    4 ++-
>  arch/arm/boards/panda/mux.c                   |    8 +++++
>  arch/arm/boards/pcm049/lowlevel.c             |   15 +++++++--
>  arch/arm/boards/pcm049/mux.c                  |    8 +++++
>  arch/arm/boards/phycard-a-xl2/lowlevel.c      |    9 ++++-
>  arch/arm/boards/phycard-a-xl2/mux.c           |    8 +++++
>  arch/arm/mach-omap/include/mach/omap4-clock.h |    4 ++
>  arch/arm/mach-omap/omap4_clock.c              |   39 +++++++++++++++++-------
>  8 files changed, 76 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
> index 8591fff..0b4b199 100644
> --- a/arch/arm/boards/panda/lowlevel.c
> +++ b/arch/arm/boards/panda/lowlevel.c
> @@ -28,6 +28,8 @@
>  #include <mach/syslib.h>
>  #include <asm/barebox-arm.h>
>  
> +#define TPS62361_VSEL0_GPIO    7
> +
>  void set_muxconf_regs(void);
>  
>  static const struct ddr_regs ddr_regs_400_mhz_2cs = {
> @@ -70,7 +72,7 @@ static void noinline panda_init_lowlevel(void)
>  	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
>  
>  	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
> -	omap4_scale_vcores();
> +	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
>  
>  	board_init_lowlevel_return();
>  }
> diff --git a/arch/arm/boards/panda/mux.c b/arch/arm/boards/panda/mux.c
> index 310e433..3783006 100644
> --- a/arch/arm/boards/panda/mux.c
> +++ b/arch/arm/boards/panda/mux.c
> @@ -3,6 +3,7 @@
>  #include <io.h>
>  #include <mach/omap4-silicon.h>
>  #include <mach/omap4-mux.h>
> +#include <mach/omap4-clock.h>
>  
>  static const struct pad_conf_entry core_padconf_array[] = {
>  	{ GPMC_AD0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat0 */ },
> @@ -245,4 +246,11 @@ void set_muxconf_regs(void)
>  
>  	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
>  			ARRAY_SIZE(wkup_padconf_array));
> +
> +	/* gpio_wk7 is used for controlling TPS on 4460 */
> +	if (omap4_revision() >= OMAP4460_ES1_0) {
> +		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + PAD1_FREF_CLK4_REQ);
> +		/* Enable GPIO-1 clocks before TPS initialization */
> +		omap4_enable_gpio1_wup_clocks();
> +	}
can we factorize this?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
