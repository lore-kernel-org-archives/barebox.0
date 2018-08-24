Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft78b-0003cU-Aw
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 08:08:11 +0000
Date: Fri, 24 Aug 2018 10:03:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180824080329.uxnvaaxiw6ayzqat@pengutronix.de>
References: <20180822183555.GA24084@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180822183555.GA24084@ravnborg.org>
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
Subject: Re: [PATCH v4 0/3] Add Davicom phy + reset-gpios
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 22, 2018 at 08:35:55PM +0200, Sam Ravnborg wrote:
> Changes in v4:
> - Either register a mdio node or phy child nodes
> - Check for valid phy node before registering the phy node
>   This is like the kernel does it
> - Also recognize compatible="ethernet-phy-id*" as PHY's
>   again like the kernel, but with a simpler implementation,
>   as we do not try to read the actual phy_id

Applied, thanks

Sascha

> 
> Changes in v3:
> - Consider the v3 a new implmentation - almost nothing was
>   left from v2. Thus also invalidate any former review - sorry.
> - Dropped the need for the mdio {} node, as this node is
>   only used when there is dedicated HW support for the mdio.
> - Added so PHY child nodes to ethernet nodes are registered,
>   and as part of registration the PHY nodes are reset if
>   the reset-gpios property is present.
> - Further dropped that the parsed info is stored in the bus,
>   as we only do reset once, thus there is no need to
>   save the info from the DT
> - Futher dropped helper function to reset. They was not needed
> - Named the gpio with the name of the PHY node
>   in the DT. This makes it unique and easier to recognize.
> 
> Changes in v2:
> - Added patch to enable Davicom PHY on at91sam9263ek - evaluation kit
> - Fix so we do reset before comunicating with the PHY
> - Rename to mdio_reset()
> - Reference correct binding file in commit log (mdio.txt)
> - Tested on at91sam9263ek
>   The at91sam9263ek kit do not require the reset like my
>   proprietary board, so no DT changes required
> 
> Intro:
> The following patches was necessary to get networking
> operational on my proprietary target.
> The target is at91sam9263 based with a Davicom PHY.
> 
> The Davicom PHY is a straight copy form the Linux
> kernel with the interrupt routine removed and
> minor adjustments to the rest.
> 
> The davicom PHY would not work until it had seen a reset
> cycle - which I think may be an artifact of the board design.
> 
> To fix the reset issue I have implemented support for the
> reset-gpios binding (see net/phy.txt bindings).
> A minimal implmentation was done, just enough to get
> my target running.
> 
> I could have implemented something in macb -
> but I preferred the more generic solution.
> 
> Also included are a patch that for the at91sam9263ek
> evaluation board. The patch adds several extra tools
> that are usefull for testing, and enable the Davicom PHY.
> 
>         Sam
> 
> Sam Ravnborg (3):
>       phylib: add Davicom PHY support
>       phylib: add support for reset-gpios
>       at91sam9263ek: add PHY, miitool etc. to config
> 
>  arch/arm/configs/at91sam9263ek_defconfig |  12 ++-
>  drivers/net/phy/Kconfig                  |   5 ++
>  drivers/net/phy/Makefile                 |   1 +
>  drivers/net/phy/davicom.c                | 140 +++++++++++++++++++++++++++++++
>  drivers/net/phy/mdio_bus.c               |  97 ++++++++++++++++++++-
>  5 files changed, 253 insertions(+), 2 deletions(-)
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
