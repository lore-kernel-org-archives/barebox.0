Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSjcq-0003LP-RI
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 13:46:22 +0000
Date: Tue, 12 Jun 2018 15:46:06 +0200
From: David Jander <david@protonic.nl>
Message-ID: <20180612154606.4b41d063@erd980>
In-Reply-To: <20180612124738.pi66gx2vlgvoljmo@pengutronix.de>
References: <20180612142308.4a048a14@erd980>
 <20180612124738.pi66gx2vlgvoljmo@pengutronix.de>
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
Subject: Re: Device-tree node renames break barebox/kernel compatibility...
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>, Barebox List <barebox@lists.infradead.org>, Marco Franchi <marco.franchi@nxp.com>, Shawn Guo <shawnguo@kernel.org>

On Tue, 12 Jun 2018 14:47:38 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi David,
> 
> On Tue, Jun 12, 2018 at 02:23:08PM +0200, David Jander wrote:
> > 
> > Hi Sascha,
> > 
> > I know this is old already, and I was surprised that I couldn't find any
> > complaints about this yet, but I recently came across this patch in the kernel:
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=df5cc9d0b42d15fa33b30440cca7a11ca7ba35a4
> > 
> > ...which was adopted in barebox as this:
> > 
> > https://git.pengutronix.de/cgit/barebox/patch/dts/src/arm/imx6qdl.dtsi?id=2e9cce8fb1f577088e2b20ae2f461130e13ad190
> > 
> > As I don't know the exact reason as to why this was necessary, or why this is
> > an issue at all, I just wanted to point out the fact that this leads to some
> > breakage in barebox new and old.  
> 
> This issue is known and has led to
> https://www.mail-archive.com/barebox@lists.infradead.org/msg25189.html

Ah, thanks for the pointer. I had searched through the list archive since
september-2017 and did not find this... need new glasses anyway.

> > 
> > The specific problem I observed is here:
> > https://git.pengutronix.de/cgit/barebox/tree/net/eth.c#n299  
> 
> of_get_reproducible_name()/of_find_node_by_reproducible_name() is used for
> fixing up mtd partitions and state nodes, but not yet for the ethernet
> devices because nobody noticed.
> 
> To fix you would have to get a reproducible name of the ethernet device
> node from the barebox device tree using of_find_node_by_reproducible_name()
> and then use of_find_node_by_reproducible_name() on the kernel device
> tree.

Ok, this makes sense. My only grief is that we are still left with a forced
bootloader update before being able to move to kernel 4.15+, for a reason
which to me doesn't sound really worth it. Granted, the leading zero's are a
bit ugly and probably never should have made it mainline, but I don't
understand why the DT compiler should suddenly complain about that and can't be
fixed. In a way, the device-tree is an interface from the kernel to the outside
world, and while it is not really "user-space", IMHO it should still be
regarded stable and "set in stone"... but maybe that's just me? Of course if
it really _is_ structurally wrong, it must be fixed, but please be aware that
it _will_ hurt people!
From a manufacturer perspective, I can say that while customers have come
to accept regular kernel updates (due to legitimate security reasons and
whatnot), bootloader upgrades are still a big issue. They usually don't accept
such "risky" upgrades in the field without putting up a fight :-(

Best regards,

-- 
David Jander
Protonic Holland.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
