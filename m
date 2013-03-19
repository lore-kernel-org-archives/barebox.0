Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eso.teric.us ([69.164.192.171])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UHy2t-0003oR-3P
 for barebox@lists.infradead.org; Tue, 19 Mar 2013 15:01:48 +0000
Date: Tue, 19 Mar 2013 10:08:37 -0500
From: Josh Cartwright <joshc@eso.teric.us>
Message-ID: <20130319150837.GB16050@kryptos>
References: <1363684920-3034-1-git-send-email-s.trumtrar@pengutronix.de>
 <20130319125927.GV16050@kryptos>
 <20130319135758.GE29295@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130319135758.GE29295@pengutronix.de>
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
Subject: Re: [PATCH v2 0/5] ARM: add support for Zynq
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 19, 2013 at 02:57:58PM +0100, Steffen Trumtrar wrote:
> On Tue, Mar 19, 2013 at 07:59:27AM -0500, Josh Cartwright wrote:
> > On Tue, Mar 19, 2013 at 10:21:55AM +0100, Steffen Trumtrar wrote:
> > > Hi!
> > > 
> > > Still nothing fancy. Boots a little faster from SD and has a console.
> > > For ethernet the macb-driver works fine,
> > 
> > I've also found the macb driver works, but it does require a change to
> > prevent byteswapping during DMA, have you run into this on the ZedBoard?
> > (patch below).
> 
> I already sent the same patch :-)
> Xilinx decided to use a different reset default than Cadence uses.

So you did!  Nearly identical, too :).

> > Also, have you thought about how you'll handle the OCM mapping?  For my
> > testing, I'm using a PBL image (which contains the lowlevel init), but I
> > still need some hook into the decompressed image to remove the OCM
> > mapping from the lower address space.  This can't be done during the
> > execution of the PBL image, since it's running from OCM.
> > 
> > As far as I could tell, there was no good way to hook in early to the
> > decompressed image.
> > 
> > I ran into this trying to boot the 14.4 release uImage, since it has a
> > load address of 0x8000, and spans the 'hole' at 0x30000 configured out
> > of BootROM to be 'Reserved' (writes to here trigger a Data Abort).
> > 
> 
> You also need that for the mainline kernel. Or it won't even uncompress.

I haven't yet got to the point that I can boot a kernel, but I just got
to the point where it will at least decompress last night.

> > > but needs to be "freed" from its at91 heritage (meaning: the struct
> > > at91_ether_platform_data should be renamed first and defined someplace
> > > else than a board.h)
> > 
> > I'm assuming you've done this, but if not, I've made this change in my
> > tree.  For what it's worth, I went with 'struct macb_platform_data' and
> > moved it into include/platform_data/macb.h.
> > 
> 
> Actually, I haven't. If you have a series that renames tree-wide please
> post that.

Okay, will do.

   Josh

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
