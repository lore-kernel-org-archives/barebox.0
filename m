Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGATu-0008Qk-Q5
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 19:07:51 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Mon, 4 Jan 2016 19:07:27 +0000
Message-ID: <1451934452.26955.281.camel@rtred1test09.kymeta.local>
References: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
 <20160104083257.GA13058@pengutronix.de>
In-Reply-To: <20160104083257.GA13058@pengutronix.de>
Content-Language: en-US
Content-ID: <2030514B80275148850F5A071478B709@kymetacorp.com>
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

On Mon, 2016-01-04 at 09:32 +0100, Sascha Hauer wrote:
> On Sat, Dec 19, 2015 at 12:13:59AM +0000, Trent Piepho wrote:
> > The existing iterator for_each_compatible_node() searches for each
> > compatible node starting from the root of the loaded device tree.
> > This means it only works on the barebox device tree and not the tree
> > to be passed to the Linux kernel, which is what an of_fixup would
> > probably want to use.
> > 
> > This adds for_each_compatible_node_from(), which takes an additional
> > parameter of a root to search from.  This could be the device tree to
> > be used for the kernel.  It could also be used to search just a
> > subtree.
> > 
> > Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> 
> Applied, thanks
> 
> > ---
> > 
> > It's possible the fixups in cm_cogent_fixup() and hb_fixup() should
> > be using this.  It's not clear to me if they want to modify the barebox
> > device tree or the Linux device tree or both.
> 
> It's always the Linux device tree that is fixed up in the OF fixups.

Sent patch to fix them.

Couldn't one also use the of fixup system to modify the barebox DT?  In
order to support multiple board variants, I added DT nodes that specify
what nodes should be enabled and/or disabled for different board
versions.  An OF fixup applies this to the Linux DT.  I haven't had to
modify the barebox DT for different boards but anticipate that happening
for the next board and I was planning to use the same system.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
