Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XWeps-0008Dx-15
 for barebox@lists.infradead.org; Wed, 24 Sep 2014 05:09:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XWepW-00050Q-08
 for barebox@lists.infradead.org; Wed, 24 Sep 2014 07:09:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1XWepV-0004T9-Ub
 for barebox@lists.infradead.org; Wed, 24 Sep 2014 07:09:29 +0200
Date: Wed, 24 Sep 2014 07:09:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140924050929.GF4958@pengutronix.de>
References: <1411024275-31766-1-git-send-email-s.hauer@pengutronix.de>
 <1411024275-31766-5-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411024275-31766-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 4/4] net: phy: Use poller for periodic link check
To: barebox@lists.infradead.org

On Thu, Sep 18, 2014 at 09:11:15AM +0200, Sascha Hauer wrote:
> This continuously updates the link status in the background. The networking
> code no longer has to periodically update the link status itself but instead
> can only check for phydev->link.
> With this we also always have link status changes printed to the console.

Nice try, but this doesn't work, so I'll drop this one.

The problem comes with USB network adapters (SPI would be the same).
pollers get called in is_timeout() loops like USB host drivers use
to poll for urb completion. So when network transfers happen and
the network driver issues USB requests it can happen that in the
USB host driver a poller triggers which with the periodic link check
now triggers a USB request itself. barebox can't (and shouldn't) handle
this reentrancy.

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
