Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8jle-00037P-SA
 for barebox@lists.infradead.org; Tue, 15 Dec 2015 07:11:28 +0000
Date: Tue, 15 Dec 2015 08:11:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151215071103.GL11966@pengutronix.de>
References: <1449800007.26955.96.camel@rtred1test09.kymeta.local>
 <20151211093050.GX11966@pengutronix.de>
 <1449864307.26955.136.camel@rtred1test09.kymeta.local>
 <20151214100110.GF11966@pengutronix.de>
 <1450121066.26955.167.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1450121066.26955.167.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] socfpga: Find partition with environment via device tree
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Dec 14, 2015 at 07:24:19PM +0000, Trent Piepho wrote:
> On Mon, 2015-12-14 at 11:01 +0100, Sascha Hauer wrote:
> > On Fri, Dec 11, 2015 at 08:05:00PM +0000, Trent Piepho wrote:
> > > On Fri, 2015-12-11 at 10:30 +0100, Sascha Hauer wrote:
> > > > On Fri, Dec 11, 2015 at 02:13:21AM +0000, Trent Piepho wrote:
> > > > The "barebox,environment" compatible describes a binding which takes
> > > > partition described in device-path as a raw file containing a barebox
> > > > envfs.
> > > 
> > > Well, I redefined it to have the device-path be the device containing
> > > the environment as raw data or the one containing a filesystem with the
> > > environment as a file if the architecture expects that.
> > > 
> > > That doesn't seem like a bad definition.
> > 
> > No, indeed not. It's more the implementation I have a problem with. The
> > implementation should be done in the environment driver.
> 
> Ok, my second attempt moved it to the barebox env OF driver.  This seems
> better as it unifies the boards that have an env on a device and those
> that put it in a file.
> 
> > > > What you have here is a partition which contains a FAT which has a
> > > > barebox envfs in a file. I think it's fine to extend the binding (and
> > > > the barebox env driver) to handle that case.  What you are doing here is
> > > > to smuggle code behind the driver and bend the environment path to
> > > > somewhere else. That is not ok. I think what we can do is to add some
> > > > file-path property which contains the path and tells the barebox
> > > > environment driver to not use the whole partition but instead to mount
> > > > it and use the file specified in the file-path property.
> > > > 
> > > > As an alternative which I might even like better is to extend the
> > > > partition binding to be able to describe a file in a partition, like:
> > > 
> > > This won't work.  mmc devices, which all boards that use a file for the
> > > env are using, don't have partitions in the device tree, since they are
> > > created dynamically from the partition table.  There is nowhere to put
> > > the file node.
> > 
> > Just because they are dynamically created from information found on the
> > MMC card doesn't mean we can't describe them in the device tree. We can
> > for example specify "The second partition" or "The partition with UUID
> > xy".
> 
> That would be hard to do in practice, as the UUID of a partition is
> normally generated at random when the partition is made.  It would be
> hard to keep the UUID in the device table matching the partition table.
> I suppose one could go by partition number or by name too.  Which is
> really no different than the partname: syntax but in a different
> location.

Yes, the UUID may be a bad example, replace that with anything else that
is able to identify the partition.

> 
> > > It is also problematic for my board.  I need to change the env path
> > > based on data in an eeprom that selects which partition to use.  Other
> > > boards that have multiple environments select them in a
> > > postcore_initcall using boot strapping pins that aren't part of a
> > > device.  I'm using an eeprom so I need to do the selection later in the
> > > init process.
> > 
> > Ok, so you couldn't you do the same?
> 
> Yes, I made it work with my second attempt.  The env driver is a
> late_initcall so I was able to have board code modify the OF tree so
> that it points to the correct partition.
> 
> > > Maybe extend load_environment to do the mount?  const char
> > > *default_environment_path would have to change to something that could
> > > support the concept of a device + optional filename.  This way one could
> > > change the env path upto environment_initcall() time.
> > 
> > My original plan was to extend this:
> > 
> > 	device-path = &mmc, "partname:1";
> > 
> > with a filename, like this:
> > 
> > 	device-path = &mmc, "partname:1", "/bla/env";
> > 
> > I found out that this is not how the device tree should be like. It
> > looks and feels better when the phandle directly points to a node and
> > the node describes a partition (or file in this case).
> 
> I thought the env code was intentionally not using phandles so that it
> could be in a different DT than the DT describing the hardware.  Thus
> the path instead of a phandle.

Sorry, mixed that up. &mmc is a path, not a phandle.

> 
> I didn't want to extend device-path with an optional 3rd string since
> device-path is already IMHO too complex supporting both a path to a
> partition or a path to a device and then a partition description.

I tend to agree. When I created the binding it seemed like a good idea
to be able to chain together strings like describing the device, the
partition and then the filename. The problems I had implementing it
should have shown me that idea wasn't the best.

> So
> one would also want to support device-path = &eeprom, "/bla/env" and now
> you've got to guess if the 2nd string is a file or partition name.
> 
> So I've guess we have:
> 
> {
>   compatible = "barebox,environment";
>   device-path = &foo, "partname:bar";
>   file-path = "baz";
> }
> 
> OR
> 
> {
>   compatible = "barebox,environment";
>   env-path = &environment;
> }
> 
> &foo {
>   partition@0 {
>     label = "bar";
>     environment: file@0 {
>       path = "baz";
>     };
>   };
> }
> 
> So the same information but in a different layout.  The latter layout is
> more complex and I'm not sure how the code would properly tell if the
> node path refers to a device or a partition or a file.

Your current "Support env from file in a file-system via device tree"
patch indeed has a straight forward implementation. Maybe we should go
that way. I'll have a closer look at it.

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
