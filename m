Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZxBbW-0002w0-TL
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 10:29:15 +0000
Date: Fri, 13 Nov 2015 11:28:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151113102851.GF8526@pengutronix.de>
References: <1447374984.4553.133.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447374984.4553.133.camel@rtred1test09.kymeta.local>
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
Subject: Re: MCI bus-width host caps via device tree don't work properly for
 dw and imx
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Trent,

On Fri, Nov 13, 2015 at 12:36:22AM +0000, Trent Piepho wrote:
> I found my 4-bit connected eMMC chip wasn't working because barebox was
> trying to run it in 8-bit mode.  I had the proper bus-width property in
> the device tree, but this doesn't work.
> 
> The problem is that mci_of_parse() uses bus-width to _add_ 8-bit and/or
> 4-bit caps to the host.  It doesn't remove any host_caps the driver
> already has set.  So if the driver supports 8-bit but the DT bus-width
> is 4, you still get a driver that thinks 8-bit will work.
> 
> You can see this in dw_mmc.c, dw_mmc_probe() sets:
> host->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA
> then later
> mci_of_parse(&host->mci);
> return mci_register(&host->mci);
> 
> The mci_of_parse call will not remove the 4 and 8 bits caps.  There is
> the same problem in imx-esdhc.c.  The other two users of mci_of_parse,
> mxs.c and tegra-sdmmc.c, don't have this problem, since they don't set
> any bus-width host_caps in the driver and depend on the DT or
> platform_data to have this info.
> 
> With drivers split 50/50, which is the right way?  Don't have the driver
> report what bits it supports and depend on the device tree to have that
> information?  Or have of_mci_parse remove widths that aren't indicated
> as supported in the DT, so that the DT can remove widths the hardware
> indicates it supports.

I think the resulting flags should be the subset of what all components
can do, that is (driver_flags & devicetree_flags & card_flags).

So mci_of_parse() should IMO clear the MMC_CAP_8_BIT_DATA flag if the
bus-width property is set to 4.

You should encounter the same problem under Linux, right?

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
