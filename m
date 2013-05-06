Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZSZo-0004mJ-JO
 for barebox@lists.infradead.org; Mon, 06 May 2013 21:04:05 +0000
Date: Mon, 6 May 2013 23:03:37 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130506230337.30516881@skate>
In-Reply-To: <20130506205631.GM32299@pengutronix.de>
References: <20130506160614.054b5e1a@skate>
 <20130506140439.GM13393@game.jcrosoft.org>
 <20130506161329.74d58c37@skate>
 <20130506141447.GO13393@game.jcrosoft.org>
 <20130506143113.GB22505@1wt.eu>
 <20130506193422.GA30509@game.jcrosoft.org>
 <20130506195359.GK22505@1wt.eu> <20130506222104.7ea22be0@skate>
 <20130506203540.GC30509@game.jcrosoft.org>
 <20130506224456.3d32284d@skate>
 <20130506205631.GM32299@pengutronix.de>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for Marvell
 SoC boot images
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

Dear Sascha Hauer,

On Mon, 6 May 2013 22:56:31 +0200, Sascha Hauer wrote:

> > > Barebox update will generate the correct image for the storagemedia at
> > > runtime
> > 
> > What is "Barebox update" ?
> 
> barebox_update is a command that you can call during runtime to update
> barebox. Over writing images directly to the storage it has the
> advantage that you can do additional sanity checks on the images.
> 
> Also for example on i.MX a board specific poke table is all you need
> to bring up SDRAM. As long as you have this poke table and a devicetree
> you could use the same binary on different boards.

Ok, makes sense. On Marvell Kirkwood, the SDRAM bring up is also done
using a set of (address, value) pairs that are part of the image
header. This mechanism is also available for Armada 370/XP, but
apparently, DDR3 requires a more dynamic tuning to find optimal
timings, so having static values in a table is no longer appropriate.

In our case, how would barebox_update work? Would it overwrite just the
barebox.bin payload (which would require updating the 32 bits checksum
and the payload size in the header, otherwise the Marvell SoC would not
boot the image at the next reboot), or should it overwrite the whole
image (in which case it would have to re-extract the configuration and
the binary blob, and reconstruct the image at runtime) ? Probably the
first solution is the easiest one.

> For initial bring up you would still need a SoC specific image though
> (at least when not using JTAG), so you still need a tool to generate it.

Indeed.

Thanks,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
