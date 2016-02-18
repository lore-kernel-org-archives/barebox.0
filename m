Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWUI9-0000E9-E6
 for barebox@lists.infradead.org; Thu, 18 Feb 2016 19:31:10 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 18 Feb 2016 19:30:44 +0000
Message-ID: <1455823875.996.47.camel@rtred1test09.kymeta.local>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
 <1455672559-25061-16-git-send-email-andrew.smirnov@gmail.com>
 <1455676867.18517.64.camel@rtred1test09.kymeta.local>
 <CAHQ1cqHx+YFiZDD35_t9rbKfca424u+EL_j2YE39_w0nwW=FPg@mail.gmail.com>
In-Reply-To: <CAHQ1cqHx+YFiZDD35_t9rbKfca424u+EL_j2YE39_w0nwW=FPg@mail.gmail.com>
Content-Language: en-US
Content-ID: <67CB9D8063F1BB4FBD9D11FEB40F42F3@kymetacorp.com>
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
Subject: Re: [PATCH 15/18] [RFC] net: eth: Always use DEVICE_ID_DYNAMIC
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2016-02-16 at 20:16 -0800, Andrey Smirnov wrote:
> >> This patch solves the problem by forcing all Ethernet adapters to
> >> use dynamic ID allocation.
> >
> > A lot of systems depend on aliases/ethernet0 pointing to the proper
> > ethernet adapter.  How will they work with this?
> >
> > How will a boot script know which ethernet device to use ethact on?
> >
> > Suppose someone who doesn't know much about device trees and hasn't
> > looked at the SoC datasheet, which in my experience is about 80% of the
> > barebox userbase, comes up to you and says, "This port on the board is
> > labeled eth1, how do tell barebox to use it?"  Right now the answer is
> > "ethact eth1" but after this change, which basically eliminates the OF
> > alias system, the answer is????  I think it's going to be something that
> > said developer doesn't like very much.
> 
> I agree with your points and this commit isn't really a proper fix, I
> put an RFC tag there to indicate that this patch was more of "Hey
> guys, there's this problem, let's discuss how we solve it" rather than
> "There's your problem, here's the fix".
> 
> >
> > Maybe a better solution would be to have dynamically allocated devices
> > not use IDs that have been "reserved" by the existence of an OF alias?
> > There wouldn't be some call to reserve an id, just the alias's existence
> > would be sufficient. Common code that allocates IDs should have all the
> > info it needs to check for an alias and then either use it or allocate
> > an id not already aliased.
> 
> It is a fix, but only partial. To play devil's advocate, imagine a
> board that has SoC with two PCIe Ethernet chips (think i210) attached
> to it. Even if you query for aliases you get back to the same problem
> where your silkscreen labels are not providing any good info to inform
> general user what to give to "ethact" (granted it is possible to
> assigned a DT node to PCI device and thus probably possible to create
> an aliases for such interfaces, but it is very clunky in practice not
> many .dts files has any provisions like that)

Adding an alias for such a device seems reasonable to me.  My though
process goes something like this:

If the ports are a fixed part of the device, even if on a probe-able bus
like PCIe or USB, then we should be able to assign them a name.  They
are always there, always in the same place, always connected the same
way, so it's not impossible.

So we use what's constant, how the port is connected.  It will be a
certain device-function in a certain slot on a certain bus on a certain
pci controller.  And we make that the name because it's always the same.

But that name is huge and impossible to remember or type in.  So we
create a link, or alias, for it.  An easier to use name that points to
full name.

And thus we arrive at what is basically the OF alias system.


> I think the most sound fix for this problem would be to embed the
> NIC's topology information into its name (not unlike Consistent

Isn't that basically the same thing as the OF path of a device?

> Network Device Naming in Linux), this way there should never be a
> question which physical interface corresponds to which device in BB.
> However I am not sure how feasible it is to implement something like
> this in BB.
> 
> IMHO one simpler fix for this would be to treat aliases not just a
> source of device id, but as a source of both device name and ID. This
> way built in device would change from being "eth0" to "ethernet0" and
> not clash with "eth0", however having both "ethernet0" and "eth0" on
> the same system is less than ideal (an this still doesn't solve the
> PCI/USB networking problem).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
