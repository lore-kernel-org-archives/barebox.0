Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fyA9a-0000eR-3P
 for barebox@lists.infradead.org; Fri, 07 Sep 2018 06:22:03 +0000
Date: Fri, 7 Sep 2018 08:21:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180907062148.3by4l4dv44ud5arh@pengutronix.de>
References: <1536128432-21031-1-git-send-email-oleg.karfich@wago.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1536128432-21031-1-git-send-email-oleg.karfich@wago.com>
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
Subject: Re: [PATCH 0/2] add support for pca955x i2c led drivers
To: Oleg.Karfich@wago.com
Cc: barebox@lists.infradead.org

On Wed, Sep 05, 2018 at 06:20:38AM +0000, Oleg.Karfich@wago.com wrote:
> Hi,
> 
> this series adds support for the pca955x i2c-bus led drivers. The driver is
> ported from the linux kernel and is reduced for locking and gpio support (could
> not be tested by us, so we leave it out). Documentation is already there [1].
> 
> We tested this driver on our board with the led driver in [2].
> 
> [1] dts/Bindings/leds/leds-pca955x.txt
> [2] https://www.nxp.com/docs/en/data-sheet/PCA9552.pdf
> 
> Oleg Karfich (2):
>   led: add pca955x led support
>   led: use max led value in case of led trigger

Applied, thanks

Sascha

> 
>  drivers/led/Kconfig       |   9 +
>  drivers/led/Makefile      |   1 +
>  drivers/led/core.c        |   4 +-
>  drivers/led/led-pca955x.c | 421 ++++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 434 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/led/led-pca955x.c
> 
> -- 
> 2.7.4
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
