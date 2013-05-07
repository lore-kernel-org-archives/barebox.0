Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZeVM-0007is-FO
 for barebox@lists.infradead.org; Tue, 07 May 2013 09:48:17 +0000
Date: Tue, 7 May 2013 11:47:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130507094752.GQ32299@pengutronix.de>
References: <20130506141447.GO13393@game.jcrosoft.org>
 <20130506143113.GB22505@1wt.eu>
 <20130506193422.GA30509@game.jcrosoft.org>
 <20130506195359.GK22505@1wt.eu> <20130506222104.7ea22be0@skate>
 <20130506203540.GC30509@game.jcrosoft.org>
 <20130506224456.3d32284d@skate>
 <20130506205631.GM32299@pengutronix.de>
 <20130506230337.30516881@skate>
 <20130507093324.GA1884@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130507093324.GA1884@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for Marvell
 SoC boot images
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Lior Amsalem <alior@marvell.com>, Jason Cooper <jason@lakedaemon.net>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

On Tue, May 07, 2013 at 11:33:24AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 23:03 Mon 06 May     , Thomas Petazzoni wrote:
> > Dear Sascha Hauer,
> > 
> > On Mon, 6 May 2013 22:56:31 +0200, Sascha Hauer wrote:
> > 
> > > > > Barebox update will generate the correct image for the storagemedia at
> > > > > runtime
> > > > 
> > > > What is "Barebox update" ?
> > > 
> > > barebox_update is a command that you can call during runtime to update
> > > barebox. Over writing images directly to the storage it has the
> > > advantage that you can do additional sanity checks on the images.
> > > 
> > > Also for example on i.MX a board specific poke table is all you need
> > > to bring up SDRAM. As long as you have this poke table and a devicetree
> > > you could use the same binary on different boards.
> > 
> > Ok, makes sense. On Marvell Kirkwood, the SDRAM bring up is also done
> > using a set of (address, value) pairs that are part of the image
> > header. This mechanism is also available for Armada 370/XP, but
> > apparently, DDR3 requires a more dynamic tuning to find optimal
> > timings, so having static values in a table is no longer appropriate.
> > 
> > In our case, how would barebox_update work? Would it overwrite just the
> > barebox.bin payload (which would require updating the 32 bits checksum
> > and the payload size in the header, otherwise the Marvell SoC would not
> > boot the image at the next reboot), or should it overwrite the whole
> > image (in which case it would have to re-extract the configuration and
> > the binary blob, and reconstruct the image at runtime) ? Probably the
> > first solution is the easiest one.
> 
> yes you need to construct the image at *runtime* and drop this madness of 1
> image per media to generate. As this will create 1 defconfig per target device
> 
> which duplicate the defconfig and make the maintainance a nightmare

That's the way we currently do it. Don't expect from Thomas to do it
differently as long there is not even a single example in the tree how
to do it.

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
