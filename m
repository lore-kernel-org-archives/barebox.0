Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0mLj-0002hq-Bh
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 09:56:37 +0000
Date: Wed, 19 Apr 2017 11:56:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170419095613.ckeqmflk5nc4xvf7@pengutronix.de>
References: <20170418091558.11927-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170418091558.11927-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH v2] mci: add Marvell Dove SDHCI driver
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 18, 2017 at 11:15:58AM +0200, Michael Grzeschik wrote:
> This adds a driver for the SDHCI controller found on Marvell Dove SoCs.
> Despite a missing pinctrl driver, corresponding MPP config has to be
> set on a per board basis.
> 
> This driver was succesfully tested with Solidrun Dove Cubox.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> 
> ---
> RFC -> v1: - acknowledging the dma_int status bit to resume xfer
>            - added dma_sync_single_for_device where we handover data
>            - rate limited the multiwrite size with an max_req_size
>              and increased the timeout according to the data being
>              handled
> 
>  v1 -> v2: - added myself to authors
>            - added ACK from Sebastian
> ---
>  arch/arm/configs/mvebu_defconfig |   1 +
>  drivers/mci/Kconfig              |   7 +
>  drivers/mci/Makefile             |   1 +
>  drivers/mci/dove-sdhci.c         | 392 +++++++++++++++++++++++++++++++++++++++
>  drivers/mci/sdhci.h              |  59 ++++++
>  5 files changed, 460 insertions(+)
>  create mode 100644 drivers/mci/dove-sdhci.c

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
