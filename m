Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PazZu-0001gt-GY
	for barebox@lists.infradead.org; Thu, 06 Jan 2011 23:49:11 +0000
Date: Fri, 7 Jan 2011 00:36:51 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110106233651.GB944@game.jcrosoft.org>
References: <m38vyym6k9.fsf@intrepid.localdomain>
	<m3vd22kq8q.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3vd22kq8q.fsf@intrepid.localdomain>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: Add support for IXP4xx CPU and for Goramo
	Multilink router platform.
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

> +
> +/* offsets from start of flash ROM = 0x50000000 */
> +#define CFG_ETH0_ADDRESS     0x40 /* 6 bytes */
                           ^^^^^
whitespace please use tab for indent
> +#define CFG_ETH1_ADDRESS     0x46 /* 6 bytes */
> +#define CFG_REV              0x4C /* u32 */
> +#define CFG_SDRAM_SIZE       0x50 /* u32 */
> +#define CFG_SDRAM_CONF       0x54 /* u32 */
> +#define CFG_SDRAM_MODE       0x58 /* u32 */
> +#define CFG_SDRAM_REFRESH    0x5C /* u32 */
> +
> +#define CFG_HW_BITS          0x60 /* u32 */
> +#define  CFG_HW_USB_PORTS    0x00000007 /* 0 = no NEC chip, 1-5 = ports # */
> +#define  CFG_HW_HAS_PCI_SLOT 0x00000008
> +#define  CFG_HW_HAS_ETH0     0x00000010
> +#define  CFG_HW_HAS_ETH1     0x00000020
> +#define  CFG_HW_HAS_HSS0     0x00000040
> +#define  CFG_HW_HAS_HSS1     0x00000080
> +#define  CFG_HW_HAS_UART0    0x00000100
> +#define  CFG_HW_HAS_UART1    0x00000200
> +#define  CFG_HW_HAS_EEPROM   0x00000400
> +
> +#define ETH_ALEN             6
IIR we have a macro for it
> +
> +#define BAREBOX_START        0x00000
> +#define BAREBOX_LENGTH       0x34000
> +#define NPE_A_START          (BAREBOX_START + BAREBOX_LENGTH)
> +#define NPE_A_LENGTH         0x05000
> +#define NPE_B_START          (NPE_A_START + NPE_A_LENGTH)
> +#define NPE_B_LENGTH         0x03000
> +#define NPE_C_START          (NPE_B_START + NPE_B_LENGTH)
> +#define NPE_C_LENGTH         0x04000
> +#define NPE_ENV0_START       (NPE_C_START + NPE_C_LENGTH)
> +#define NPE_ENV0_LENGTH      0x20000
I prefer we use a fs to store it so we can share it Linux
with a cramfs at least
> +
> +static struct device_d cfi_dev = {
> +	.name     = "cfi_flash",
> +	.map_base = IXP4XX_EXP_BASE(0),
> +	.size     = 16 * 1024 * 1024,
> +};
> +
> +static struct eth_plat_info eth_pinfo[2] = {
> +	{
> +		.regs     = IXP4XX_EthB_BASE,
> +		.npe      = 1,
> +		.phy      = 0,
> +		.rxq      = 20,
> +		.txreadyq = 29,
> +	}, {
> +		.regs     = IXP4XX_EthC_BASE,
> +		.npe      = 2,
> +		.phy      = 1,
> +		.rxq      = 21,
> +		.txreadyq = 30,
> +	}
> +};
> +
> +
> +	sdram_dev.size = __raw_readl(IXP4XX_EXP_BASE(0) + CFG_SDRAM_SIZE);
how about check the data before register
and if not good use the minimum memory size for the hardware design
> +	i = register_device(&sdram_dev);
> +	if (i)
> +		goto out;
> +
> +	armlinux_add_dram(&sdram_dev);
> +	armlinux_set_bootparams((void *)(0x00000100));
> +	armlinux_set_architecture(MACH_TYPE_GORAMO_MLR);
> +
> +out:
> +	return i;
> +}

 +
> +static inline void qmgr_put_entry(unsigned int queue, u32 val)
> +{
> +#if DEBUG_QMGR
> +	BUG_ON(!qmgr_queue_descs[queue]); /* not yet requested */
> +
> +	fprintf(stderr, "Queue %s(%i) put %X\n",
> +		qmgr_queue_descs[queue], queue, val);
please use debug() instead of fprintf so no need of ifdef if no BUG_ON
and it will be good to be able to enable the DEBUG via Kconfig

please avoid the #if 0
if no need remove it or use a CONFIG

othersize looks fine

I will test it on the nslu2 later

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
