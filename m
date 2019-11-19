Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX3GZ-0006Ob-It
 for barebox@lists.infradead.org; Tue, 19 Nov 2019 13:10:00 +0000
Date: Tue, 19 Nov 2019 14:09:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191119130957.3ty4iizx4vfyafsl@pengutronix.de>
References: <20191119105036.12300-1-s.hauer@pengutronix.de>
 <20191119105036.12300-2-s.hauer@pengutronix.de>
 <e407553f-18d5-4fb3-e630-de620b6b501e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e407553f-18d5-4fb3-e630-de620b6b501e@pengutronix.de>
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
Subject: Re: [PATCH 01/21] mci: Add sdhci helper
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 19, 2019 at 12:10:39PM +0100, Ahmad Fatoum wrote:
> > +		if (prs & SDHCI_BUFFER_WRITE_ENABLE &&
> > +		    !(data->flags & MMC_DATA_READ)) {
> > +			sdhci_tx_pio(sdhci, data, block);
> > +			block++;
> > +			start = get_time_ns();
> > +		}
> > +
> > +		if (is_timeout(start, 10 * SECOND))
> 
> 10 seconds are a lot, should we call into barebox poller meanwhile?

is_timeout() does that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
