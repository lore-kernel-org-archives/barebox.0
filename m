Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6cP3-0003hz-MK
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 07:09:30 +0000
Date: Wed, 29 Aug 2012 09:09:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120829070927.GR26594@pengutronix.de>
References: <1344959336-18562-1-git-send-email-plagnioj@jcrosoft.com>
 <20120814195854.GB1451@pengutronix.de>
 <20120815043249.GR6271@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120815043249.GR6271@game.jcrosoft.org>
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
Subject: Re: [for master PATCH 1/2] miidev: add phy_addr detection support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 15, 2012 at 06:32:49AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 21:58 Tue 14 Aug     , Sascha Hauer wrote:
> > On Tue, Aug 14, 2012 at 05:48:55PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > export via param the phy_addr and the phy_id detected
> > > 
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > > Hi,
> > > 
> > > 	this is need to fix the calao board support since the introduction of
> > > 	the gigabit phy detection support
> > 
> > Can you explain what this has to do with gigabit support?
> before we do not check the error on the phy detection
> 
> now we do and do not register the miidev if we can not detect it

Anyway, I won't introduce a new feature into master. If you want to have
it there, find another solution.

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
