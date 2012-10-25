Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRH46-0004h4-Hh
 for barebox@lists.infradead.org; Thu, 25 Oct 2012 06:37:16 +0000
Date: Thu, 25 Oct 2012 08:37:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121025063711.GC27665@pengutronix.de>
References: <1351101988-6681-1-git-send-email-s.hauer@pengutronix.de>
 <20121024183359.GN21588@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121024183359.GN21588@game.jcrosoft.org>
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
Subject: Re: [PATCH] net phy: poll for a link
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 24, 2012 at 08:33:59PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 20:06 Wed 24 Oct     , Sascha Hauer wrote:
> > Since we have phylib we have no instance which polls for a link. This
> > means that network boot often bails out after a powercycle or phy reset.
> > This changes the link status behaviour to:
> > 
> > - Always check for a link if the last link test was unsuccesful
> > - If the last check was succesful, check for a link when the last
> >   check is longer than 5 seconds ago
> > - Try to get a link for 5 seconds.
> 5 seconds is too long
> 
> and check the link is wrong you need to check the autoneg
> the link may be down because no cable
> 
> Here we need to check the autoneg is finished
> and the phy is up
> 
> so use phy_aneg_done and genphy_config_aneg is for this

phy_aneg_done is not exported and genphy_config_aneg is for phy driver
use only.

Could you prepare a patch for this? You insisted hard on getting this
merged in the first place and seem to know what has to be done.

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
