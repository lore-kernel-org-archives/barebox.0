Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPNYr-0000fQ-7Y
 for barebox@lists.infradead.org; Wed, 21 Nov 2018 08:08:38 +0000
Date: Wed, 21 Nov 2018 09:08:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181121080825.lsopljkt2ieuwr4j@pengutronix.de>
References: <20181120200714.3692-1-linux@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181120200714.3692-1-linux@rempel-privat.de>
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
Subject: Re: [PATCH v1 0/9] random fixes
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 20, 2018 at 09:07:05PM +0100, Oleksij Rempel wrote:
> next round of random fixes reported by codacy:
> https://app.codacy.com/app/olerem/barebox/issues/index?bid=9803255
> 
> Oleksij Rempel (9):
>   net: e1000: fix "Uninitialized variable: phy_data" warning
>   pinctrl: tegra30: fix "Possible null pointer dereference: group"
>     warning
>   fs: closedir: remove uninitialized variable ret
>   fs: fix possible null pointer dereference of base.
>   mfd: da9063: fix wrong NULL pointer test
>   usb: at91_udc: remove useless NULL check
>   mtd: atmel_nand: remove erroneous case
>   usb: musb: fix possible out of bounds access
>   lib: lodepng: remove useless test

Applied, thanks

Sascha

> 
>  drivers/mfd/da9063.c               | 2 +-
>  drivers/mtd/nand/atmel_nand.c      | 1 -
>  drivers/net/e1000/main.c           | 2 +-
>  drivers/pinctrl/pinctrl-tegra30.c  | 4 ++--
>  drivers/usb/gadget/at91_udc.c      | 3 +--
>  drivers/usb/musb/musb_gadget_ep0.c | 7 ++++++-
>  fs/fs.c                            | 7 +++----
>  lib/gui/lodepng.c                  | 8 +-------
>  8 files changed, 15 insertions(+), 19 deletions(-)
> 
> -- 
> 2.17.1
> 
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
