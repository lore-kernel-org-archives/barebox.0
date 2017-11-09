Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eCtCe-0006aX-GB
 for barebox@lists.infradead.org; Thu, 09 Nov 2017 20:13:34 +0000
Date: Thu, 9 Nov 2017 21:13:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171109201309.sw4gv2deld7lial6@pengutronix.de>
References: <20171108153308.17351-1-o.rempel@pengutronix.de>
 <20171109100400.swaevd4zzqekhcpi@pengutronix.de>
 <850b5981-f559-ca8b-c1fc-d04d5d1cf8a4@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <850b5981-f559-ca8b-c1fc-d04d5d1cf8a4@rempel-privat.de>
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
Subject: Re: [PATCH v1] i.MX: esdhc: optimize set_ios path
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 09, 2017 at 06:08:30PM +0100, Oleksij Rempel wrote:
> Am 09.11.2017 um 11:04 schrieb Sascha Hauer:
> > On Wed, Nov 08, 2017 at 04:33:08PM +0100, Oleksij Rempel wrote:
> >> this part of code is executed at least 4 times in eMMC probe sequence.
> >> Optimizing it is reducing 20-30 msec of boot time.
> >>
> >> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> >> ---
> >>  drivers/mci/imx-esdhc.c | 14 ++++++++++----
> >>  1 file changed, 10 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
> >> index 141d715c90..5c2a3a36e3 100644
> >> --- a/drivers/mci/imx-esdhc.c
> >> +++ b/drivers/mci/imx-esdhc.c
> >> @@ -95,6 +95,7 @@ struct fsl_esdhc_host {
> >>  	struct device_d		*dev;
> >>  	struct clk		*clk;
> >>  	const struct esdhc_soc_data *socdata;
> >> +	u32			last_clock;
> >>  };
> >>  
> >>  #define to_fsl_esdhc(mci)	container_of(mci, struct fsl_esdhc_host, mci)
> >> @@ -408,7 +409,7 @@ esdhc_send_cmd(struct mci_host *mci, struct mci_cmd *cmd, struct mci_data *data)
> >>  
> >>  static void set_sysctl(struct mci_host *mci, u32 clock)
> >>  {
> >> -	int div, pre_div;
> >> +	int div, pre_div, i;
> >>  	struct fsl_esdhc_host *host = to_fsl_esdhc(mci);
> >>  	void __iomem *regs = host->regs;
> >>  	int sdhc_clk = clk_get_rate(host->clk);
> >> @@ -453,13 +454,17 @@ static void set_sysctl(struct mci_host *mci, u32 clock)
> >>  	esdhc_clrsetbits32(regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET,
> >>  			SYSCTL_CLOCK_MASK, clk);
> >>  
> >> -	wait_on_timeout(10 * MSECOND,
> >> -			!(esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB));
> >> +	for (i = 0; i < 1000; i++) {
> >> +		if (esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB)
> >> +			break;
> >> +		udelay(10);
> >> +	}
> > 
> > I hope this hunk doesn't make anything better. If yes, we have a
> > problem.
> 
> this is the part which need most of the time. Some times it will pass
> immediately or will take exactly 10ms.

Most likely because the condition is the wrong way round.
wait_on_timeout() waits for the condition to become true. We want to
wait until the PRSSTAT_SDSTB bit is set, so it should be:

wait_on_timeout(10 * MSECOND,
	esdhc_read32(regs + SDHCI_PRESENT_STATE) & PRSSTAT_SDSTB);

/me looks git blame ... Damn, me!

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
