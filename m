Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYKZJ-0002Bo-SJ
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 16:42:07 +0000
Date: Wed, 7 Dec 2011 17:41:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111207164155.GR27267@pengutronix.de>
References: <1323202318-17697-1-git-send-email-robert.jarzmik@free.fr>
 <1323202318-17697-3-git-send-email-robert.jarzmik@free.fr>
 <20111207084944.GL27267@pengutronix.de> <87y5uocqvd.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y5uocqvd.fsf@free.fr>
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

On Wed, Dec 07, 2011 at 05:01:58PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> >> +	if (mmc_readl(MMC_STAT) & STAT_CLK_EN) {
> >> +		writel(STOP_CLOCK, host->base + MMC_STRPCL);
> >> +
> >> +		do {
> >> +			v = mmc_readl(MMC_STAT);
> >> +			if (!(v & STAT_CLK_EN))
> >> +				break;
> >> +			udelay(1);
> >> +		} while (timeout--);
> >
> > please use this for timeout loops:
> >
> > 	uint64_t start = get_time_ns(void);
> >
> > 	while (!is_timeout(start, 10 * MSECOND)
> > 		poll_something();
> Ok, should I do this also to the other 2 timeout loops (pxamci_read_data and
> pxamci_write_data), or can I use the same pattern which would give :

Please always use is_timeout(). Just polling 100000 times gives no well
defined timeout.

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
