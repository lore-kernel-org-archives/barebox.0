Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1greUy-0004Dr-Ve
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 07:53:30 +0000
Date: Thu, 7 Feb 2019 08:53:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190207075324.ejnoa4higewdxuhq@pengutronix.de>
References: <20190205215411.589-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190205215411.589-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 00/15] PCIE support for i.MX8MQ
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 05, 2019 at 01:53:56PM -0800, Andrey Smirnov wrote:
> This series contains port of the various Linux patches needed to
> enable support of PCIE IP block on i.MX8MQ SoCs.
> 
> Feedback is welcome!
> 
> Changes since [v1]:
> 
>     - Added proper SHA1s and removed RFC tag from last four patches
>       since their Linux counterparts were accepted to PCI tree
> 
> Thanks,
> Andrey Smirnov

Applied, thanks

Sascha

> 
> [v1] http://lists.infradead.org/pipermail/barebox/2019-January/036899.html
> 
> Andrey Smirnov (15):
>   PCI: dwc: Fix pointer width cast problem
>   ARM: aarch64: Add PCI fixups section to linker script
>   soc: imx: gpcv2: use A_CORE instread of A7 for more i.MX platforms
>   soc: imx: gpcv2: make pgc driver more generic for other i.MX platforms
>   soc: imx: gpcv2: Switch to SPDX identifier
>   soc: imx: gpcv2: prefix i.MX7 specific defines
>   soc: imx: gpcv2: add support for i.MX8MQ SoC
>   reset: Constify "ops" in struct reset_controller_dev
>   reset: imx7: Add plubming to support multiple IP variants
>   include: Import dt-bindings/reset/imx8mq-reset.h
>   reset: imx7: Add support for i.MX8MQ IP block variant
>   PCI: imx6: Introduce drvdata
>   PCI: imx6: Mark PHY functions as i.MX6 specific
>   PCI: imx6: Convert DIRECT_SPEED_CHANGE quirk code to use a flag
>   PCI: imx6: Add support for i.MX8MQ
> 
>  arch/arm/lib64/barebox.lds.S             |  12 +
>  arch/arm/mach-imx/Kconfig                |   1 +
>  drivers/pci/Kconfig                      |   4 +-
>  drivers/pci/pci-imx6.c                   | 149 ++++++++++--
>  drivers/pci/pcie-designware-host.c       |   6 +-
>  drivers/reset/reset-imx7.c               | 172 +++++++++++--
>  drivers/reset/reset-socfpga.c            |   2 +-
>  drivers/soc/imx/Kconfig                  |   8 +-
>  drivers/soc/imx/Makefile                 |   2 +-
>  drivers/soc/imx/gpcv2.c                  | 297 ++++++++++++++++++-----
>  include/dt-bindings/reset/imx8mq-reset.h |  64 +++++
>  include/linux/reset-controller.h         |   2 +-
>  12 files changed, 614 insertions(+), 105 deletions(-)
>  create mode 100644 include/dt-bindings/reset/imx8mq-reset.h
> 
> -- 
> 2.20.1
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
