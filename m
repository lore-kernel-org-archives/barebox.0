Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyOUR-0002kP-Vl
 for barebox@lists.infradead.org; Mon, 16 Nov 2015 18:26:58 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Mon, 16 Nov 2015 18:26:30 +0000
Message-ID: <1447698390.4553.150.camel@rtred1test09.kymeta.local>
References: <1447374984.4553.133.camel@rtred1test09.kymeta.local>
 <20151113102851.GF8526@pengutronix.de>
 <1447440856.4553.139.camel@rtred1test09.kymeta.local>
 <20151116063223.GI8526@pengutronix.de>
In-Reply-To: <20151116063223.GI8526@pengutronix.de>
Content-Language: en-US
Content-ID: <8B7486091131DE48821C610D272B9D39@kymetacorp.com>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Mon, 2015-11-16 at 07:32 +0100, Sascha Hauer wrote:
> On Fri, Nov 13, 2015 at 06:54:14PM +0000, Trent Piepho wrote:
> > On Fri, 2015-11-13 at 11:28 +0100, Sascha Hauer wrote:
> > > > The mci_of_parse call will not remove the 4 and 8 bits caps.  There is
> > > > the same problem in imx-esdhc.c.  The other two users of mci_of_parse,
> > > > mxs.c and tegra-sdmmc.c, don't have this problem, since they don't set
> > > > any bus-width host_caps in the driver and depend on the DT or
> > > > platform_data to have this info.
> > > > 
> > > > With drivers split 50/50, which is the right way?  Don't have the driver
> > > > report what bits it supports and depend on the device tree to have that
> > > > information?  Or have of_mci_parse remove widths that aren't indicated
> > > > as supported in the DT, so that the DT can remove widths the hardware
> > > > indicates it supports.
> > > 
> > > I think the resulting flags should be the subset of what all components
> > > can do, that is (driver_flags & devicetree_flags & card_flags).
> > > 
> > > So mci_of_parse() should IMO clear the MMC_CAP_8_BIT_DATA flag if the
> > > bus-width property is set to 4.
> > > 
> > > You should encounter the same problem under Linux, right?
> > 
> > Don't have the problem on Linux.  The OF parsing works the same way, but
> > the dw driver stats with 0 bus-width caps, like how mxs and tegra-sdmmc
> > work.
> > 
> > The linux dw_mmc driver allows "sub-drivers" to supply caps, and the
> > Exynos4/5 driver adds CAP_8_BIT.  Which is probably broken, as it
> > doesn't add 4_BIT as well and will have the same problem with the device
> > tree not being able to remove bus widths.
> 
> Ok, it seems the rationale behind the MMC_CAP_x_BIT_DATA is another one
> than thought it is. The host driver cannot know how a card is actually
> connected, so it should rely purely on the device tree bus-width
> property. So dw_mmc.c should start with host->mci.host_caps = 0 in the
> device tree case.
> If this is changed we'll also have to fix the platform_data for dw_mmc,
> it now needs a bus_width field to let ./arch/arm/mach-socfpga/xload.c
> work in 4 bit mode.

It seems that no one could agree how it should work or just didn't think
much about it.  Many host drivers in the kernel set CAP_X_BIT. It seems
to be pretty normal for non-OF drivers to just hard code the width in
the driver instead of using platform_data for it.  But there are a
number of OF drivers that also set widths which can't be removed.

I think the way I would have done it would be to have the driver set the
default width(s) which are used if nothing is in the device tree.  If a
width is in the device tree, it overrides the driver provided width.
That way one gets the largest supported width with no device tree or
platform data and only need to put in a bus-width property if the
hardware is connected differently.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
