Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfGy-0006Yl-Vh
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 10:28:02 +0000
Date: Wed, 15 Apr 2020 12:27:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200415102758.GN1694@pengutronix.de>
References: <DB7PR02MB433264C5B656E14124196A6FABC10@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <20200414105332.GC4598@pengutronix.de>
 <DB7PR02MB433282FDF0F908DEDA6689469BDA0@DB7PR02MB4332.eurprd02.prod.outlook.com>
 <20200415061909.GA1078@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415061909.GA1078@pengutronix.de>
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
Subject: Re: [PATCH v2 7/7] added-zynq-fpga-manager
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Michael Graichen <michael.graichen@hotmail.com>

On Wed, Apr 15, 2020 at 08:19:09AM +0200, Michael Tretter wrote:
> Hi Michael,
> 
> On Tue, Apr 14, 2020 at 09:23:53PM +0200, Michael Graichen wrote:
> > Am 14.04.20 um 12:53 schrieb Michael Tretter:
> > > On Thu, Apr 09, 2020 at 02:44:00PM +0000, Michael Graichen wrote:
> > > > This adds support to programm the PL part of the Zynq SoC,
> > > > but only the non-secure way and no partial reconfiguration. It adds the
> > > > 'zynq_fpga_manager' so we can use
> > > > 
> > > > firmwareload -l
> > > > firmwareload -t zynq-fpga-manager /mnt/mmc0.0/design_1_wrapper.bit
> > > > 
> > > > to programm the PL.
> > > 
> > > The patch copies a lot of code from the PL programming code for the ZynqMP.
> > > The main differences are that the Zynq-7000 Bitstream header is 8 bytes
> > > shorter than for the ZynqMP and that the Zynq does not go through the
> > > firmware, but directly programs the PCAP.
> > > 
> > > I think that we should extend the ZynqMP FPGA driver to be able to handle the
> > > PL programming of the Zynq-7000 as well instead of adding a new driver for
> > > that.
> > > 
> > > Michael
> > > 
> > 
> > yes, i have learned from drivers/firmware/zynqmp-fpga.c how to deal with the
> > firmwareload command and how to validate the bitstream.
> > In generally it would be better to only have one driver but since i have no
> > access to a ZynqMP board i am kind of shy to touch these bits.
> 
> I will happily test your patches on the ZynqMP:) I would really like to have
> more users of the zynqmp-fpga driver.

I dropped the patch for now in favor for the upcoming patches adding
support for the existing driver ;)

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
