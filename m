Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sd10d-0008MP-Iw
 for barebox@lists.infradead.org; Fri, 08 Jun 2012 15:21:57 +0000
Date: Fri, 8 Jun 2012 17:21:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120608152152.GX30400@pengutronix.de>
References: <1339103098-32102-1-git-send-email-s.hauer@pengutronix.de>
 <1339103098-32102-4-git-send-email-s.hauer@pengutronix.de>
 <201206081706.13549.marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201206081706.13549.marex@denx.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/4] mtd nand: add mxs-nand driver
To: Marek Vasut <marex@denx.de>
Cc: barebox@lists.infradead.org, wsa@pengutronix.de, Wolfram Sang <w.sang@pengutronix.de>

Hi Marek,

Sorry to bother you with barebox patches, I realized after the fact
that the Cc list gets expanded with the Signed-off-bys. Anyway
congratulations for your first barebox patch ;)

On Fri, Jun 08, 2012 at 05:06:13PM +0200, Marek Vasut wrote:
> Dear Sascha Hauer,
> 
> > From: Wolfram Sang <w.sang@pengutronix.de>
> > 
> > Based on the U-Boot version. Changed to kernel style register layout, added
> > MX23 support (WIP!), made MMU aware and adapted to barebox.
> 
> Can you split the changes so it's not such a block of code, hard to review ?

Sorry, I don't have the history of this patches.

> Possibly to "kernel style register layout" (which I believe is stupid anyway, 
> using struct based access is less error prone and more clear),

That's your mileage, others may vary.

>  "mx23 support" 
> and "mmu awareness" (whatever that is).

Basically cache flushing/invalidating.

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
