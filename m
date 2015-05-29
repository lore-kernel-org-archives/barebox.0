Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YyF3R-0001lf-2u
 for barebox@lists.infradead.org; Fri, 29 May 2015 07:50:09 +0000
Date: Fri, 29 May 2015 09:49:43 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20150529074943.GC12390@pengutronix.de>
References: <1432828567-14037-1-git-send-email-s.trumtrar@pengutronix.de>
 <20150529072524.GD6325@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150529072524.GD6325@pengutronix.de>
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
Subject: Re: [PATCH v2 0/8] Socfpga: QSPI support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 29, 2015 at 09:25:24AM +0200, Sascha Hauer wrote:
> On Thu, May 28, 2015 at 05:55:59PM +0200, Steffen Trumtrar wrote:
> > Hi!
> > 
> > This series adds support for reading,writing and booting from Quad SPI
> > flash chips on the SoCFPFGA platform.
> > 
> > The driver is based on a patch for linux, which is still in development.
> > As this driver uses the spi-nor framework, this is imported into barebox, too.
> > To deduplicate the code base, the m25p80 is also converted to use the spi-nor
> > framework.
> > 
> > With the QSPI driver in place, support for booting from it is also added.
> > As the preloader barebox doesn't have a devicetree to go from, the driver doesn't
> > touch the registers that have already been set up successfully by the Boot ROM code.
> > If there ever is any other user of the Cadence QSPI core, that does not have a
> > devicetree to probe from, platform code might have to be added for this initialization.
> > As there isn't at the moment, I chose to not bother with this.
> > 
> > The cadence-qspi was tested on the Socrates, Sockit and Socdk.
> > The m25p80 was tested as "m25p80" on a Phycore AM335x SOM.
> 
> Applied, thanks.
> 
> Please look out for trailing blank lines next time. There are some of
> them in the dts changes I manually fixed up this time.
> 

Oh, sorry. I didn't catch them...

Thanks,
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
