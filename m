Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH55i-0003MB-Gk
 for barebox@lists.infradead.ORg; Thu, 07 Jan 2016 07:34:39 +0000
Date: Thu, 7 Jan 2016 08:34:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160107073414.GU13058@pengutronix.de>
References: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
 <20160104083257.GA13058@pengutronix.de>
 <1451934452.26955.281.camel@rtred1test09.kymeta.local>
 <20160105075831.GO13058@pengutronix.de>
 <1452020291.4474.13.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1452020291.4474.13.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 1/2] of: Add for_each_compatible_node_from iterator
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, Jan 05, 2016 at 06:58:01PM +0000, Trent Piepho wrote:
> On Tue, 2016-01-05 at 08:58 +0100, Sascha Hauer wrote:
> > On Mon, Jan 04, 2016 at 07:07:27PM +0000, Trent Piepho wrote: 
> > > Couldn't one also use the of fixup system to modify the barebox DT?  In
> > > order to support multiple board variants, I added DT nodes that specify
> > > what nodes should be enabled and/or disabled for different board
> > > versions.  An OF fixup applies this to the Linux DT.  I haven't had to
> > > modify the barebox DT for different boards but anticipate that happening
> > > for the next board and I was planning to use the same system.
> > 
> > I think you don't need the fixup system to accomplish that. Just hook up
> > to an initcall early enough and modify the barebox device tree. It
> > shouldn't be necessary to register a callback first and then wait for
> > its execution.
> 
> My thought was that the fixup already registered for the Linux device
> tree would also cover the barebox tree, including things like oftree -l
> to load a new one.  Calling the fixup function from an initcall wouldn't
> get that.  I guess I'll see what happens when I need that feature.

At the moment the tree passed to of_fix_tree is fixed, so you can always
call of_fix_tree with the internal device tree to execute the fixups.
Using fixups also means that every external device tree loaded to start
the kernel also gets the fixups applied. If that's what you want then
indeed the fixups are for your usecase.

> 
> > Are you aware of device tree overlays? We planned to merge support for
> > them into barebox once the official device tree compiler supports them.
> > Unfortunately this hasn't happened yet.
> 
> I thought of that, and also using include files and generating a bunch
> of device trees, but decided against it.  It would be a lot of work to
> add support for generating multiple device trees into the kernel build
> system and buildroot which is driving everything.  And then you have a
> pile of device tree/overlay files to keep track of.  And barebox has to
> figure out which one to load for the kernel.

I think we compile in multiple overlays into barebox and let some board
code decide which of them to load. At least that's the plan. If that
really works good enough, we'll see. Currently I'm undecided whether
device tree overlay make life better or even more complicated.

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
