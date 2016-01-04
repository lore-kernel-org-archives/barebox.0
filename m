Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aG1Tf-0003wz-Eb
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 09:31:00 +0000
Date: Mon, 4 Jan 2016 10:30:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160104093037.GG13058@pengutronix.de>
References: <1451627918-31967-1-git-send-email-andrew.smirnov@gmail.com>
 <1451627918-31967-6-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1451627918-31967-6-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 6/6] i.MX6: pci: Avoid aborts when asserting PCIe reset
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Lucas Stach <lst@pengutronix.de>


The PCI patches look good to me. I'll give Lucas the change to look over
them.

Sascha

On Thu, Dec 31, 2015 at 09:58:38PM -0800, Andrey Smirnov wrote:
> When booting Barebox in the HW environment where PCIe core has been
> used but not properly shut down, writing to PCIE_PL_PFLR in
> imx6_pcie_assert_core_reset would cause data abort exception.
> 
> The problem can be easily reproduced on a i.MX6 based board with PCIe
> slot populated with some device by doing:
> 
> > bootm -f -e 0x1050 <your board's>.img
> 
> Ignoring this exception seem to allow PCIe core to successfully
> initialize and enumerate devices properly. This is also how Linux
> Kernel version of the driver handles this situation -- it installs
> dummy no-op abort handler at the beginning of device's probing.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/pci/pci-imx6.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
> index 713007b..3a3edd8 100644
> --- a/drivers/pci/pci-imx6.c
> +++ b/drivers/pci/pci-imx6.c
> @@ -13,6 +13,7 @@
> 
>  #include <common.h>
>  #include <clock.h>
> +#include <abort.h>
>  #include <malloc.h>
>  #include <io.h>
>  #include <init.h>
> @@ -237,7 +238,10 @@ static int imx6_pcie_assert_core_reset(struct pcie_port *pp)
>  		val = readl(pp->dbi_base + PCIE_PL_PFLR);
>  		val &= ~PCIE_PL_PFLR_LINK_STATE_MASK;
>  		val |= PCIE_PL_PFLR_FORCE_LINK;
> +
> +		data_abort_mask();
>  		writel(val, pp->dbi_base + PCIE_PL_PFLR);
> +		data_abort_unmask();
> 
>  		gpr12 &= ~IMX6Q_GPR12_PCIE_CTL_2;
>  		writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
> --
> 2.5.0
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
