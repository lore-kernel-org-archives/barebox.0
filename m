Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9ttk-0006VD-Na
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 10:35:49 +0000
Received: by mail-we0-f175.google.com with SMTP id t60so955061wes.6
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 03:35:24 -0700 (PDT)
Message-ID: <53CF8FE8.8010806@gmail.com>
Date: Wed, 23 Jul 2014 12:35:20 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406107568-8440-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406107568-8440-7-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH RESEND 6/6] pci: mvebu: Add PCIe driver
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

On 07/23/2014 11:26 AM, Sebastian Hesselbarth wrote:
> This adds a PCI driver for the controllers found on Marvell MVEBU SoCs.
> Besides the functional driver itself, it also adds SoC specific PHY
> setup required for PCIe. Currently, only Armada 370 is fully supported.
>
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
[...]
> diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
> new file mode 100644
> index 000000000000..6fee0800e98e
> --- /dev/null
> +++ b/drivers/pci/pci-mvebu.c
> @@ -0,0 +1,436 @@
> +/*
> + * PCIe driver for Marvell MVEBU SoCs
> + *
> + * Based on Linux drivers/pci/host/pci-mvebu.c
> + *
> + * This file is licensed under the terms of the GNU General Public
> + * License version 2.  This program is licensed "as is" without any
> + * warranty of any kind, whether express or implied.
> + */
> +
[...]
> +static int mvebu_pcie_indirect_rd_conf(struct pci_bus *bus,
> +	       unsigned int devfn, int where, int size, u32 *val)
> +{
> +	struct pci_controller *pci = bus->sysdata;
> +	struct mvebu_pcie *pcie = to_pcie(pci);
> +
> +	/* Skip all requests not directed to device behind bridge */
> +	if (devfn != 0x08 || !mvebu_pcie_link_up(pcie)) {

nit: this and below should be

	if (devfn != pcie->devfn || !mvebu_pcie_link_up(pcie))

Still, I have no clue how link state can be determined for
individual lanes on Armada XP. But I think this has to be fixed
up when we stumble upon it on a XP board that makes use of 4x1
PCIe slots.

> +		*val = 0xffffffff;
> +		return PCIBIOS_DEVICE_NOT_FOUND;
> +	}
> +
> +	writel(PCIE_CONF_ADDR(bus->number, devfn, where),
> +	       pcie->base + PCIE_CONF_ADDR_OFF);
> +
> +	*val = readl(pcie->base + PCIE_CONF_DATA_OFF);
> +
> +	if (size == 1)
> +		*val = (*val >> (8 * (where & 3))) & 0xff;
> +	else if (size == 2)
> +		*val = (*val >> (8 * (where & 3))) & 0xffff;
> +
> +	return PCIBIOS_SUCCESSFUL;
> +}
> +
> +static int mvebu_pcie_indirect_wr_conf(struct pci_bus *bus,
> +	       unsigned int devfn, int where, int size, u32 val)
> +{
> +	struct pci_controller *pci = bus->sysdata;
> +	struct mvebu_pcie *pcie = to_pcie(pci);
> +	u32 _val, shift = 8 * (where & 3);
> +
> +	/* Skip all requests not directed to device behind bridge */
> +	if (devfn != 0x08 || !mvebu_pcie_link_up(pcie))
> +		return PCIBIOS_DEVICE_NOT_FOUND;
> +
> +	writel(PCIE_CONF_ADDR(bus->number, devfn, where),
> +	       pcie->base + PCIE_CONF_ADDR_OFF);
> +	_val = readl(pcie->base + PCIE_CONF_DATA_OFF);
> +
> +	if (size == 4)
> +		_val = val;
> +	else if (size == 2)
> +		_val = (_val & ~(0xffff << shift)) | ((val & 0xffff) << shift);
> +	else if (size == 1)
> +		_val = (_val & ~(0xff << shift)) | ((val & 0xff) << shift);
> +	else
> +		return PCIBIOS_BAD_REGISTER_NUMBER;
> +
> +	writel(_val, pcie->base + PCIE_CONF_DATA_OFF);
> +
> +	return PCIBIOS_SUCCESSFUL;
> +}
[...]
> +static struct mvebu_pcie *mvebu_pcie_port_probe(struct device_d *dev,
> +						struct device_node *np)
> +{
[...]
> +	pcie->membase = mvebu_pcie_membase;
> +	pcie->mem.start = 0;
> +	pcie->mem.end = pcie->mem.start + SZ_32M - 1;
> +	if (mvebu_mbus_add_window_remap_by_id(mem_target, mem_attr,
> +		(resource_size_t)pcie->membase, resource_size(&pcie->mem), 0)) {
> +		dev_err(dev, "PCIe%d.%d unable to add mbus window for mem at %08x+%08x",
> +			port, lane, (u32)pcie->mem.start, resource_size(&pcie->mem));
> +
> +		free(pcie);
> +		return ERR_PTR(-EBUSY);
> +	}
> +	mvebu_pcie_membase += SZ_32M;

Thinking about the 10 possible lanes on Armada XP, this size will
collide with internal registers for the last two as we are starting
from 0xe0000000. Either we limit the MEM size to 16M now or again wait
for any board suffering from it.

I see no point in adding any dynamic window resize now.

Sebastian

> +	if (io_target >= 0 && io_attr >= 0) {
> +		pcie->iobase = mvebu_pcie_iobase;
> +		pcie->io.start = 0;
> +		pcie->io.end = pcie->io.start + SZ_64K - 1;
> +
> +		mvebu_mbus_add_window_remap_by_id(io_target, io_attr,
> +			(resource_size_t)pcie->iobase, resource_size(&pcie->io), 0);
> +		mvebu_pcie_iobase += SZ_64K;
> +	}
> +
> +	clk = of_clk_get(np, 0);
> +	if (!IS_ERR(clk))
> +		clk_enable(clk);
> +
> +	pcie->pci.pci_ops = &mvebu_pcie_indirect_ops;
> +	pcie->pci.mem_resource = &pcie->mem;
> +	pcie->pci.io_resource = &pcie->io;
> +
> +	return pcie;
> +}


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
