Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMVkq-00017s-1n
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:03:33 +0000
Date: Fri, 22 Jan 2016 08:03:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160122070308.GN13058@pengutronix.de>
References: <1453192254-8266-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1453192254-8266-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH 1/2] arm: am33xx: Move function to read from Master OSC
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Tue, Jan 19, 2016 at 09:30:53AM +0100, Teresa Remmet wrote:
> From: Daniel Schultz <d.schultz@phytec.de>
> 
> Move the function to read the Master OSC speed from
> the SYSBOOT Configuration Pin for reuse.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  arch/arm/mach-omap/am33xx_clock.c              | 24 ++++++++++++++++++++++++
>  arch/arm/mach-omap/dmtimer.c                   | 19 ++-----------------
>  arch/arm/mach-omap/include/mach/am33xx-clock.h |  1 +
>  3 files changed, 27 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
> index 6d8adde..19aeb59 100644
> --- a/arch/arm/mach-omap/am33xx_clock.c
> +++ b/arch/arm/mach-omap/am33xx_clock.c
> @@ -318,3 +318,27 @@ void am33xx_pll_init(int mpupll_M, int osc, int ddrpll_M)
>  	/* Enable the required peripherals */
>  	am33xx_enable_per_clocks();
>  }
> +
> +u64 am33xx_get_osc_clock(void)

Rather use a 32bit type.

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
