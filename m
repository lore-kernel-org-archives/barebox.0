Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSiiG-00032p-Ld
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 12:47:54 +0000
Date: Tue, 12 Jun 2018 14:47:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180612124738.pi66gx2vlgvoljmo@pengutronix.de>
References: <20180612142308.4a048a14@erd980>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180612142308.4a048a14@erd980>
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
To: David Jander <david@protonic.nl>
Cc: Fabio Estevam <fabio.estevam@nxp.com>, Barebox List <barebox@lists.infradead.org>, Marco Franchi <marco.franchi@nxp.com>, Shawn Guo <shawnguo@kernel.org>

Hi David,

On Tue, Jun 12, 2018 at 02:23:08PM +0200, David Jander wrote:
> 
> Hi Sascha,
> 
> I know this is old already, and I was surprised that I couldn't find any
> complaints about this yet, but I recently came across this patch in the kernel:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/patch/?id=df5cc9d0b42d15fa33b30440cca7a11ca7ba35a4
> 
> ...which was adopted in barebox as this:
> 
> https://git.pengutronix.de/cgit/barebox/patch/dts/src/arm/imx6qdl.dtsi?id=2e9cce8fb1f577088e2b20ae2f461130e13ad190
> 
> As I don't know the exact reason as to why this was necessary, or why this is
> an issue at all, I just wanted to point out the fact that this leads to some
> breakage in barebox new and old.

This issue is known and has led to
https://www.mail-archive.com/barebox@lists.infradead.org/msg25189.html

> 
> The specific problem I observed is here:
> https://git.pengutronix.de/cgit/barebox/tree/net/eth.c#n299

of_get_reproducible_name()/of_find_node_by_reproducible_name() is used for
fixing up mtd partitions and state nodes, but not yet for the ethernet
devices because nobody noticed.

To fix you would have to get a reproducible name of the ethernet device
node from the barebox device tree using of_find_node_by_reproducible_name()
and then use of_find_node_by_reproducible_name() on the kernel device
tree.

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
