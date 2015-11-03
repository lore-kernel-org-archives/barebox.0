Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtVwm-0000b7-HX
 for barebox@lists.infradead.org; Tue, 03 Nov 2015 07:24:01 +0000
Date: Tue, 3 Nov 2015 08:23:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151103072338.GE25416@pengutronix.de>
References: <20151103012055.1fd914dbb7d224a0c56fb0d4@gmail.com>
 <20151103065158.GC25416@pengutronix.de>
 <20151103103948.d0d3ebcdddbb148da1efe81f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151103103948.d0d3ebcdddbb148da1efe81f@gmail.com>
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
Subject: Re: some patches are missed in the next branch
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 03, 2015 at 10:39:48AM +0300, Antony Pavlov wrote:
> On Tue, 3 Nov 2015 07:51:58 +0100
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi Antony,
> > 
> > On Tue, Nov 03, 2015 at 01:20:55AM +0300, Antony Pavlov wrote:
> > > Hi!
> > > 
> > > These patches were added to the next branch last month:
> > > 
> > >   ARM: mvebu: Lenovo IX4 300D: Fix pblb generation
> > >   scripts/kwbimage: Make BINARY files relative to config file
> > >   scripts/kwbimage: Move configfile opening to the function that reads it
> > >   usb: ehci-hcd: Use regular mdelay()
> > >   Revert "usb: ehci-hcd: detect re-entrance"
> > >   Revert "usb: ehci-hcd: use mdelay_non_interruptible()"
> > >   usb: core: return -EAGAIN on usb_* functions reentrance
> > >   input: usb_kbd: skip poll on -EAGAIN error
> > >   net: mvneta: add Armada XP compatible
> > >   clk: mvebu: Add corediv clock driver for Armada 370/XP
> > > 
> > > Now they have gone away! Why?
> 
> I have just pushed missed commits on top of yesterday next branch to github.
> Please see https://github.com/frantony/barebox/tree/20151103.missed-patches

Ouch, everything fine. I just rebased this branch on my current next and
it turned out to be empty afterwards. The patches are still there and in
current next.

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
