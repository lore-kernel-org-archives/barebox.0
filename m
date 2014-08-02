Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDdKr-0000HI-Uh
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 17:43:14 +0000
Date: Sat, 2 Aug 2014 14:41:54 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Message-ID: <20140802174154.GB29743@arch.cereza>
References: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20140731054957.GQ23235@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140731054957.GQ23235@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/6] Add network support for Armada 370/XP
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 31 Jul 07:49 AM, Sascha Hauer wrote:
> Hi Ezequiel,
> =

> On Tue, Jul 29, 2014 at 05:44:55PM -0300, Ezequiel Garcia wrote:
> > This patchset adds support for the network controller found on Marvell
> > Armada 370/XP SoC.
> > =

> > The first patch is needed to parse the PHY property used in the current
> > devicetree, which uses 'phy' instead of 'phy-handle'. While here, the p=
atch
> > adds support for the two obsolete DT PHY properties: 'phy' and 'phy-dev=
ice'.
> > =

> > The second patch is actually an improvement. It makes the clock a requi=
red
> > property of the mvmdio driver, which makes the probing of the device mo=
re
> > robust, and prevents the annoying freezing when the clock is not provid=
ed.
> > =

> > The third patch supports the QSGMII interface.
> > =

> > The fourth patch adds support for the Marvell 88E1545 PHY chip. There's=
 not
> > much work to do, except configuring the QSGMII interface. This chip is =
present
> > in Marvell's Armada XP GP board.
> > =

> > The fifth patch adds the mvneta driver. Most of the configuration part =
is
> > based on Linux's mvneta driver, while some of code organization is based
> > on Barebox's orion-gbe driver.
> > =

> > The last patch adds network support in the defconfigs.
> > =

> > This has been tested on the Armada XP GP board only. I'll try to test
> > Openblocks AX3 and Mirabox in the following days. However, we might need
> > some special PHY support for each them, as the Openblocks AX3 has a
> > 88E1543 PHY, and the Mirabox has a 88E1510 PHY.
> > =

> > Ezequiel Garcia (6):
> >   net: phy: Add fallbacks for the obsoletes phy DT properties
> >   net: phy: mdio-mvebu: Make the clock property required
> >   net: phy: Add minimal support for QSGMII PHY
> >   net: phy: Support Marvell 88EE1545 PHY
> >   net: Add driver for Armada 370/XP 10/100/1000 Mbps network controller
> >   configs: Add network options to Armada 370/XP boards
> =

> I applied up to 3/6 for now. The network driver needs a small fix.
> Please let me know once you're happy enough with the phy support to
> apply it.
> =


OK, thanks.

I'll be pushing a new patchset on top of that with the PHY and the network
driver.
-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
