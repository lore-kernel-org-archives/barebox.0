Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLXE2-0001k0-Cu
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 11:44:19 +0000
Date: Mon, 16 Sep 2013 13:43:56 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20130916114356.GC16832@pengutronix.de>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
 <1379321300-8085-9-git-send-email-s.hauer@pengutronix.de>
 <20130916104041.GB16832@pengutronix.de>
 <20130916110914.GZ30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130916110914.GZ30088@pengutronix.de>
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
Subject: Re: [PATCH 08/11] ARM: socfpga: Add FPGA programming command
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 16, 2013 at 01:09:14PM +0200, Sascha Hauer wrote:
> Hi Steffen,
> 
> On Mon, Sep 16, 2013 at 12:40:41PM +0200, Steffen Trumtrar wrote:
> > Hi!
> > 
> > On Mon, Sep 16, 2013 at 10:48:17AM +0200, Sascha Hauer wrote:
> > > This adds a simple socfpga specific 'fpga' command to load a firmware
> > > to the FPGA. For the moment this is enough, but should we get more
> > > FPGA support it might be a good idea to introduce some generic framework
> > > and command.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm/mach-socfpga/Kconfig                     |   5 +
> > >  arch/arm/mach-socfpga/Makefile                    |   1 +
> > >  arch/arm/mach-socfpga/fpga.c                      | 422 ++++++++++++++++++++++
> > >  arch/arm/mach-socfpga/include/mach/socfpga-regs.h |   2 +
> > >  4 files changed, 430 insertions(+)
> > >  create mode 100644 arch/arm/mach-socfpga/fpga.c
> > > 
> > 
> > Why did you chose to have an extra command for fpga loading instead of having
> > just a (block)device? Do you see any future advantage in that or is it just
> > because of the port from u-boot? I know that they need an extra fpga command, but
> > they also have an extra mmcload command and stuff.
> 
> Main reason was that I was unsure how good a block device will be when
> we get a different firmware format to load (rbf vs. sof vs. something
> else)
> 

Aha, okay. If we want/need to support different formats, than a special
command might be necessary. At least when the format is not easy to
autodetect, I guess.

Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
