Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtTeT-0000fb-Iw
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 08:42:51 +0000
Date: Tue, 12 Feb 2019 09:42:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190212084247.5m3zbxpbg5pw2v2m@pengutronix.de>
References: <20190206074921.11115-1-s.hauer@pengutronix.de>
 <20190206074921.11115-9-s.hauer@pengutronix.de>
 <CAHQ1cqHdBOn_pkzfuWVk6rVZjiUOgn3iBnNvcURsqe1TBjcXug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHdBOn_pkzfuWVk6rVZjiUOgn3iBnNvcURsqe1TBjcXug@mail.gmail.com>
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
Subject: Re: [PATCH 8/8] mci: imx-esdhc: Add layerscape support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Feb 06, 2019 at 05:02:37PM -0800, Andrey Smirnov wrote:
> >  /*
> >   * The IP has errata ERR004536
> > @@ -612,6 +614,10 @@ static int esdhc_init(struct mci_host *mci, struct device_d *dev)
> >         /* RSTA doesn't reset MMC_BOOT register, so manually reset it */
> >         esdhc_write32(host, SDHCI_MMC_BOOT, 0);
> >
> > +       /* Enable cache snooping */
> > +       if (host->socdata->flags & ESDHC_FLAG_CACHE_SNOOPING)
> > +               esdhc_write32(host, 0x40c, 0x40);
> 
> I think importing ESDHC_DMA_SYSCTL and ESDHC_DMA_SNOOP from Linux and
> using them instead of magic number would improve readability. Also,
> should this be esdhc_setbits32() instead esdhc_write32() to avoid
> clearing other, unrelated, bits?

Ok, did that.

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
