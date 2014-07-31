Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCjFs-0005Fj-Rn
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 05:50:21 +0000
Date: Thu, 31 Jul 2014 07:49:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140731054957.GQ23235@pengutronix.de>
References: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
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
Subject: Re: [PATCH 0/6] Add network support for Armada 370/XP
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Willy Tarreau <w@1wt.eu>

Hi Ezequiel,

On Tue, Jul 29, 2014 at 05:44:55PM -0300, Ezequiel Garcia wrote:
> This patchset adds support for the network controller found on Marvell
> Armada 370/XP SoC.
> 
> The first patch is needed to parse the PHY property used in the current
> devicetree, which uses 'phy' instead of 'phy-handle'. While here, the patch
> adds support for the two obsolete DT PHY properties: 'phy' and 'phy-device'.
> 
> The second patch is actually an improvement. It makes the clock a required
> property of the mvmdio driver, which makes the probing of the device more
> robust, and prevents the annoying freezing when the clock is not provided.
> 
> The third patch supports the QSGMII interface.
> 
> The fourth patch adds support for the Marvell 88E1545 PHY chip. There's not
> much work to do, except configuring the QSGMII interface. This chip is present
> in Marvell's Armada XP GP board.
> 
> The fifth patch adds the mvneta driver. Most of the configuration part is
> based on Linux's mvneta driver, while some of code organization is based
> on Barebox's orion-gbe driver.
> 
> The last patch adds network support in the defconfigs.
> 
> This has been tested on the Armada XP GP board only. I'll try to test
> Openblocks AX3 and Mirabox in the following days. However, we might need
> some special PHY support for each them, as the Openblocks AX3 has a
> 88E1543 PHY, and the Mirabox has a 88E1510 PHY.
> 
> Ezequiel Garcia (6):
>   net: phy: Add fallbacks for the obsoletes phy DT properties
>   net: phy: mdio-mvebu: Make the clock property required
>   net: phy: Add minimal support for QSGMII PHY
>   net: phy: Support Marvell 88EE1545 PHY
>   net: Add driver for Armada 370/XP 10/100/1000 Mbps network controller
>   configs: Add network options to Armada 370/XP boards

I applied up to 3/6 for now. The network driver needs a small fix.
Please let me know once you're happy enough with the phy support to
apply it.

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
