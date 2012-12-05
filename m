Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgK3K-0006Ge-8R
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 18:50:38 +0000
Date: Wed, 5 Dec 2012 19:50:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205185036.GM10369@pengutronix.de>
References: <1354719233-28847-1-git-send-email-w.sang@pengutronix.de>
 <20121205183732.GK10369@pengutronix.de>
 <20121205184210.GA9329@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121205184210.GA9329@pengutronix.de>
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
Subject: Re: [PATCH] mtd: nand: mxs: reset BCH earlier to avoid NAND startup
 problems
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 05, 2012 at 07:42:10PM +0100, Wolfram Sang wrote:
> On Wed, Dec 05, 2012 at 07:37:32PM +0100, Sascha Hauer wrote:
> > On Wed, Dec 05, 2012 at 03:53:53PM +0100, Wolfram Sang wrote:
> > > It could happen (1 out of 100 times) that NAND did not start up
> > > correctly after warm rebooting, so barebox could not find its
> > > environment or DMA timed out due to a stalled BCH. When resetting BCH
> > > together with GPMI, the issue could not be observed anymore. We probably
> > > need the consistent state already before sending commands to NAND.
> > 
> > The subject suggests that the BCH engine is resetted earlier, but
> > instead of moving the reset this patch adds another reset. Is this
> > intended?
> 
> Yes, I wanted to keep resetting BCH before applying a new layout. Maybe
> the subject should have been named "earlier, too,". I can drop the other
> check and rerun my tests if this seems overcautios to you.

change the patch or the subject, either way is fine with me.

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
