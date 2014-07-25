Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAbeE-0001pF-Jn
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 09:18:43 +0000
Message-ID: <1406279788.4643.17.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 25 Jul 2014 11:16:28 +0200
In-Reply-To: <1406107568-8440-7-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406107568-8440-7-git-send-email-sebastian.hesselbarth@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH RESEND 6/6] pci: mvebu: Add PCIe driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Am Mittwoch, den 23.07.2014, 11:26 +0200 schrieb Sebastian Hesselbarth:
> This adds a PCI driver for the controllers found on Marvell MVEBU SoCs.
> Besides the functional driver itself, it also adds SoC specific PHY
> setup required for PCIe. Currently, only Armada 370 is fully supported.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

I can't really comment about the details, as I have no knowledge about
this hardware in particular, but aside from the sysdata thing and one
nit below this looks reasonable, so:

Acked-by: Lucas Stach <l.stach@pengutronix.de>

> ---
> To: barebox@lists.infradead.org
> To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> ---
>  arch/arm/Kconfig            |   1 +
>  drivers/pci/Kconfig         |   6 +
>  drivers/pci/Makefile        |   2 +
>  drivers/pci/pci-mvebu-phy.c | 102 +++++++++++
>  drivers/pci/pci-mvebu.c     | 436 ++++++++++++++++++++++++++++++++++++++++++++
>  drivers/pci/pci-mvebu.h     |  35 ++++
>  6 files changed, 582 insertions(+)
>  create mode 100644 drivers/pci/pci-mvebu-phy.c
>  create mode 100644 drivers/pci/pci-mvebu.c
>  create mode 100644 drivers/pci/pci-mvebu.h
> 
[...]
> +
> +static struct mvebu_pcie_ops armada_370_ops = {
> +	.phy_setup = armada_370_phy_setup,
> +};
> +
> +static struct of_device_id mvebu_pcie_dt_ids[] = {
> +#if defined(CONFIG_ARCH_ARMADA_XP)
> +	{ .compatible = "marvell,armada-xp-pcie", },
> +#endif
> +#if defined(CONFIG_ARCH_ARMADA_370)
> +	{ .compatible = "marvell,armada-370-pcie", .data = (u32)&armada_370_ops, },
> +#endif
> +#if defined(CONFIG_ARCH_DOVE)
> +	{ .compatible = "marvell,dove-pcie", },
> +#endif
> +#if defined(CONFIG_ARCH_KIRKWOOD)
> +	{ .compatible = "marvell,kirkwood-pcie", },
> +#endif
> +	{ },
> +};
> +

Do those #if defined really buy us anything? I don't think they make a
big difference on code size, so please get rid of those.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
