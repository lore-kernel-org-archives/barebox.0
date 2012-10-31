Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTfH2-000785-UX
 for barebox@lists.infradead.org; Wed, 31 Oct 2012 20:52:29 +0000
Date: Wed, 31 Oct 2012 21:52:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121031205225.GP1641@pengutronix.de>
References: <1351614606-16461-1-git-send-email-s.hauer@pengutronix.de>
 <1351614606-16461-3-git-send-email-s.hauer@pengutronix.de>
 <20121031082552.GA2582@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121031082552.GA2582@pengutronix.de>
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
Subject: Re: [PATCH 2/2] net fec: call fec_init at probe time
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 31, 2012 at 09:25:52AM +0100, Wolfram Sang wrote:
> On Tue, Oct 30, 2012 at 05:30:06PM +0100, Sascha Hauer wrote:
> > fec_init() initializes some bits important for phy access, so do
> > this before the mdiobus is registered. This fixes mdiobus support
> > on i.MX28 boards in RMII mode.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Extremly minor:
> 
> Reported-by: Wolfram Sang <w.sang@pengutronix.de>

Added this while applying.

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
