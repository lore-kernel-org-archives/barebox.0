Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WzglC-0004UP-NX
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 06:32:47 +0000
Date: Wed, 25 Jun 2014 08:32:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140625063224.GJ15686@pengutronix.de>
References: <1403605091-26174-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403605091-26174-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 0/4] Orion GBE fixes and Marvell PHY driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 24, 2014 at 12:18:07PM +0200, Sebastian Hesselbarth wrote:
> This patch set comprises some fixes and improvements related with ethernet
> support on Marvell Orion SoC based boards.
> 
> Patch 1 adds a check for ePAPR standard "phy-connection-type" property to
> of_get_phy_mode.
> 
> Patch 2 resolves a device name conflict on orion-gbe port names when using
> more than one controller instance.
> 
> Patch 3 extends ethernet serial port setup to also check for delayed RGMII
> interface modes.
> 
> Patch 4 finally adds a driver for Marvell PHYs with 88E1121R as a first
> PHY driver.
> 
> The patches have been tested on Globalscale Guruplug. For ethernet, the
> board needs a DT fix that has been picked up for Linux v3.16-rc yesterday
> and should be available in barebox soon. For the second ethernet port,
> barebox is still missing pinctrl for Kirkwood, but that is next on my
> "polish private branches for submission"-TODO list.
> 
> Sebastian Hesselbarth (4):
>   of: net: respect phy-connection-type property
>   net: orion: generate unique port device names
>   net: orion-gbe: extend RGMII detection to delayed modes
>   net: phy: add support for Marvell PHY drivers

Applied, thanks

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
