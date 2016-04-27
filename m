Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avLOy-0005Cl-Bu
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 09:04:57 +0000
Date: Wed, 27 Apr 2016 11:04:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160427090434.GR7860@pengutronix.de>
References: <1461696366-21604-1-git-send-email-boris.brezillon@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461696366-21604-1-git-send-email-boris.brezillon@free-electrons.com>
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
Subject: Re: [PATCH] of: fix of_tree_for_each_node_from() macro
To: Boris Brezillon <boris.brezillon@free-electrons.com>
Cc: barebox@lists.infradead.org

Hi Boris,

On Tue, Apr 26, 2016 at 08:46:06PM +0200, Boris Brezillon wrote:
> of_tree_for_each_node_from() is supposed to iterate over all DT nodes
> after the one pointed by the from parameter, but with the current
> of_next_node() implementation we cannot access the root node.
> 
> Patch of_next_node() to point to root_node when from is NULL.
> 
> Doing that also simplifies users of of_tree_for_each_node_from() which
> were duplicating the logic to point to the root_node when from is NULL.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@free-electrons.com>
> ---
> Hi Sacha,
> 
> Not sure this patch is doing exactly what we want, but it fixes a bug
> in the sunxi clk driver I'm working on. This driver declares a
> clk provider using CLK_OF_DECLARE() with the SoC compatible (the
> compatible attached to the root node), which means the clk core code has
> to match the root_node, and with the current of_tree_for_each_node() it
> never tests the root_node.

The patch looks good and I can't find a reason why it shouldn't work as
expected. I applied it for now. Let's see what happens.

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
