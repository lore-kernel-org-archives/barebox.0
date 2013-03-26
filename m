Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKTgZ-0000xb-Ns
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 13:13:08 +0000
Date: Tue, 26 Mar 2013 08:20:15 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130326132015.GF16050@kryptos>
References: <1364289086-2241-1-git-send-email-s.trumtrar@pengutronix.de>
 <1364289086-2241-4-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1364289086-2241-4-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 3/5] ARM: zynq: add clk support for zynq7000
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 26, 2013 at 10:11:24AM +0100, Steffen Trumtrar wrote:
> This adds support for the clocktree on zynq7000 SoCs.
> The patch is based on clocks.c from the larger patch
> 	ARM: zynq: add suppport for Zynq 7000 SoC
> by Josh Cartwright.
> 
> The driver in that patch is converted to a platform_driver and code to
> enable plls was added.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Reviewed-off-by: Josh Cartwright <joshc@eso.teric.us>

> ---
>  arch/arm/mach-zynq/clk-zynq7000.c        | 417 +++++++++++++++++++++++++++++++
>  arch/arm/mach-zynq/include/mach/clkdev.h |   6 +
>  2 files changed, 423 insertions(+)
>  create mode 100644 arch/arm/mach-zynq/clk-zynq7000.c
>  create mode 100644 arch/arm/mach-zynq/include/mach/clkdev.h
> 
[..]
> diff --git a/arch/arm/mach-zynq/include/mach/clkdev.h b/arch/arm/mach-zynq/include/mach/clkdev.h
> new file mode 100644
> index 0000000..31f7035
> --- /dev/null
> +++ b/arch/arm/mach-zynq/include/mach/clkdev.h
> @@ -0,0 +1,6 @@
> +#ifndef __ASM_MACH_CLKDEV_H
> +#define __ASM_MACH_CLKDEV_H
> +
> +#define __clk_get(clk) ({ 1; })
> +#define __clk_put(clk) do { } while (0)
> +#endif

I saw Sascha posted a patch removing these, so depending on when this
lands this may need cleaned up.

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
