Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cEfuu-0005mG-M9
 for barebox@lists.infradead.org; Wed, 07 Dec 2016 17:22:07 +0000
Date: Wed, 7 Dec 2016 18:21:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161207172141.kuatmsqrqn5gujme@pengutronix.de>
References: <20161207155900.29320-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161207155900.29320-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] spi: mvebu: fix baudrate selection for Armada 370/XP
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 07, 2016 at 04:59:00PM +0100, Uwe Kleine-K=F6nig wrote:
> There are two problems that made the driver choose the wrong baudrate
> calculation algorithm:
> =

> a) The compatible used on 370/XP isn't marvell,armada-370-xp-spi but
>    marvell,armada-370-spi or marvell,armada-xp-spi respectively.
> b) The probe function uses
>    	match =3D of_match_node(mvebu_spi_dt_ids, dev->device_node);
>    to determine the right algorithm. As the devices are also compatible
>    to marvell,orion-spi and this comes first in mvebu_spi_dt_ids[]
>    it's always the older Orion algorithm that is used.
> =

> This patch fixes both problems.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

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
