Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-03-ewr.mailhop.org ([204.13.248.66]
 helo=mho-01-ewr.mailhop.org)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCsRr-0006u9-Pw
 for barebox@lists.infradead.org; Mon, 10 Feb 2014 15:07:04 +0000
Date: Mon, 10 Feb 2014 10:06:34 -0500
From: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20140210150634.GM8533@titan.lakedaemon.net>
References: <20140207071332.GE16215@pengutronix.de>
 <20140207141028.GT8533@titan.lakedaemon.net>
 <E1WCYdq-0004eu-Gr@jdl.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1WCYdq-0004eu-Gr@jdl.com>
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
Subject: Re: Devicetree Maintenance in barebox
To: Jon Loeliger <jdl@jdl.com>
Cc: Grant Likely <grant.likely@secretlab.ca>, barebox@lists.infradead.org, devicetree@vger.kernel.org, Ian Campbell <ijc@hellion.org.uk>

On Sun, Feb 09, 2014 at 11:58:06AM -0600, Jon Loeliger wrote:
> > Hi Sascha,
> > 
> > + Grant Likely, Ian Campbell, devicetree ML
> > 
> > Also, In the DT meeting earlier this week, Grant Likely said he has the
> > request in to create a separate mailinglist for collaboration between
> > the different devicetree users (BSD, Linux, etc).
> 
> ...
> 
> > I think the proper solution will percolate out of the first
> > cross-project discussions on the new ML.
> 
> ...
> 
> > Definitely fodder for the new ML.
> > 
> > Grant, can you please add Sascha to the list of folks to notify when
> > the new ML is ready?
> 
> I don't think there needs to be a different mailing list
> in order to combine or discuss other OS's use of the device
> tree compiler.  The  DTC is OS and Use-agnostic.  Discussions
> of DTC needs for FreeBSD can happen right here as the orginal
> purpose of this list was DTC discussion.

Sorry, I wasn't clear.  I was referring to the devicetree bindings
currently being created in the linux tree, and the dts files for the
boards Linux supports.

And by 'here', I presume you me devicetree@vger.kernel.org...

> Are you, and Grant(?), suggesting that a separate list
> should be created for FreeBSD use of DTS-file contents?
> Or that DTS-file-content related discussions should be
> separated from DTC discussions?

As Ian mentioned, the separate list is to engage other consumers of
devicetree bindings/dts files/dtc use without the firehose of Linux
patches.

> > imho, the goal is to not have any project tied to a specific version
> > of the devicetree.
> >
> > iow, we don't break backwards compatibility in the
> > devicetrees, and projects should revert to default behavior if new dt
> > parameters are missing.  This means Linux and BSD shouldn't need to keep
> > a current copy of the devicetree in their trees.  However, building the
> > bootloader is a different animal.  It needs to provide the dt blob...
> 
> The devicetree source file format hasn't changed in years.
> Yes, it is enhanced, but compatibly.  Or do you mean the
> contents of the DTB for some specific platform?

I was referring specifically to dt bindings for new IP blocks, and new
versions of the same.

One problem we occasionally run into with kirkwood/dove/mvebu is that
it is very convenient having the dts tree in the linux tree.  It's
tempting to keep tying the dtb to the linux kernel version.  Which makes
it a lot harder to maintain backwards compatibility.

That gets a lot easier once the bindings and the dts files have their
own tree with their own release cycle.  Then, patch submitters would be
forced to consider how changing a binding affects the driver and vice
versa.  The concept of 'deployed dtbs' without the new whizbang bindings
would have to be considered and properly handled.

Don't get me wrong, all of us are trying very hard to do this now.  But
I think it's more like running it in qemu vice running on real hardware.
We're simulating in our heads what we think the problems will be, as
opposed to experiencing them and avoiding them.

imho, the sooner we have a separate tree for dts/bindings, the better.

thx,

Jason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
