Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9qmK-00028N-HH
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 07:15:57 +0000
Date: Wed, 23 Jul 2014 09:15:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140723071534.GG23235@pengutronix.de>
References: <1406052648-8675-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406052648-8675-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 0/2] Pinctrl drivers for Armada 370 and XP
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Tue, Jul 22, 2014 at 08:10:46PM +0200, Sebastian Hesselbarth wrote:
> We already have a common pinctrl driver for Marvell MVEBU SoCs but
> SoC specific stubs for Armada 370 and XP were missing. This patch
> set converts those over from Linux to Barebox to allow pin muxing.
> 
> The stubs were tested on Armada 370 and compile-tested for Armada XP.

Applied, thanks

Sascha

> 
> Sebastian
> 
> Sebastian Hesselbarth (2):
>   pinctrl: mvebu: add pinctrl driver for Armada 370
>   pinctrl: mvebu: add pinctrl driver for Armada XP
> 
>  arch/arm/mach-mvebu/Kconfig        |   2 +
>  drivers/pinctrl/mvebu/Kconfig      |   8 +
>  drivers/pinctrl/mvebu/Makefile     |   2 +
>  drivers/pinctrl/mvebu/armada-370.c | 416 +++++++++++++++++++++++++++++++++++++
>  drivers/pinctrl/mvebu/armada-xp.c  | 403 +++++++++++++++++++++++++++++++++++
>  5 files changed, 831 insertions(+)
>  create mode 100644 drivers/pinctrl/mvebu/armada-370.c
>  create mode 100644 drivers/pinctrl/mvebu/armada-xp.c
> 
> ---
> Cc: barebox@lists.infradead.org
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> -- 
> 2.0.0
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
