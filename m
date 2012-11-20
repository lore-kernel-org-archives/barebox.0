Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TajGY-0004oV-Bj
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 08:33:11 +0000
Date: Tue, 20 Nov 2012 09:33:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121120083307.GF10369@pengutronix.de>
References: <1353395520-13679-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353395520-13679-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH] ARM pcm043: Fix macro name
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 20, 2012 at 08:12:00AM +0100, Christian Hemp wrote:
> Since commit dc9d70e2 the define CCM_PDR4 is called MX35_CCM_PDR4.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>

Applied, thanks. Added the same fix for cupid aswell.

Sascha

> ---
>  arch/arm/boards/pcm043/lowlevel.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
> index 06f05ab..751f6ae 100644
> --- a/arch/arm/boards/pcm043/lowlevel.c
> +++ b/arch/arm/boards/pcm043/lowlevel.c
> @@ -46,10 +46,10 @@ static void __bare_init __naked insdram(void)
>  	uint32_t r;
>  
>  	/* Speed up NAND controller by adjusting the NFC divider */
> -	r = readl(MX35_CCM_BASE_ADDR + CCM_PDR4);
> +	r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
>  	r &= ~(0xf << 28);
>  	r |= 0x1 << 28;
> -	writel(r, MX35_CCM_BASE_ADDR + CCM_PDR4);
> +	writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
>  
>  	/* setup a stack to be able to call imx_nand_load_image() */
>  	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
> -- 
> 1.7.0.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
