Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3HxP-0003J3-0K
 for barebox@lists.infradead.org; Thu, 19 May 2016 07:01:19 +0000
Date: Thu, 19 May 2016 09:00:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160519070056.GC11148@pengutronix.de>
References: <1462861483-19983-1-git-send-email-s.hauer@pengutronix.de>
 <1462861483-19983-4-git-send-email-s.hauer@pengutronix.de>
 <20160518065216.GA2362@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160518065216.GA2362@lws-christ>
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
Subject: Re: [PATCH 4/4] mtd: nand: nand_mxs: Add subpage read support
To: Stefan Christ <s.christ@phytec.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, May 18, 2016 at 08:52:16AM +0200, Stefan Christ wrote:
> Hi Sascha,
> 
> On Tue, May 10, 2016 at 08:24:43AM +0200, Sascha Hauer wrote:
> > subpage read support can significantly speed up scanning UBI volumes, so
> > add support for it. This is inspired by the corresponding Kernel commit.
> > Unlike in the kernel we add subpage read support for i.MX28 aswell.
> > Testing it on i.MX28 revealed no problems.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Here is my 
> 
>     Tested-by: Stefan Christ <s.christ@phytec.de>
> 
> I measured the ubiattach time for two different NAND chips after an ubiformat
> on the devices. It's around 30% faster. Here are the results:

Thanks for testing this.

The results become even better with bigger pages. I have a board with 8k
page Nand here. The scanning time reduced from 31s to 3.5s.

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
