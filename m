Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnI4a-0004wO-Aw
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 06:35:58 +0000
Date: Wed, 8 Aug 2018 08:35:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808063544.poxqd77tcskhzgaa@pengutronix.de>
References: <20180725095728.16369-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180725095728.16369-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] mci: imx-esdhc: send required clock pulses to card on init
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 25, 2018 at 11:57:28AM +0200, Lucas Stach wrote:
> MMC cards need at least 74 clock pulses before any bus communication
> can occur. The i.MX SDHC controller auto-gates the clock when inactive,
> so if the SD enumeration is skipped for slots where we know that only a
> MMC card can be present (which is possible since
> b5289b742a89 "mmc: allow skipping SD card initialization") those
> inititialization clock pulses won't be sent out, resulting in command
> timeouts when trying to enumerate the card.
> 
> Luckily the eSDHC controller has a hardware feature to send out 80
> clock pulses. This has been validated to be available by checking the
> reference manual back to i.MX25.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/mci/imx-esdhc.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> index c4daa9d12136..db96a813971a 100644
> --- a/drivers/mci/imx-esdhc.c
> +++ b/drivers/mci/imx-esdhc.c
> @@ -455,10 +455,13 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
>  	wait_on_timeout(10 * MSECOND,
>  			esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB);
>  
> -	clk = SYSCTL_PEREN | SYSCTL_CKEN;
> +	clk = SYSCTL_PEREN | SYSCTL_CKEN | SYSCTL_INITA;
>  
>  	esdhc_setbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
>  			clk);
> +
> +	wait_on_timeout(1 * MSECOND,
> +			!(esdhc_read32(regs + SDHCI_CLOCK_CONTROL) & SYSCTL_INITA));
>  }
>  
>  static void esdhc_set_ios(struct mci_host *mci, struct mci_ios *ios)
> -- 
> 2.18.0
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
