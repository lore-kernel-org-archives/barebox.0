Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVA4J-000515-0A
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 06:57:00 +0000
Date: Fri, 7 Dec 2018 07:56:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181207065647.me5b5cq7xlf6qrzw@pengutronix.de>
References: <20181205185739.21153-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181205185739.21153-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH v2] drivers: net: phy: convert drivers to spdx
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 05, 2018 at 07:57:39PM +0100, Oleksij Rempel wrote:
> Reviewed-by: Roland Hieber <r.hieber@pengutronix.de>
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  drivers/net/phy/ar8327.c        |  6 +-----
>  drivers/net/phy/at803x.c        |  6 +-----
>  drivers/net/phy/davicom.c       |  7 +------
>  drivers/net/phy/lxt.c           |  6 +-----
>  drivers/net/phy/mdio-bitbang.c  |  5 +----
>  drivers/net/phy/mdio-gpio.c     |  5 +----
>  drivers/net/phy/mdio-mux-gpio.c | 14 +-------------
>  drivers/net/phy/mdio-mux.c      | 11 +----------
>  drivers/net/phy/mdio-mvebu.c    |  5 +----
>  drivers/net/phy/mdio_bus.c      |  7 +------
>  drivers/net/phy/micrel.c        |  6 +-----
>  drivers/net/phy/national.c      |  6 +-----
>  drivers/net/phy/phy.c           |  7 +------
>  drivers/net/phy/smsc.c          |  6 +-----
>  14 files changed, 14 insertions(+), 83 deletions(-)

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
