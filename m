Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7Hz-0000WO-JX
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 11:07:37 +0000
Date: Tue, 4 Jun 2019 13:07:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604110733.2elbybehxxehgqip@pengutronix.de>
References: <20190603190559.16715-1-a.fatoum@pengutronix.de>
 <20190603190559.16715-3-a.fatoum@pengutronix.de>
 <20190604082417.w6hldzwxosstbibw@pengutronix.de>
 <2c9e9731-a2c8-a06f-189d-6e696691efa8@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2c9e9731-a2c8-a06f-189d-6e696691efa8@pengutronix.de>
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
Subject: Re: [PATCH 3/7] watchdog: add stm32 watchdog and reset driver
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 04, 2019 at 10:51:49AM +0200, Ahmad Fatoum wrote:
> Hello,
> 
> On 4/6/19 10:24, Sascha Hauer wrote:
> > On Mon, Jun 03, 2019 at 09:05:55PM +0200, Ahmad Fatoum wrote:
> >> The driver supports setting watchdog timeout, system reset
> >> and querying reset reason. Disabling watchdog isn't possible
> >> in hardware, thus users should either enable it before boot
> >> or have the poller take care of feeding it.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  .../mach-stm32mp/include/mach/reset-reason.h  |  28 ++
> >>  drivers/watchdog/Kconfig                      |   8 +
> >>  drivers/watchdog/Makefile                     |   1 +
> >>  drivers/watchdog/stm32_wdt.c                  | 288 ++++++++++++++++++
> >>  4 files changed, 325 insertions(+)
> >>  create mode 100644 arch/arm/mach-stm32mp/include/mach/reset-reason.h
> >>  create mode 100644 drivers/watchdog/stm32_wdt.c
> >>
> >> diff --git a/arch/arm/mach-stm32mp/include/mach/reset-reason.h b/arch/arm/mach-stm32mp/include/mach/reset-reason.h
> >> new file mode 100644
> >> index 000000000000..1165b347c31f
> >> --- /dev/null
> >> +++ b/arch/arm/mach-stm32mp/include/mach/reset-reason.h
> >> @@ -0,0 +1,28 @@
> >> +#ifndef __MACH_RESET_REASON_H__
> >> +#define __MACH_RESET_REASON_H__
> >> +
> >> +#include <reset_source.h>
> >> +
> >> +#define RCC_RSTF_POR		BIT(0)
> >> +#define RCC_RSTF_BOR		BIT(1)
> >> +#define RCC_RSTF_PAD		BIT(2)
> >> +#define RCC_RSTF_HCSS		BIT(3)
> >> +#define RCC_RSTF_VCORE		BIT(4)
> >> +
> >> +#define RCC_RSTF_MPSYS		BIT(6)
> >> +#define RCC_RSTF_MCSYS		BIT(7)
> >> +#define RCC_RSTF_IWDG1		BIT(8)
> >> +#define RCC_RSTF_IWDG2		BIT(9)
> >> +
> >> +#define RCC_RSTF_STDBY		BIT(11)
> >> +#define RCC_RSTF_CSTDBY		BIT(12)
> >> +#define RCC_RSTF_MPUP0		BIT(13)
> >> +#define RCC_RSTF_MPUP1		BIT(14)
> >> +
> >> +struct stm32_reset_reason {
> >> +	uint32_t mask;
> >> +	enum reset_src_type type;
> >> +	int instance;
> >> +};
> > 
> > This is used in the driver only. Why is this in a header file?
> 
> The driver is applicable to both stm32 and stm32mp, but the reasons
> differ in bit mask. A future mach-stm32 could reuse the driver,
> but define its own reset-reason.h. What do you think?

I think you shouldn't decide at build time which SoC the driver
supports. Add a proper namespace to the defines so that both SoCs
can be compiled in at once.

> > Are the last three failures really failures? You skip the remaining
> > steps but still you return with success which looks inconsistent.
> 
> Right, restart handler failure shouldn't affect setting the reset
> reason. I'll correct this.
> 
> I would keep the warnings, because I think it's appropriate to inform the
> user that functionality they expected to be available isn't.
> e.g. dw_wdt does this, imx-wd doesn't.

Ok.

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
