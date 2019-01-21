Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glULr-0006Ry-U0
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 07:50:37 +0000
Date: Mon, 21 Jan 2019 08:50:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190121075034.d574nwbxan32pghc@pengutronix.de>
References: <20190120062352.29764-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190120062352.29764-1-shc_work@mail.ru>
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
Subject: Re: [PATCH] treewide: Remove trailing whitespaces and tabs
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Jan 20, 2019 at 09:23:52AM +0300, Alexander Shiyan wrote:
> Just a cleanup over barebox tree
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/nxp-imx8mq-evk/ddr_init.c  | 4 ++--
>  arch/arm/mach-imx/include/mach/iomux-mx8.h | 2 +-
>  arch/arm/mach-mvebu/armada-370-xp.c        | 6 +++---
>  common/image-fit.c                         | 2 +-
>  drivers/clk/imx/clk-imx7.c                 | 2 +-
>  drivers/efi/efi-device.c                   | 2 +-
>  drivers/pci/pcie-designware-host.c         | 2 +-
>  fs/cramfs/cramfs.c                         | 2 +-
>  scripts/kconfig/gconf.c                    | 2 +-
>  scripts/socfpga_mkimage.c                  | 2 +-
>  10 files changed, 13 insertions(+), 13 deletions(-)

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
