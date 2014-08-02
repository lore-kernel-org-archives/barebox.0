Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDdJO-00009A-O5
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 17:41:43 +0000
Date: Sat, 2 Aug 2014 14:40:21 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Message-ID: <20140802174021.GA29743@arch.cereza>
References: <1406666701-15356-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1406666701-15356-5-git-send-email-ezequiel.garcia@free-electrons.com>
 <20140729213734.GA27654@arch.cereza> <53DA7C19.7000108@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53DA7C19.7000108@gmail.com>
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
Subject: Re: [PATCH 4/6] net: phy: Support Marvell 88EE1545 PHY
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Willy Tarreau <w@1wt.eu>

On 31 Jul 07:25 PM, Sebastian Hesselbarth wrote:
> On 29.07.2014 23:37, Ezequiel Garcia wrote:
> >On 29 Jul 05:44 PM, Ezequiel Garcia wrote:
> >>This commit adds support for Marvell's 88E1545 PHY chip. In particular,=
 this
> >>allows to support QSGMII interfaces.
> >>
> >>Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> >>---
> >>  drivers/net/phy/marvell.c | 59 ++++++++++++++++++++++++++++++++++++++=
+++++++++
> >>  1 file changed, 59 insertions(+)
> >>
> >>diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
> >>index 34f852e..ad8854d 100644
> >>--- a/drivers/net/phy/marvell.c
> >>+++ b/drivers/net/phy/marvell.c
> >>@@ -23,6 +23,7 @@
> >>  #define MARVELL_PHY_ID_88E1318S		0x01410e90
> >>  #define MARVELL_PHY_ID_88E1116R		0x01410e40
> >>  #define MARVELL_PHY_ID_88E1510		0x01410dd0
> >>+#define MARVELL_PHY_ID_88E154x		0x01410eb1
> >>
> >>  /* Mask used for ID comparisons */
> >>  #define MARVELL_PHY_ID_MASK		0xfffffff0
> >
> >Small erratum: given this mask, the ID for the new PHY device should be
> >0x0x01410eb0 instead of 0x01410eb1.
> >
> >And by the way, Mirabox and Openblocks AX3 network support is not workin=
g.
> >The link is not detected, so it seems there's some more PHY work to be d=
one.

I've been doing some more tests and it seems that Openblocks AX3 works fine
after all (last time I wasn't setting the parameters properly).

I need to do some more tests for Mirabox, but we probably need to setup the
pinctrl to make it work. Currently, the board hangs when trying to bring up
the network interface.

> =

> I just confirmed that (after adding support for 88e1318), driver works
> on Armada XP ix4-300d on both RGMII ports.
> =

> Armada XP requires some additional magic foo in some retarded register
> to enable RGMII:
> =

> #define ARMADA_XP_PUP_ENABLE_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x1864c)
> /* Enable GBE0, GBE1, LCD and NFC PUP */
> reg =3D readl(ARMADA_XP_PUP_ENABLE_BASE);
> reg |=3D 0x17;
> writel(reg, ARMADA_XP_PUP_ENABLE_BASE);
> =


Thanks a lot for this test! Do you think it's OK to just add that
initialization to armada_370_xp_init_soc() ?

> I am not yet sure if that is also true for Armada 370 nor if it is also
> true for SGMII/QSGMII ports. Took me a while to hunt this down, but
> without above foo, there is no txclk on RGMII.
> =


The register is documented only on Armada XP, and it seems it's not needed
for SGMII/QSGMII.
-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
