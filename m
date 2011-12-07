Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYDCJ-0005iw-NV
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 08:49:52 +0000
Date: Wed, 7 Dec 2011 09:49:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111207084944.GL27267@pengutronix.de>
References: <1323202318-17697-1-git-send-email-robert.jarzmik@free.fr>
 <1323202318-17697-3-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323202318-17697-3-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 3/3] drivers/mci: add PXA host controller
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

Hi Robert,

On Tue, Dec 06, 2011 at 09:11:58PM +0100, Robert Jarzmik wrote:
> Add a simple PIO based host controller for MMC and SD cards
> on PXA SoCs. Reads and writes are available, and no usage is
> made of DMA or IRQs.
> SPI mode is not supported yet.
> 
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> ---
>  drivers/mci/Kconfig  |    7 +
>  drivers/mci/Makefile |    1 +
>  drivers/mci/pxamci.c |  357 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/mci/pxamci.h |   99 ++++++++++++++
>  4 files changed, 464 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/mci/pxamci.c
>  create mode 100644 drivers/mci/pxamci.h
> 
> +
> +static void pxamci_stop_clock(struct pxamci_host *host)
> +{
> +	unsigned long timeout = 10000;
> +	unsigned int v;
> +
> +	if (mmc_readl(MMC_STAT) & STAT_CLK_EN) {
> +		writel(STOP_CLOCK, host->base + MMC_STRPCL);
> +
> +		do {
> +			v = mmc_readl(MMC_STAT);
> +			if (!(v & STAT_CLK_EN))
> +				break;
> +			udelay(1);
> +		} while (timeout--);

please use this for timeout loops:

	uint64_t start = get_time_ns(void);

	while (!is_timeout(start, 10 * MSECOND)
		poll_something();

Otherwise the driver looks good to me.

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
