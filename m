Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aG0Zu-0002V3-Cp
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 08:33:23 +0000
Date: Mon, 4 Jan 2016 09:32:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160104083257.GA13058@pengutronix.de>
References: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
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

On Sat, Dec 19, 2015 at 12:13:59AM +0000, Trent Piepho wrote:
> The existing iterator for_each_compatible_node() searches for each
> compatible node starting from the root of the loaded device tree.
> This means it only works on the barebox device tree and not the tree
> to be passed to the Linux kernel, which is what an of_fixup would
> probably want to use.
> 
> This adds for_each_compatible_node_from(), which takes an additional
> parameter of a root to search from.  This could be the device tree to
> be used for the kernel.  It could also be used to search just a
> subtree.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>

Applied, thanks

> ---
> 
> It's possible the fixups in cm_cogent_fixup() and hb_fixup() should
> be using this.  It's not clear to me if they want to modify the barebox
> device tree or the Linux device tree or both.

It's always the Linux device tree that is fixed up in the OF fixups.

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
