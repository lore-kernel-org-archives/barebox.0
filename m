Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNAs7-0001FU-U1
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 08:20:28 +0000
Date: Tue, 29 Sep 2020 10:20:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200929082025.GW11648@pengutronix.de>
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
 <20200928155041.32649-4-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928155041.32649-4-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH 03/18] drivers: gpio: treewide: [cosmetic] use
 register_driver_macros
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 28, 2020 at 05:50:26PM +0200, Marco Felsch wrote:
> Use the existing macros to register the drivers. No functional changes
> except for the gpio-mxs and gpio-imx driver. Now they do not ignore the
> return values anymore.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/gpio/gpio-ath79.c          | 7 +------
>  drivers/gpio/gpio-davinci.c        | 7 +------
>  drivers/gpio/gpio-digic.c          | 7 +------
>  drivers/gpio/gpio-dw.c             | 7 +------
>  drivers/gpio/gpio-generic.c        | 7 +------
>  drivers/gpio/gpio-imx.c            | 8 +-------
>  drivers/gpio/gpio-jz4740.c         | 7 +------
>  drivers/gpio/gpio-malta-fpga-i2c.c | 7 +------
>  drivers/gpio/gpio-mpc8xxx.c        | 7 +------
>  drivers/gpio/gpio-mxs.c            | 8 +-------
>  drivers/gpio/gpio-omap.c           | 7 +------
>  drivers/gpio/gpio-stmpe.c          | 7 +------
>  drivers/gpio/gpio-tegra.c          | 7 +------
>  drivers/gpio/gpio-vf610.c          | 7 +------
>  14 files changed, 14 insertions(+), 86 deletions(-)

I already had a patch which does this change for all drivers. I just
sent it out.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
