Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZeLa-0007VX-3r
 for barebox@lists.infradead.org; Tue, 07 May 2013 09:38:11 +0000
Received: from mail423.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3A8C7104EC47
 for <barebox@lists.infradead.org>; Tue,  7 May 2013 11:37:48 +0200 (CEST)
Date: Tue, 7 May 2013 11:33:24 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130507093324.GA1884@game.jcrosoft.org>
References: <20130506161329.74d58c37@skate>
 <20130506141447.GO13393@game.jcrosoft.org>
 <20130506143113.GB22505@1wt.eu>
 <20130506193422.GA30509@game.jcrosoft.org>
 <20130506195359.GK22505@1wt.eu> <20130506222104.7ea22be0@skate>
 <20130506203540.GC30509@game.jcrosoft.org>
 <20130506224456.3d32284d@skate>
 <20130506205631.GM32299@pengutronix.de>
 <20130506230337.30516881@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506230337.30516881@skate>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for
 Marvell SoC boot images
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

On 23:03 Mon 06 May     , Thomas Petazzoni wrote:
> Dear Sascha Hauer,
> 
> On Mon, 6 May 2013 22:56:31 +0200, Sascha Hauer wrote:
> 
> > > > Barebox update will generate the correct image for the storagemedia at
> > > > runtime
> > > 
> > > What is "Barebox update" ?
> > 
> > barebox_update is a command that you can call during runtime to update
> > barebox. Over writing images directly to the storage it has the
> > advantage that you can do additional sanity checks on the images.
> > 
> > Also for example on i.MX a board specific poke table is all you need
> > to bring up SDRAM. As long as you have this poke table and a devicetree
> > you could use the same binary on different boards.
> 
> Ok, makes sense. On Marvell Kirkwood, the SDRAM bring up is also done
> using a set of (address, value) pairs that are part of the image
> header. This mechanism is also available for Armada 370/XP, but
> apparently, DDR3 requires a more dynamic tuning to find optimal
> timings, so having static values in a table is no longer appropriate.
> 
> In our case, how would barebox_update work? Would it overwrite just the
> barebox.bin payload (which would require updating the 32 bits checksum
> and the payload size in the header, otherwise the Marvell SoC would not
> boot the image at the next reboot), or should it overwrite the whole
> image (in which case it would have to re-extract the configuration and
> the binary blob, and reconstruct the image at runtime) ? Probably the
> first solution is the easiest one.

yes you need to construct the image at *runtime* and drop this madness of 1
image per media to generate. As this will create 1 defconfig per target device

which duplicate the defconfig and make the maintainance a nightmare

So the *same* generated barebox image can run on any board virtualy

> 
> > For initial bring up you would still need a SoC specific image though
> > (at least when not using JTAG), so you still need a tool to generate it.
> 
> Indeed.

no you do not need to generate an image (file) you just need to upload it

same on the barebox update you do not need to provide the blob stuf you just
provuce the barebox image (or payload)

You need to share the code between barebox and the host
> 
> Thanks,
> 
> Thomas
> -- 
> Thomas Petazzoni, Free Electrons
> Kernel, drivers, real-time and embedded Linux
> development, consulting, training and support.
> http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
