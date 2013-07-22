Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V19oH-0007J4-HR
 for barebox@lists.infradead.org; Mon, 22 Jul 2013 06:41:30 +0000
Date: Mon, 22 Jul 2013 08:41:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130722064107.GB9434@pengutronix.de>
References: <1374142611-10384-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1374142611-10384-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH] ppc ddr-8xxx: misplaced parenthesis
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 18, 2013 at 11:16:51AM +0100, Renaud Barbier wrote:
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> ---

Applied, thanks

Sascha

>  arch/ppc/ddr-8xxx/ctrl_regs.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/ppc/ddr-8xxx/ctrl_regs.c b/arch/ppc/ddr-8xxx/ctrl_regs.c
> index 3f8ecf7..1abc826 100644
> --- a/arch/ppc/ddr-8xxx/ctrl_regs.c
> +++ b/arch/ppc/ddr-8xxx/ctrl_regs.c
> @@ -314,7 +314,7 @@ static void set_ddr_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
>  		   | ((rtt & 0x1) << 2));
>  
>  	/* Write recovery */
> -	wr = (dimm->tWR_ps + mclk_ps - 1) / (mclk_ps - 1);
> +	wr = ((dimm->tWR_ps + mclk_ps - 1) / mclk_ps) - 1;
>  
>  	switch (popts->burst_length) {
>  	case DDR_BL4:
> -- 
> 1.7.1
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
