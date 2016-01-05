Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGWox-0003BY-0e
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 18:59:03 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 5 Jan 2016 18:58:01 +0000
Message-ID: <1452020291.4474.13.camel@rtred1test09.kymeta.local>
References: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
 <20160104083257.GA13058@pengutronix.de>
 <1451934452.26955.281.camel@rtred1test09.kymeta.local>
 <20160105075831.GO13058@pengutronix.de>
In-Reply-To: <20160105075831.GO13058@pengutronix.de>
Content-Language: en-US
Content-ID: <2EB3F1A44E3E2F41911A9AAAAEC0A331@kymetacorp.com>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Tue, 2016-01-05 at 08:58 +0100, Sascha Hauer wrote:
> On Mon, Jan 04, 2016 at 07:07:27PM +0000, Trent Piepho wrote: 
> > Couldn't one also use the of fixup system to modify the barebox DT?  In
> > order to support multiple board variants, I added DT nodes that specify
> > what nodes should be enabled and/or disabled for different board
> > versions.  An OF fixup applies this to the Linux DT.  I haven't had to
> > modify the barebox DT for different boards but anticipate that happening
> > for the next board and I was planning to use the same system.
> 
> I think you don't need the fixup system to accomplish that. Just hook up
> to an initcall early enough and modify the barebox device tree. It
> shouldn't be necessary to register a callback first and then wait for
> its execution.

My thought was that the fixup already registered for the Linux device
tree would also cover the barebox tree, including things like oftree -l
to load a new one.  Calling the fixup function from an initcall wouldn't
get that.  I guess I'll see what happens when I need that feature.

> Are you aware of device tree overlays? We planned to merge support for
> them into barebox once the official device tree compiler supports them.
> Unfortunately this hasn't happened yet.

I thought of that, and also using include files and generating a bunch
of device trees, but decided against it.  It would be a lot of work to
add support for generating multiple device trees into the kernel build
system and buildroot which is driving everything.  And then you have a
pile of device tree/overlay files to keep track of.  And barebox has to
figure out which one to load for the kernel.

So I made a system where everything is supported by one device tree.

I also added support for specifying a tree to boot barebox with, hence
my patches for arm boot calling convention, but decided having the
xloader find a device tree fragment and pass it to the main barebox was
going to be too much of a pain.  Thus the one tree to rule them all
solution.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
