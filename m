Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtpmC-0005XT-5s
 for barebox@lists.infradead.org; Wed, 13 Feb 2019 08:20:17 +0000
Message-ID: <2a67049ce3115a2c91baff70baff2077a618fe33.camel@phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 13 Feb 2019 09:20:15 +0100
In-Reply-To: <20190211192159.dndlolmj4b453cjv@pengutronix.de>
References: <21f6fae81ddfaa473b00005ce2e44b692f7861c8.camel@phytec.de>
 <20190211192159.dndlolmj4b453cjv@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: AM335x broken
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Am Montag, den 11.02.2019, 20:21 +0100 schrieb Sascha Hauer:
> Hi Teresa,
> 
> On Mon, Feb 11, 2019 at 03:44:28PM +0100, Teresa Remmet wrote:
> > Hello,
> > 
> > AM335x is broken on current master in multiple ways. 
> > NAND and and SPI boot are not working right now as the image size
> > can
> > not be found:
> > 
> > barebox 2019.01.0-00305-g96abbe544e19 #1682 Mon Feb 11 15:20:00 CET
> > 2019
> > 
> > 
> > Board: Phytec phyCORE AM335x
> > nand: ONFI flash detected
> > nand: NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron
> > MT29F4G08ABADAH4), 512Mi
> > B, page size: 2048, OOB size: 64
> > booting from NAND
> > failed to get image size
> > trying to load image from backup partition.
> > failed to get image size
> > booting failed
> > 
> > I bisected the issue down to:
> > commit 5c0e16591d9471a345b77a41fde76de34f301f6b
> > Author: Sascha Hauer <s.hauer@pengutronix.de>
> > Date:   Wed Jan 16 10:15:55 2019 +0100
> > 
> >     images: Drop unnecessary fix_size
> >     
> >     Now that we compile the compressed binary into the decompressor
> > we
> >     no longer need fix_size but can use the linker to fill in the
> > image
> >     size into the binary.
> >     
> >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > Reverting this patch helps. But what is the correct solution?
> 
> Update to a newer toolchain ;)

This helped :) Thanks for the hint.

Teresa

> 
> This problem seems to exist with gcc-5 and older where the
> barebox_image_size linker variable is generated as something which
> needs
> runtime relocation.
> 
> We can just revert 5c0e16591d94. This brings us the problem that
> fix-size will be used by the Mips multiimage builds. It fails there
> as fix-size tests for the input being a valid Arm barebox image. We
> would have to relax that constraint.
> 
> Sascha
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
