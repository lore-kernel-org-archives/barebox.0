Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2Dsb-0005Fe-6u
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 06:18:54 +0000
Date: Wed, 2 Jul 2014 08:18:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140702061830.GZ14257@pengutronix.de>
References: <1404158389-14632-1-git-send-email-antonynpavlov@gmail.com>
 <1404158389-14632-5-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404158389-14632-5-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC v4 4/6] net: add RealTek RTL-8139 PCI Ethernet driver
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 30, 2014 at 11:59:47PM +0400, Antony Pavlov wrote:
> This driver is based on Linux 2.6.39 8139too driver.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  drivers/net/Kconfig     |   8 +
>  drivers/net/Makefile    |   1 +
>  drivers/net/rtl8139.c   | 616 ++++++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/pci_ids.h |   5 +
>  4 files changed, 630 insertions(+)
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 7a0d5e1..975c927 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -130,6 +130,14 @@ config DRIVER_NET_ORION
>  	select PHYLIB
>  	select MDIO_MVEBU
>  
> +config DRIVER_NET_RTL8139
> +	bool "RealTek RTL-8139 PCI Ethernet driver"
> +	depends on PCI
> +	select PHYLIB
> +	help
> +	  This is a driver for the Fast Ethernet PCI network cards based on
> +	  the RTL 8139 chips.
> +
>  config DRIVER_NET_SMC911X
>  	bool "smc911x ethernet driver"
>  	select PHYLIB
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 65f0d8b..d907061 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -20,6 +20,7 @@ obj-$(CONFIG_DRIVER_NET_MICREL)		+= ksz8864rmn.o
>  obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
>  obj-$(CONFIG_DRIVER_NET_NETX)		+= netx_eth.o
>  obj-$(CONFIG_DRIVER_NET_ORION)		+= orion-gbe.o
> +obj-$(CONFIG_DRIVER_NET_RTL8139)	+= rtl8139.o
>  obj-$(CONFIG_DRIVER_NET_SMC911X)	+= smc911x.o
>  obj-$(CONFIG_DRIVER_NET_SMC91111)	+= smc91111.o
>  obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
> diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
> new file mode 100644
> index 0000000..82c3585
> --- /dev/null
> +++ b/drivers/net/rtl8139.c
> @@ -0,0 +1,616 @@
> +#include <common.h>
> +#include <net.h>
> +#include <malloc.h>
> +#include <init.h>
> +#include <xfuncs.h>
> +#include <errno.h>
> +#include <io.h>
> +#include <linux/phy.h>
> +#include <linux/pci.h>
> +
> +#include <asm/dma-mapping.h>
> +
> +#define RTL8139_DEBUG
> +#undef RTL8139_DEBUG
> +
> +/*
> + * Receive ring size
> + * Warning: 64K ring has hardware issues and may lock up.
> + */
> +#define RX_BUF_IDX	0	/* 8K ring */
> +#define RX_BUF_LEN	(8192 << RX_BUF_IDX)
> +#define RX_BUF_PAD	16
> +#define RX_BUF_WRAP_PAD 2048 /* spare padding to handle lack of packet wrap */
> +
> +#if RX_BUF_LEN == 65536
> +#define RX_BUF_TOT_LEN	RX_BUF_LEN
> +#else
> +#define RX_BUF_TOT_LEN	(RX_BUF_LEN + RX_BUF_PAD + RX_BUF_WRAP_PAD)
> +#endif
> +
> +/* Number of Tx descriptor registers. */
> +#define NUM_TX_DESC	4
> +
> +/* max supported ethernet frame size -- must be at least (dev->mtu+14+4).*/
> +#define MAX_ETH_FRAME_SIZE	1536
> +
> +/* Size of the Tx bounce buffers -- must be at least (dev->mtu+14+4). */
> +#define TX_BUF_SIZE	MAX_ETH_FRAME_SIZE
> +#define TX_BUF_TOT_LEN	(TX_BUF_SIZE * NUM_TX_DESC)
> +
> +/* PCI Tuning Parameters
> +   Threshold is bytes transferred to chip before transmission starts. */
> +#define TX_FIFO_THRESH 256	/* In bytes, rounded down to 32 byte units. */
> +
> +/* The following settings are log_2(bytes)-4:  0 == 16 bytes .. 6==1024, 7==end of packet. */
> +#define RX_FIFO_THRESH	7	/* Rx buffer level before first PCI xfer.  */
> +#define RX_DMA_BURST	7	/* Maximum PCI burst, '6' is 1024 */
> +#define TX_DMA_BURST	6	/* Maximum PCI burst, '6' is 1024 */
> +#define TX_RETRY	8	/* 0-15.  retries = 16 + (TX_RETRY * 16) */
> +
> +struct rtl8139_priv {
> +	struct eth_device	edev;
> +	void __iomem		*base;
> +	struct pci_dev		*pci_dev;
> +	unsigned char		*rx_ring;
> +	unsigned int		cur_rx; /* RX buf index of next pkt */
> +	dma_addr_t		rx_ring_dma;
> +
> +	u32			rx_config;
> +	unsigned int		tx_flag;
> +	unsigned long		cur_tx;
> +	unsigned long		dirty_tx;
> +	unsigned char		*tx_buf[NUM_TX_DESC];   /* Tx bounce buffers */
> +	unsigned char		*tx_bufs;       /* Tx bounce buffer region. */
> +	dma_addr_t		tx_bufs_dma;
> +
> +	struct mii_bus miibus;
> +};
> +
> +#define ETH_ZLEN        60              /* Min. octets in frame sans FCS */
> +
> +/* Registers */
> +#define MAC0		0x00
> +#define MAR0		0x08
> +#define TxStatus0	0x10
> +
> +enum TxStatusBits {
> +	TxHostOwns	= 0x2000,
> +	TxUnderrun	= 0x4000,
> +	TxStatOK	= 0x8000,
> +	TxOutOfWindow	= 0x20000000,
> +	TxAborted	= 0x40000000,
> +	TxCarrierLost	= 0x80000000,
> +};
> +
> +#define TxAddr0		0x20
> +#define RxBuf		0x30
> +#define ChipCmd		0x37
> +#define  CmdReset	0x10
> +#define  CmdRxEnb	0x08
> +#define  CmdTxEnb	0x04
> +#define  RxBufEmpty	0x01
> +#define RxBufPtr	0x38
> +#define RxBufAddr	0x3A
> +#define IntrMask	0x3C
> +#define IntrStatus	0x3E
> +#define  PCIErr		0x8000
> +#define  PCSTimeout	0x4000
> +#define  RxFIFOOver	0x0040
> +#define  RxUnderrun	0x0020
> +#define  RxOverflow	0x0010
> +#define  TxErr		0x0008
> +#define  TxOK		0x0004
> +#define  RxErr		0x0002
> +#define  RxOK		0x0001
> +#define    RxAckBits	(RxFIFOOver | RxOverflow | RxOK)
> +
> +#define TxConfig	0x40
> +/* Bits in TxConfig. */
> +enum tx_config_bits {
> +	/* Interframe Gap Time. Only TxIFG96 doesn't violate IEEE 802.3 */
> +	TxIFGShift	= 24,
> +	TxIFG84		= (0 << TxIFGShift), /* 8.4us / 840ns (10 / 100Mbps) */
> +	TxIFG88		= (1 << TxIFGShift), /* 8.8us / 880ns (10 / 100Mbps) */
> +	TxIFG92		= (2 << TxIFGShift), /* 9.2us / 920ns (10 / 100Mbps) */
> +	TxIFG96		= (3 << TxIFGShift), /* 9.6us / 960ns (10 / 100Mbps) */
> +
> +	TxLoopBack	= (1 << 18) | (1 << 17), /* enable loopback test mode */
> +	TxCRC		= (1 << 16),	/* DISABLE Tx pkt CRC append */
> +	TxClearAbt	= (1 << 0),	/* Clear abort (WO) */
> +	TxDMAShift	= 8, /* DMA burst value (0-7) is shifted X many bits */
> +	TxRetryShift	= 4, /* TXRR value (0-15) is shifted X many bits */
> +
> +	TxVersionMask	= 0x7C800000, /* mask out version bits 30-26, 23 */
> +};
> +
> +#define RxConfig	0x44
> +	/* rx fifo threshold */
> +#define  RxCfgFIFOShift	13
> +#define	 RxCfgFIFONone	(7 << RxCfgFIFOShift)
> +	/* Max DMA burst */
> +#define	 RxCfgDMAShift	8
> +#define	 RxCfgDMAUnlimited (7 << RxCfgDMAShift)
> +	/* rx ring buffer length */
> +#define	 RxCfgRcv8K	0
> +#define	 RxCfgRcv16K	(1 << 11)
> +#define	 RxCfgRcv32K	(1 << 12)
> +#define	 RxCfgRcv64K	((1 << 11) | (1 << 12))
> +	/* Disable packet wrap at end of Rx buffer. (not possible with 64k) */
> +#define	 RxNoWrap	(1 << 7)
> +#define	 AcceptErr		0x20
> +#define	 AcceptRunt		0x10
> +#define	 AcceptBroadcast	0x08
> +#define	 AcceptMulticast	0x04
> +#define	 AcceptMyPhys		0x02
> +#define	 AcceptAllPhys		0x01
> +
> +#define RxMissed	0x4C
> +#define Cfg9346		0x50
> +#define  Cfg9346_Lock	0x00
> +#define  Cfg9346_Unlock	0xC0
> +#define BasicModeCtrl	0x62
> +#define BasicModeStatus	0x64
> +#define NWayAdvert	0x66
> +#define NWayLPAR	0x68
> +#define NWayExpansion	0x6a
> +
> +static const char mii_2_8139_map[8] = {
> +	BasicModeCtrl,
> +	BasicModeStatus,
> +	0,
> +	0,
> +	NWayAdvert,
> +	NWayLPAR,
> +	NWayExpansion,
> +	0
> +};
> +
> +/* write MMIO register */
> +#define RTL_W8(priv, reg, val)	writeb(val, ((char *)(priv->base) + reg))
> +#define RTL_W16(priv, reg, val)	writew(val, ((char *)(priv->base) + reg))
> +#define RTL_W32(priv, reg, val)	writel(val, ((char *)(priv->base) + reg))
> +
> +/* read MMIO register */
> +#define RTL_R8(priv, reg)	readb(((char *)(priv->base) + reg))
> +#define RTL_R16(priv, reg)	readw(((char *)(priv->base) + reg))
> +#define RTL_R32(priv, reg)	readl(((char *)(priv->base) + reg))
> +
> +/* write MMIO register, with flush */
> +/* Flush avoids rtl8139 bug w/ posted MMIO writes */
> +static inline void RTL_W8_F(struct rtl8139_priv *priv, int reg, int val)
> +{
> +	RTL_W8(priv, reg, val);
> +	RTL_R8(priv, reg);
> +}
> +
> +static inline void RTL_W16_F(struct rtl8139_priv *priv, int reg, int val)
> +{
> +	RTL_W16(priv, reg, val);
> +	RTL_R16(priv, reg);
> +}
> +
> +static inline void RTL_W32_F(struct rtl8139_priv *priv, int reg, int val)
> +{
> +	RTL_W32(priv, reg, val);
> +	RTL_R32(priv, reg);
> +}
> +
> +static const unsigned int rtl8139_rx_config =
> +	RxCfgRcv8K | RxNoWrap |
> +	(RX_FIFO_THRESH << RxCfgFIFOShift) |
> +	(RX_DMA_BURST << RxCfgDMAShift);
> +
> +static const unsigned int rtl8139_tx_config =
> +	TxIFG96 | (TX_DMA_BURST << TxDMAShift) | (TX_RETRY << TxRetryShift);
> +
> +static void rtl8139_chip_reset(struct rtl8139_priv *priv)
> +{
> +	int i;
> +
> +	/* Soft reset the chip. */
> +	RTL_W8(priv, ChipCmd, CmdReset);
> +
> +	/* Check that the chip has finished the reset. */
> +	for (i = 1000; i > 0; i--) {
> +		if ((RTL_R8(priv, ChipCmd) & CmdReset) == 0)
> +			break;
> +		udelay(10);
> +	}
> +}
> +
> +static void __set_rx_mode(struct rtl8139_priv *priv)
> +{
> +	u32 mc_filter[2];	/* Multicast hash filter */
> +	int rx_mode;
> +	u32 tmp;
> +
> +	rx_mode =
> +	    AcceptBroadcast | AcceptMulticast | AcceptMyPhys |
> +	    AcceptAllPhys;
> +	mc_filter[1] = mc_filter[0] = 0xffffffff;
> +
> +	/* We can safely update without stopping the chip. */
> +	tmp = rtl8139_rx_config | rx_mode;
> +	if (priv->rx_config != tmp) {
> +		RTL_W32_F(priv, RxConfig, tmp);
> +		priv->rx_config = tmp;
> +	}
> +
> +	RTL_W32_F(priv, MAR0 + 0, mc_filter[0]);
> +	RTL_W32_F(priv, MAR0 + 4, mc_filter[1]);
> +}
> +
> +/* Start the hardware at open or resume. */
> +static void rtl8139_hw_start(struct rtl8139_priv *priv)
> +{
> +	u32 i;
> +	u8 tmp;
> +
> +	rtl8139_chip_reset(priv);
> +
> +	/* unlock Config[01234] and BMCR register writes */
> +	RTL_W8_F(priv, Cfg9346, Cfg9346_Unlock);
> +
> +	/* FIXME */
> +#if 0
> +	/* Restore our idea of the MAC address. */
> +	RTL_W32_F(priv, MAC0 + 0, *(__le32 *) (dev->dev_addr + 0));
> +	RTL_W32_F(priv, MAC0 + 4, *(__le16 *) (dev->dev_addr + 4));
> +#endif

Is this something that needs fixing? The MAC Address should be
configured correctly without this code, right?

> +	priv->miibus.read = rtl8139_phy_read;
> +	priv->miibus.write = rtl8139_phy_write;
> +	priv->miibus.priv = priv;
> +	priv->miibus.parent = &edev->dev;
> +
> +	/* FIXME: pci_resource_start() */
> +	pci_read_config_dword(pdev, PCI_BASE_ADDRESS_1, &bar);
> +
> +	/* FIXME: use pci_iomap() */
> +	priv->base = (void *)bus->ops->res_start(bus, bar);

barebox has resources. Can't we use them here? What's missing?

> +
> +	printk("found rtl8139 (rev %02x) at %02x: %04x (base=%p)\n",
> +			pdev->revision,
> +			pdev->devfn,
> +			(pdev->class >> 8) & 0xffff,
> +			priv->base);

dev_info

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
