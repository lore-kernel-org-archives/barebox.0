Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBfl6-0005n7-T9
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 07:21:58 +0000
Date: Fri, 7 Feb 2014 08:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140207072134.GG16215@pengutronix.de>
References: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 0/6] Marvell MVEBU mbus and Orion GBE driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

On Wed, Feb 05, 2014 at 11:40:03PM +0100, Sebastian Hesselbarth wrote:
> This patch set provides a common driver for the mbus found on all
> Marvell MVEBU SoCs and a ethernet driver for the IP found on Marvell
> Orion SoCs. Regards go to Michael Grzeschik who forced me to work on
> this by importing the borked mv643xx driver from u-boot.
> 
> Compared to the former patches sent by Michael, this driver now
> separates mbus handling, mdio bus driver, and ethernet driver. The
> mbus handling can be reused on all MVEBU SoCs and is based on what
> we already have on Linux for it. The mdio bus driver can be reused
> by Armada 370/XP Neta Ethernet core.
> 
> I have tested the driver on SolidRun CuBox (Dove) and also on
> Globalscale Guruplug (Kirkwood). Kirkwood still need some loving care
> before (88E1121 PHY init, pbl images, ...) so I decided to leave it
> out of the patch set for now.
> 
> Patch 1 first reorders drivers/net/{Kconfig,Makefile} alphabetically.
> 
> Patch 2 then introduces a of_phy_device_connect to allow to connect
> to a PHY without knowing the corresponding mdio bus.
> 
> Patches 3, 4, 5 add drivers for the mbus, mdio bus, and Orion GBE
> respectively.
> 
> Patch 6 finally re-syncs Dove's DT files with v3.14 Linux DT files.
> 
> All patches are based on release v2014.02.0 and can also be found on
> https://github.com/shesselba/barebox-dove.git topic/orion-gbe-v1
> 
> Sebastian Hesselbarth (6):
>   net: reorder Kconfig and Makefile alphabetically
>   net: phy: add of_phy_device_connect
>   bus: mvebu: add mbus driver
>   net: phy: add mvebu mdio bus driver
>   net: orion: add ethernet driver
>   ARM: dove: sync with DT files from Linux

Looks fine to me except for the two small comments to the mbus driver.

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
