Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEPIU-0004F3-Nu
 for barebox@lists.infradead.org; Fri, 14 Feb 2014 20:23:44 +0000
Date: Fri, 14 Feb 2014 21:23:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140214202319.GF17250@pengutronix.de>
References: <1392307374-22298-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392307374-22298-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH] ppc: mpc85xx: fix memory size calculation
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 13, 2014 at 04:02:54PM +0000, Renaud Barbier wrote:
> Fix the chip select configuration register offset increment and summing
> of bank size so that, for chip select index greater than 0, barebox can
> determine the total memory size from enabled banks.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>

Applied, thanks

Sascha

> ---
>  arch/ppc/mach-mpc85xx/cpu.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/ppc/mach-mpc85xx/cpu.c b/arch/ppc/mach-mpc85xx/cpu.c
> index 17a1c4c..e5c01fc 100644
> --- a/arch/ppc/mach-mpc85xx/cpu.c
> +++ b/arch/ppc/mach-mpc85xx/cpu.c
> @@ -68,14 +68,14 @@ phys_size_t fsl_get_effective_memsize(void)
>  	sdram_size = 0;
> 
>  	for (ix = 0; ix < CFG_CHIP_SELECTS_PER_CTRL; ix++) {
> -		if (in_be32(regs + DDR_OFF(CS0_CONFIG) + (ix * 8)) &
> +		if (in_be32(regs + DDR_OFF(CS0_CONFIG) + (ix * 4)) &
>  				SDRAM_CFG_MEM_EN) {
>  			reg = in_be32(regs + DDR_OFF(CS0_BNDS) + (ix * 8));
>  			/* start address */
>  			san = (reg & 0x0fff00000) >>  16;
>  			/* end address   */
>  			ean = (reg & 0x00000fff);
> -			sdram_size =  ((ean - san + 1) << 24);
> +			sdram_size += ((ean - san + 1) << 24);
>  		}
>  	}
> 
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
