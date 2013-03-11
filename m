Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UF7N6-000461-QW
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 18:22:53 +0000
Date: Mon, 11 Mar 2013 13:29:25 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130311182925.GO16050@kryptos>
References: <1362993306-19262-1-git-send-email-s.trumtrar@pengutronix.de>
 <1362993306-19262-7-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362993306-19262-7-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 6/9] ARM: zynq: clk: replace define with header
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 10:15:03AM +0100, Steffen Trumtrar wrote:
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-zynq/clk-zynq7000.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-zynq/clk-zynq7000.c b/arch/arm/mach-zynq/clk-zynq7000.c
> index 8dbde2b..5a8a12a 100644
> --- a/arch/arm/mach-zynq/clk-zynq7000.c
> +++ b/arch/arm/mach-zynq/clk-zynq7000.c
> @@ -25,10 +25,9 @@
>  #include <linux/clk.h>
>  #include <linux/clkdev.h>
>  #include <linux/err.h>
> +#include <mach/zynq7000-regs.h>
>  #include <malloc.h>
>  
> -#define ZYNQ_SLCR_BASE 0xF8000000
> -
>  enum zynq_clks {
>  	dummy, ps_clk, arm_pll, ddr_pll, io_pll, uart_clk, uart0, uart1,
>  	cpu_clk, cpu_6x4x, cpu_3x2x, cpu_2x, cpu_1x, clks_max

Again, this is one of those intermediate state things that could be
cleaned up with a rebase.

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
