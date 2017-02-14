Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdXWM-00078n-2M
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 07:27:32 +0000
Date: Tue, 14 Feb 2017 08:27:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170214072704.7erbpueegfqmjqus@pengutronix.de>
References: <4bcf7de3-5ced-3575-9495-c1f4f20ce60c@phytec.de>
 <20170213192247.gjld5b33genwav2a@pengutronix.de>
 <a28cc10e07874a53bd28dabd35a558a8@srred1mail01.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a28cc10e07874a53bd28dabd35a558a8@srred1mail01.kymeta.local>
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
Subject: Re: barebox PBL question
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Feb 13, 2017 at 08:53:19PM +0000, Trent Piepho wrote:
> > From: barebox [mailto:barebox-bounces@lists.infradead.org] On Behalf Of
> > Sascha Hauer
> > Sent: Monday, February 13, 2017 11:23 AM
> > >
> > > The maximum size of the SPL image which the ROM code will read is 32KB.
> > > I was thinking to use the PBL feature for the SPL part. But using the
> > > the pbl code (with decompression) seems to be not a good idea, because
> > > it's size is already about 30K. I think this is an overhead.
> > 
> > In a test build here the pbl code is 6KiB. The rest is the devicetree included in
> > the binary (which I disabled in the test build). The dtb can be compressed
> > which should give you enough space even in 32KiB.
> 
> On socfpga I have 23kB PBL.  But this has code to support multiple board variations
> and a memory test function.  A PBL that doesn't need to initialize the board is 18kB.
> 
> > > But now I wonder how to generate two different images with a single
> > build.
> > > A SPL image, which should not exceed 32K and a barebox.
> > >
> > > I have problems to fully understand the PBL mechanism.
> > > Why are the builds always adding the barebox.bin images to the PBL part?
> > 
> > The idea is to create an image that contains the PBL and attached to it the
> > compressed barebox image. If your ROM only allows a certain image size
> > then make sure the PBL is small enough and tell the ROM to only load the PBL
> > part of the image. Ideally the PBL then detects from where the PBL is loaded
> > (by reading back the bootsource the SoC provides) and reads the rest of the
> > image into SDRAM (or, for sake of simplicity, the whole image inculding PBL
> > again)
> 
> The way socfpga does it, which is in some ways easier to implement, is to build
> barebox twice.  The first build is minimized with no DT support, no console, etc. to
> fit into 64 kB.  It has only drivers needed to load another barebox.  I.e. eMMC bus
> driver, code to init SDRAM, etc.
>  
> The second barebox loaded by this one has SDRAM working when it starts and has
> no ROM loader size limit, since it was loaded by barebox.  One can enable all barebox
> features without worry about size limits.
> 
> But now you have the deal with two copies of barebox to build and install.

Indeed. And this is the main downside of this approach.

> 
> > You should use PBL_MULTI_IMAGES instead. In fact, the existing Rockchip
> > port already does this.
> 
> Is there any advantage to the single image pbl system?  It seems like multi image
> with one image achieves the same result.

The advantage is that the same config and only one build step is used
to build images for multiple boards/projects. This greatly increases the
chance that the existing configs are actually tested. Also it makes it
easy to test the same software on different boards. Another thing is
that I can currently built test every commit in every defconfig,
something I couldn't do if every board had its own defconfig, possibly
in a xload and a regular variant. Defconfig files also have the tendency
to bitrot very fast. Most defconfigs are committed once and never
touched again which means you never get the new features and whenever
you change the board you possibly find a defconfig that needs many
adjustments before you feel home.


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
