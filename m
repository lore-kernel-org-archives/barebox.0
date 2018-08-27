Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuCHW-0003Ks-ST
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 07:49:52 +0000
Date: Mon, 27 Aug 2018 09:49:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180827074939.wx7vzos7qg7o23hb@pengutronix.de>
References: <20180825210315.4661-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180825210315.4661-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/6] i.MX51 RDU1 and Babbage USB fixes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Aug 25, 2018 at 02:03:09PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> These patches are a number of fixes I came up with while looking into
> USB related problems on Babbage board.
> 
> Feedback is welcome!
> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (6):
>   clk: i.MX: Port Linux clock tree for i.MX51 and i.MX53
>   ARM: imx51-zii-rdu1: Swtich to using Linux clock tree
>   ARM: freescale-mx51-babbage: Swtich to using Linux clock tree
>   ARM: freescale-mx51-babbage: Add USBH1 PHY reset sequence
>   dts: imx51-babbage: Add USBH1 iomux configuration
>   ARM: imx51-zii-rdu1: Add USBH1,2 iomux configuration

do 4/6 - 6/6 depend on the first three? If not I would apply them
independently.

Sascha

> 
>  .../arm/boards/freescale-mx51-babbage/board.c |  35 ++
>  arch/arm/dts/imx51-babbage.dts                |  24 +
>  arch/arm/dts/imx51-zii-rdu1.dts               |  46 ++
>  arch/arm/mach-imx/Kconfig                     |   2 +
>  drivers/clk/imx/Makefile                      |   2 +-
>  drivers/clk/imx/clk-imx51-imx53.c             | 549 ++++++++++++++++++
>  6 files changed, 657 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/clk/imx/clk-imx51-imx53.c
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
