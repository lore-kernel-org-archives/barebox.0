Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VkqeO-0006Bj-4E
 for barebox@lists.infradead.org; Mon, 25 Nov 2013 07:32:10 +0000
Date: Mon, 25 Nov 2013 08:31:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131125073143.GN24559@pengutronix.de>
References: <1385236704-2309-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1385236704-2309-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 1/2] OMAP4: fix writel data/address swap regression
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 23, 2013 at 08:58:23PM +0100, Vicente Bergas wrote:
> ---
>  arch/arm/mach-omap/omap4_clock.c | 176 +++++++++++++++++++--------------------
>  1 file changed, 88 insertions(+), 88 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/omap4_clock.c b/arch/arm/mach-omap/omap4_clock.c
> index 268f7c1..72f72a1 100644
> --- a/arch/arm/mach-omap/omap4_clock.c
> +++ b/arch/arm/mach-omap/omap4_clock.c
> @@ -89,7 +89,7 @@ void omap4_configure_per_dpll(const struct dpll_param *dpll_param)
>  void omap4_configure_abe_dpll(const struct dpll_param *dpll_param)
>  {
>  	/* Select sys_clk as ref clk for ABE dpll */
> -	writel(CM_ABE_PLL_REF_CLKSEL, 0x0);
> +	writel(0x0, CM_ABE_PLL_REF_CLKSEL);

What a silly bug! Who messed this up? Damn. me :(. Applied both, thanks

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
