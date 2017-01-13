Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRvlR-0001qa-97
 for barebox@lists.infradead.org; Fri, 13 Jan 2017 06:55:08 +0000
Date: Fri, 13 Jan 2017 07:54:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170113065439.lsl5kntyqmfkmpfw@pengutronix.de>
References: <20170111155920.13179-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170111155920.13179-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1 0/7] net/phy: marvell: add support for 88e1510
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 11, 2017 at 04:59:13PM +0100, Uwe Kleine-K=F6nig wrote:
> Hello,
> =

> this series targets to add support for the Marvell phy 88e1510 to the
> marvell phy driver. To make this and future additions easy there are
> several preparing patches that make the barebox driver very similar to
> the Linux driver. This allows to have the two drivers open side by side
> (I use vim -d) to add new features to the barebox driver that are
> already present in Linux.
> =

> Best regards
> Uwe
> =

> Uwe Kleine-K=F6nig (7):
>   net/phy: marvell: rename 88E1545 to 88E1540
>   net/phy: marvell: 88E1540 LED registers already exist on 88E1121
>   net/phy: marvell: rename phy_driver array to match Linux driver
>   net/phy: marvell: change spacing to be more similar to the Linux
>     driver
>   net/phy: marvell: align definition of MII_88E1121_PHY_MSCR to Linux
>     driver
>   net/phy: marvell: improve config_aneg for 88E1121R and 88E1318S
>   net/phy: marvell: add support for 88e1510 to marvell phy driver
> =

>  drivers/net/phy/marvell.c   | 353 ++++++++++++++++++++++++++++++++++++++=
+-----
>  include/linux/marvell_phy.h |   2 +-
>  2 files changed, 314 insertions(+), 41 deletions(-)

Applied, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
