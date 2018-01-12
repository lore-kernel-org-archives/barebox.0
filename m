Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZtz6-0004MP-2n
 for barebox@lists.infradead.org; Fri, 12 Jan 2018 07:42:42 +0000
Date: Fri, 12 Jan 2018 08:42:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180112074226.s7dyuvovw3t6y3t7@pengutronix.de>
References: <54fc425c0bfd47078982f16247bd164b@XCGVAG27.northgrum.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54fc425c0bfd47078982f16247bd164b@XCGVAG27.northgrum.com>
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
Subject: Re: Barebox device tree overlay support
To: "Dgien, David [US] (MS)" <David.Dgien@ngc.com>
Cc: "'barebox@lists.infradead.org'" <barebox@lists.infradead.org>

Hi David,

On Thu, Jan 11, 2018 at 03:40:49PM +0000, Dgien, David [US] (MS) wrote:
> Hello,
> 
> When going through the archives it looks like a set of patches were submitted to support device tree overlays in barebox in http://lists.infradead.org/pipermail/barebox/2015-March/022674.html.
> But they weren't accepted because overlays weren't fully implemented in the DTC yet.
> 
> It looks like overlay support was mainlined in the kernel in 4.11. ( kernel/git/torvalds/linux.git: be5165a51d2500ae1afa1236a8b09858831fdf7e )

I am still not sure which parts got merged and which are still pending.
There are still overlay patches floating around.

> 
> Would it be possible to take another look at pulling these patches into the barebox mainline?

Generally yes. If you like, please rebase test and respin the patches.

We gave up at that time because we didn't see any good usecase for
overlay support which we can't solve with the instruments we already
have. So I would be glad to hear about your motivation using overlays.

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
