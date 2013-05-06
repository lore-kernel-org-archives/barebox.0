Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZSSr-0004ag-6h
 for barebox@lists.infradead.org; Mon, 06 May 2013 20:56:53 +0000
Date: Mon, 6 May 2013 22:56:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130506205631.GM32299@pengutronix.de>
References: <20130506160614.054b5e1a@skate>
 <20130506140439.GM13393@game.jcrosoft.org>
 <20130506161329.74d58c37@skate>
 <20130506141447.GO13393@game.jcrosoft.org>
 <20130506143113.GB22505@1wt.eu>
 <20130506193422.GA30509@game.jcrosoft.org>
 <20130506195359.GK22505@1wt.eu> <20130506222104.7ea22be0@skate>
 <20130506203540.GC30509@game.jcrosoft.org>
 <20130506224456.3d32284d@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506224456.3d32284d@skate>
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
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

On Mon, May 06, 2013 at 10:44:56PM +0200, Thomas Petazzoni wrote:
> Dear Jean-Christophe PLAGNIOL-VILLARD,
> 
> On Mon, 6 May 2013 22:35:40 +0200, Jean-Christophe PLAGNIOL-VILLARD
> wrote:
> 
> > this is where it's wrong, you does not need such binary at all, barebox update
> > will handle this by himself and will never requiere one image per media
> > 
> > As barebox does not care wheren it boot from or where the dev is stored. we
> > choose is at runtime not at compile time
> > 
> > Barebox update will generate the correct image for the storagemedia at
> > runtime
> 
> What is "Barebox update" ?

barebox_update is a command that you can call during runtime to update
barebox. Over writing images directly to the storage it has the
advantage that you can do additional sanity checks on the images.

Also for example on i.MX a board specific poke table is all you need
to bring up SDRAM. As long as you have this poke table and a devicetree
you could use the same binary on different boards.

For initial bring up you would still need a SoC specific image though
(at least when not using JTAG), so you still need a tool to generate it.

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
