Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHdA-0002cj-E7
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 09:13:21 +0000
Date: Tue, 14 Apr 2020 11:13:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200414091318.GZ27288@pengutronix.de>
References: <20200414090610.9119-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414090610.9119-1-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH] of: use of_get_child_by_name() to find child node
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Tue, Apr 14, 2020 at 11:06:10AM +0200, Michael Tretter wrote:
> After iterating the children of a node with for_each_child_of_node(),
> the child node will never be NULL. If the node was not found,
> overlay_child will always point to the first element in the list, which
> might or might not be the node that was searched.
> 
> Use the of_get_child_by_name() helper function to find the child node
> with the name, which does the right thing and returns NULL if the node
> is not found.
> 
> Reported-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  drivers/of/resolver.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
