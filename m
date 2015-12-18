Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a9pWu-0008HZ-Qz
 for barebox@lists.infradead.org; Fri, 18 Dec 2015 07:32:45 +0000
Date: Fri, 18 Dec 2015 08:32:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151218073222.GH11966@pengutronix.de>
References: <1450313304.26955.188.camel@rtred1test09.kymeta.local>
 <1450313640.26955.192.camel@rtred1test09.kymeta.local>
 <20151217100733.GD11966@pengutronix.de>
 <1450386805.26955.221.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1450386805.26955.221.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 4/4] socfpga: Find partition with environment via device
 tree
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Dec 17, 2015 at 09:13:25PM +0000, Trent Piepho wrote:
> On Thu, 2015-12-17 at 11:07 +0100, Sascha Hauer wrote:
> > >  / {
> > > +	chosen {
> > > +		environment@0 {
> > > +			compatible = "barebox,environment";
> > > +			device-path = &mmc, "partname:1";
> > > +			file-path = "barebox.env";
> > > +		};
> > > +	};
> > > +
> > 
> > I applied this series as is. We might have to move this to the board dts
> > files later as putting this into the SoC dtsi file does not allow the
> > boards to put the environment somewhere else. That was not possible
> > before this patch either, so this doesn't change much at the moment.
> 
> It's possible to change in the board dts by adding a
> "/chosen/environment@0" node to the dts with whatever properties should
> be overridden from the dtsi file's values.  Like how status = "disabled"
> in dtsi is changed to status = "okay" in the board file.  I do this for
> my board as "partname:1" isn't correct for me.

We might also have to delete the file-path property in a board dts. I
just learned that this indeed works with /delete-property/ in dtc, but I
am not sure if we should really use this, the deep levels of device tree
includes are already hard enough to track (Not necessarily for socfpga,
but have a look at some i.MX6 SoMs)

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
