Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gj0Db-0008Bv-OF
 for barebox@lists.infradead.org; Mon, 14 Jan 2019 11:15:49 +0000
Date: Mon, 14 Jan 2019 12:15:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190114111545.l2jryzjvsugfuvll@pengutronix.de>
References: <20190109112814.GA918@lenoch>
 <20190110083207.gh5ppkin6suvshps@pengutronix.de>
 <20190112125828.GA16754@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190112125828.GA16754@lenoch>
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
Subject: Re: [PATCH] mtd: core: Fix erase area alignment for non power of 2
 erasesize
To: Ladislav Michl <ladis@linux-mips.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Jan 12, 2019 at 01:58:28PM +0100, Ladislav Michl wrote:
> On Thu, Jan 10, 2019 at 09:32:07AM +0100, Sascha Hauer wrote:
> > On Wed, Jan 09, 2019 at 12:28:14PM +0100, Ladislav Michl wrote:
> > > Devices as AT45DB161 DataFlash uses non power of two page size (528)
> > > while present alignment algorithm relies on erasesize being power
> > > of 2.
> > > Fix that by introducing helper functions rounding to any multiply.
> > > Note that logic is sligthly changed to be consistent as ending
> > > address is moved forward to include also last byte meant to be
> > > erased while previous implementation moved it backward.
> > > 
> > > Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
> > > ---
> > >  drivers/mtd/core.c     | 28 ++++++++++++++++++++++------
> > >  include/linux/kernel.h |  5 +++++
> > >  2 files changed, 27 insertions(+), 6 deletions(-)
> > 
> > Applied, thanks
> 
> Hi Sascha,
> 
> I was searching for paper bag, but was unable to find anything thick
> enouh to cover behind :-/ This version is buggy and I noticed right
> now when testing on another board. Corrected version follows, which
> is also 192 bytes shorter for my ARM target. It seems next branch
> at https://git.pengutronix.de/ is not yet updated, so perhaps my fault
> won't affect anyone.

I did in the meantime, but updated it now again with your updated patch.

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
