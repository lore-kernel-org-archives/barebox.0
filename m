Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QFABk-0007p5-0w
	for barebox@lists.infradead.org; Wed, 27 Apr 2011 19:14:22 +0000
Received: by eyh6 with SMTP id 6so719662eyh.36
	for <barebox@lists.infradead.org>; Wed, 27 Apr 2011 12:14:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1302558729-3298-3-git-send-email-franck.jullien@gmail.com>
References: <1302558729-3298-1-git-send-email-franck.jullien@gmail.com>
	<1302558729-3298-3-git-send-email-franck.jullien@gmail.com>
Date: Wed, 27 Apr 2011 21:14:13 +0200
Message-ID: <BANLkTi=YvGHE_rnKvA50WmGzqdnZQ6ebJw@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1020401736=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] [v3] Nios2: Add Altera TSE driver
To: barebox@lists.infradead.org

--===============1020401736==
Content-Type: multipart/alternative; boundary=0015174c1c1206566a04a1eb3f00

--0015174c1c1206566a04a1eb3f00
Content-Type: text/plain; charset=ISO-8859-1

2011/4/11 <franck.jullien@gmail.com>

> From: Franck JULLIEN <franck.jullien@gmail.com>
>
> Add Altera Triple Speed Ethernet driver
>
> Signed-off-by: Franck JULLIEN <franck.jullien@gmail.com>
> ---
>  drivers/net/Kconfig      |   16 ++
>  drivers/net/Makefile     |    1 +
>  drivers/net/altera_tse.c |  579
> ++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/net/altera_tse.h |  303 ++++++++++++++++++++++++
>  4 files changed, 899 insertions(+), 0 deletions(-)
>  create mode 100644 drivers/net/altera_tse.c
>  create mode 100644 drivers/net/altera_tse.h
>
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 6479417..19e35db 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -84,6 +84,22 @@ config DRIVER_NET_TAP
>        bool "tap Ethernet driver"
>        depends on LINUX
>
> +config DRIVER_NET_TSE
> +       depends on NIOS2
> +       bool "Altera TSE ethernet driver"
> +       select MIIDEV
> +       help
> +         This option enables support for the Altera TSE MAC.
> +
> +config TSE_USE_DEDICATED_DESC_MEM
> +       depends on DRIVER_NET_TSE
> +       bool "Altera TSE uses dedicated descriptor memory"
> +       help
> +         This option tells the TSE driver to use an onchip memory
> +         to store SGDMA descriptors. Descriptor memory is not
> +         reserved with a malloc but directly mapped to the memory
> +         address (defined in config.h)
> +
>  source "drivers/net/usb/Kconfig"
>
>  endmenu
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index ab23d22..f02618b 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -11,3 +11,4 @@ obj-$(CONFIG_DRIVER_NET_MACB)         += macb.o
>  obj-$(CONFIG_DRIVER_NET_TAP)           += tap.o
>  obj-$(CONFIG_MIIDEV)                   += miidev.o
>  obj-$(CONFIG_NET_USB)                  += usb/
> +obj-$(CONFIG_DRIVER_NET_TSE)           += altera_tse.o
> diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c
> new file mode 100644
> index 0000000..d922a9a
> --- /dev/null
> +++ b/drivers/net/altera_tse.c
> @@ -0,0 +1,579 @@
> +/*
> + * Altera TSE Network driver
> + *
> + * Copyright (C) 2008 Altera Corporation.
> + * Copyright (C) 2010 Thomas Chou <thomas@wytron.com.tw>
> + * Copyright (C) 2011 Franck JULLIEN, <elec4fun@gmail.com>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <common.h>
> +#include <net.h>
> +#include <miidev.h>
> +#include <init.h>
> +#include <clock.h>
> +#include <linux/mii.h>
> +
> +#include <asm/io.h>
> +#include <asm/dma-mapping.h>
> +
> +#include "altera_tse.h"
> +
> +/* This is a generic routine that the SGDMA mode-specific routines
> + * call to populate a descriptor.
> + * arg1     :pointer to first SGDMA descriptor.
> + * arg2     :pointer to next  SGDMA descriptor.
> + * arg3     :Address to where data to be written.
> + * arg4     :Address from where data to be read.
> + * arg5     :no of byte to transaction.
> + * arg6     :variable indicating to generate start of packet or not
> + * arg7     :read fixed
> + * arg8     :write fixed
> + * arg9     :read burst
> + * arg10    :write burst
> + * arg11    :atlantic_channel number
> + */
> +static void alt_sgdma_construct_descriptor_burst(
> +       struct alt_sgdma_descriptor *desc,
> +       struct alt_sgdma_descriptor *next,
> +       uint32_t *read_addr,
> +       uint32_t *write_addr,
> +       uint16_t length_or_eop,
> +       uint8_t generate_eop,
> +       uint8_t read_fixed,
> +       uint8_t write_fixed_or_sop,
> +       uint8_t read_burst,
> +       uint8_t write_burst,
> +       uint8_t atlantic_channel)
> +{
> +       uint32_t temp;
> +
> +       /*
> +        * Mark the "next" descriptor as "not" owned by hardware. This
> prevents
> +        * The SGDMA controller from continuing to process the chain. This
> is
> +        * done as a single IO write to bypass cache, without flushing
> +        * the entire descriptor, since only the 8-bit descriptor status
> must
> +        * be flushed.
> +        */
> +       if (!next)
> +               printf("Next descriptor not defined!!\n");
> +
> +       temp = readb(&next->descriptor_control);
> +       writeb(temp & ~ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK,
> +               &next->descriptor_control);
> +
> +       writel((uint32_t)read_addr, &desc->source);
> +       writel((uint32_t)write_addr, &desc->destination);
> +       writel((uint32_t)next, &desc->next);
> +
> +       writel(0, &desc->source_pad);
> +       writel(0, &desc->destination_pad);
> +       writel(0, &desc->next_pad);
> +       writew(length_or_eop, &desc->bytes_to_transfer);
> +       writew(0, &desc->actual_bytes_transferred);
> +       writeb(0, &desc->descriptor_status);
> +
> +       /* SGDMA burst not currently supported */
> +       writeb(0, &desc->read_burst);
> +       writeb(0, &desc->write_burst);
> +
> +       /*
> +        * Set the descriptor control block as follows:
> +        * - Set "owned by hardware" bit
> +        * - Optionally set "generate EOP" bit
> +        * - Optionally set the "read from fixed address" bit
> +        * - Optionally set the "write to fixed address bit (which serves
> +        *   serves as a "generate SOP" control bit in memory-to-stream
> mode).
> +        * - Set the 4-bit atlantic channel, if specified
> +        *
> +        * Note this step is performed after all other descriptor
> information
> +        * has been filled out so that, if the controller already happens
> to be
> +        * pointing at this descriptor, it will not run (via the "owned by
> +        * hardware" bit) until all other descriptor has been set up.
> +        */
> +
> +       writeb((ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK) |
> +               (generate_eop ?
> ALT_SGDMA_DESCRIPTOR_CONTROL_GENERATE_EOP_MSK : 0) |
> +               (read_fixed ?
> ALT_SGDMA_DESCRIPTOR_CONTROL_READ_FIXED_ADDRESS_MSK : 0) |
> +               (write_fixed_or_sop ?
> ALT_SGDMA_DESCRIPTOR_CONTROL_WRITE_FIXED_ADDRESS_MSK : 0) |
> +               (atlantic_channel ? ((atlantic_channel & 0x0F) << 3) : 0),
> +               &desc->descriptor_control);
> +}
> +
> +static int alt_sgdma_do_sync_transfer(struct alt_sgdma_registers *dev,
> +                                       struct alt_sgdma_descriptor *desc)
> +{
> +       uint32_t temp;
> +       uint64_t start;
> +       uint64_t tout;
> +
> +       /* Wait for any pending transfers to complete */
> +       tout = ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;
> +
> +       start = get_time_ns();
> +
> +       while (readl(&dev->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
> +               if (is_timeout(start, tout)) {
> +                       debug("Timeout waiting sgdma in do sync!\n");
> +                       break;
> +               }
> +       }
> +
> +       /*
> +        * Clear any (previous) status register information
> +        * that might occlude our error checking later.
> +        */
> +       writel(0xFF, &dev->status);
> +
> +       /* Point the controller at the descriptor */
> +       writel((uint32_t)desc, &dev->next_descriptor_pointer);
> +       debug("next desc in sgdma 0x%x\n",
> (uint32_t)dev->next_descriptor_pointer);
> +
> +       /*
> +        * Set up SGDMA controller to:
> +        * - Disable interrupt generation
> +        * - Run once a valid descriptor is written to controller
> +        * - Stop on an error with any particular descriptor
> +        */
> +       writel(ALT_SGDMA_CONTROL_RUN_MSK |
> ALT_SGDMA_CONTROL_STOP_DMA_ER_MSK,
> +               &dev->control);
> +
> +       /* Wait for the descriptor (chain) to complete */
> +       debug("wait for sgdma....");
> +       start = get_time_ns();
> +
> +       while (readl(&dev->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
> +               if (is_timeout(start, tout)) {
> +                       debug("Timeout waiting sgdma in do sync!\n");
> +                       break;
> +               }
> +       }
> +
> +       debug("done\n");
> +
> +       /* Clear Run */
> +       temp = readl(&dev->control);
> +       writel(temp & ~ALT_SGDMA_CONTROL_RUN_MSK, &dev->control);
> +
> +       /* Get & clear status register contents */
> +       debug("tx sgdma status = 0x%x", readl(&dev->status));
> +       writel(0xFF, &dev->status);
> +
> +       return 0;
> +}
> +
> +static int alt_sgdma_do_async_transfer(struct alt_sgdma_registers *dev,
> +                                       struct alt_sgdma_descriptor *desc)
> +{
> +       uint64_t start;
> +       uint64_t tout;
> +
> +       /* Wait for any pending transfers to complete */
> +       tout = ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;
> +
> +       start = get_time_ns();
> +
> +       while (readl(&dev->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
> +               if (is_timeout(start, tout)) {
> +                       debug("Timeout waiting sgdma in do async!\n");
> +                       break;
> +               }
> +       }
> +
> +       /*
> +        * Clear any (previous) status register information
> +        * that might occlude our error checking later.
> +        */
> +       writel(0xFF, &dev->status);
> +
> +       /* Point the controller at the descriptor */
> +       writel((uint32_t)desc, &dev->next_descriptor_pointer);
> +
> +       /*
> +        * Set up SGDMA controller to:
> +        * - Disable interrupt generation
> +        * - Run once a valid descriptor is written to controller
> +        * - Stop on an error with any particular descriptor
> +        */
> +       writel(ALT_SGDMA_CONTROL_RUN_MSK |
> ALT_SGDMA_CONTROL_STOP_DMA_ER_MSK,
> +               &dev->control);
> +
> +       return 0;
> +}
> +
> +static int tse_get_ethaddr(struct eth_device *edev, unsigned char *m)
> +{
> +       struct altera_tse_priv *priv = edev->priv;
> +       struct alt_tse_mac *mac_dev = priv->mac_dev;
> +
> +       m[5] = (readl(&mac_dev->mac_addr_1) >> 8)  && 0xFF;
> +       m[4] = (readl(&mac_dev->mac_addr_1))       && 0xFF;
> +       m[3] = (readl(&mac_dev->mac_addr_0) >> 24) && 0xFF;
> +       m[2] = (readl(&mac_dev->mac_addr_0) >> 16) && 0xFF;
> +       m[1] = (readl(&mac_dev->mac_addr_0) >>  8) && 0xFF;
> +       m[0] = (readl(&mac_dev->mac_addr_0))       && 0xFF;
> +
> +       return 0;
> +}
> +
> +static int tse_set_ethaddr(struct eth_device *edev, unsigned char *m)
> +{
> +       struct altera_tse_priv *priv = edev->priv;
> +       struct alt_tse_mac *mac_dev = priv->mac_dev;
> +
> +       debug("Setting MAC address to %02x:%02x:%02x:%02x:%02x:%02x\n",
> +               m[0], m[1], m[2], m[3], m[4], m[5]);
> +
> +       writel(m[3] << 24 | m[2] << 16 | m[1] << 8 | m[0],
> &mac_dev->mac_addr_0);
> +       writel((m[5] << 8 | m[4]) & 0xFFFF, &mac_dev->mac_addr_1);
> +
> +       return 0;
> +}
> +
> +static int tse_phy_read(struct mii_device *mdev, int phy_addr, int reg)
> +{
> +       struct eth_device *edev = mdev->edev;
> +       struct alt_tse_mac *mac_dev;
> +       uint32_t *mdio_regs;
> +
> +       mac_dev = (struct alt_tse_mac *)edev->iobase;
> +       writel(phy_addr, &mac_dev->mdio_phy1_addr);
> +
> +       mdio_regs = (uint32_t *)&mac_dev->mdio_phy1;
> +
> +       return readl(&mdio_regs[reg]) & 0xFFFF;
> +}
> +
> +static int tse_phy_write(struct mii_device *mdev, int phy_addr, int reg,
> int val)
> +{
> +       struct eth_device *edev = mdev->edev;
> +       struct alt_tse_mac *mac_dev;
> +       uint32_t *mdio_regs;
> +
> +       mac_dev = (struct alt_tse_mac *)edev->iobase;
> +       writel(phy_addr, &mac_dev->mdio_phy1_addr);
> +
> +       mdio_regs = (uint32_t *)&mac_dev->mdio_phy1;
> +
> +       writel((uint32_t)val, &mdio_regs[reg]);
> +
> +       return 0;
> +}
> +
> +static void tse_reset(struct eth_device *edev)
> +{
> +       /* stop sgdmas, disable tse receive */
> +       struct altera_tse_priv *priv = edev->priv;
> +       struct alt_tse_mac *mac_dev = priv->mac_dev;
> +       struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
> +       struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
> +       struct alt_sgdma_descriptor *rx_desc = (struct alt_sgdma_descriptor
> *)&priv->rx_desc[0];
> +       struct alt_sgdma_descriptor *tx_desc = (struct alt_sgdma_descriptor
> *)&priv->tx_desc[0];
> +       uint64_t start;
> +       uint64_t tout;
> +
> +       tout = ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;
> +
> +       /* clear rx desc & wait for sgdma to complete */
> +       writeb(0, &rx_desc->descriptor_control);
> +       writel(0, &rx_sgdma->control);
> +
> +       writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &rx_sgdma->control);
> +       writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &rx_sgdma->control);
> +       mdelay(100);
> +
> +       start = get_time_ns();
> +
> +       while (readl(&rx_sgdma->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
> +               if (is_timeout(start, tout)) {
> +                       printf("Timeout waiting for rx sgdma!\n");
> +                       writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK,
> &rx_sgdma->control);
> +                       writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK,
> &rx_sgdma->control);
> +                       break;
> +               }
> +       }
> +
> +       /* clear tx desc & wait for sgdma to complete */
> +       writeb(0, &tx_desc->descriptor_control);
> +       writel(0, &tx_sgdma->control);
> +
> +       writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &tx_sgdma->control);
> +       writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &tx_sgdma->control);
> +       mdelay(100);
> +
> +       start = get_time_ns();
> +
> +       while (readl(&tx_sgdma->status) & ALT_SGDMA_STATUS_BUSY_MSK) {
> +               if (is_timeout(start, tout)) {
> +                       printf("Timeout waiting for tx sgdma!\n");
> +                       writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK,
> &tx_sgdma->control);
> +                       writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK,
> &tx_sgdma->control);
> +                       break;
> +               }
> +       }
> +
> +       /* reset the mac */
> +       writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK |
> +               ALTERA_TSE_CMD_SW_RESET_MSK, &mac_dev->command_config);
> +
> +       start = get_time_ns();
> +       tout = ALT_TSE_SW_RESET_WATCHDOG_TOUT * MSECOND;
> +
> +       while (readl(&mac_dev->command_config) &
> ALTERA_TSE_CMD_SW_RESET_MSK) {
> +               if (is_timeout(start, tout)) {
> +                       printf("TSEMAC SW reset bit never cleared!\n");
> +                       break;
> +               }
> +       }
> +}
> +
> +static int tse_eth_open(struct eth_device *edev)
> +{
> +       struct altera_tse_priv *priv = edev->priv;
> +
> +       miidev_wait_aneg(priv->miidev);
> +       miidev_print_status(priv->miidev);
> +
> +       return 0;
> +}
> +
> +static int tse_eth_send(struct eth_device *edev, void *packet, int length)
> +{
> +
> +       struct altera_tse_priv *priv = edev->priv;
> +       struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
> +       struct alt_sgdma_descriptor *tx_desc = (struct alt_sgdma_descriptor
> *)priv->tx_desc;
> +
> +       struct alt_sgdma_descriptor *tx_desc_cur = (struct
> alt_sgdma_descriptor *)&tx_desc[0];
> +
> +       flush_dcache_range((uint32_t)packet, (uint32_t)packet + length);
> +       alt_sgdma_construct_descriptor_burst(
> +               (struct alt_sgdma_descriptor *)&tx_desc[0],
> +               (struct alt_sgdma_descriptor *)&tx_desc[1],
> +               (uint32_t *)packet,     /* read addr */
> +               (uint32_t *)0,          /*           */
> +               length,                 /* length or EOP ,will change for
> each tx */
> +               0x1,                    /* gen eop */
> +               0x0,                    /* read fixed */
> +               0x1,                    /* write fixed or sop */
> +               0x0,                    /* read burst */
> +               0x0,                    /* write burst */
> +               0x0                     /* channel */
> +               );
> +
> +       alt_sgdma_do_sync_transfer(tx_sgdma, tx_desc_cur);
> +
> +       return 0;;
> +}
> +
> +static void tse_eth_halt(struct eth_device *edev)
> +{
> +       struct altera_tse_priv *priv = edev->priv;
> +       struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
> +       struct alt_sgdma_registers *tx_sgdma = priv->sgdma_tx;
> +
> +       writel(0, &rx_sgdma->control); /* Stop the controller and reset
> settings */
> +       writel(0, &tx_sgdma->control); /* Stop the controller and reset
> settings */
> +}
> +
> +static int tse_eth_rx(struct eth_device *edev)
> +{
> +       uint16_t packet_length = 0;
> +
> +       struct altera_tse_priv *priv = edev->priv;
> +       struct alt_sgdma_descriptor *rx_desc = (struct alt_sgdma_descriptor
> *)priv->rx_desc;
> +       struct alt_sgdma_descriptor *rx_desc_cur = &rx_desc[0];
> +       struct alt_sgdma_registers *rx_sgdma = priv->sgdma_rx;
> +
> +       if (rx_desc_cur->descriptor_status &
> +               ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK) {
> +
> +               packet_length = rx_desc->actual_bytes_transferred;
> +               net_receive(NetRxPackets[0], packet_length);
> +
> +               /* Clear Run */
> +               rx_sgdma->control = (rx_sgdma->control &
> (~ALT_SGDMA_CONTROL_RUN_MSK));
> +
> +               /* start descriptor again */
> +               flush_dcache_range((uint32_t)(NetRxPackets[0]),
> (uint32_t)(NetRxPackets[0]) + PKTSIZE);
> +               alt_sgdma_construct_descriptor_burst(
> +                       (struct alt_sgdma_descriptor *)&rx_desc[0],
> +                       (struct alt_sgdma_descriptor *)&rx_desc[1],
> +                       (uint32_t)0x0,                  /* read addr */
> +                       (uint32_t *)NetRxPackets[0],    /*           */
> +                       0x0,                            /* length or EOP */
> +                       0x0,                            /* gen eop */
> +                       0x0,                            /* read fixed */
> +                       0x0,                            /* write fixed or
> sop */
> +                       0x0,                            /* read burst */
> +                       0x0,                            /* write burst */
> +                       0x0                             /* channel */
> +               );
> +
> +               /* setup the sgdma */
> +               alt_sgdma_do_async_transfer(priv->sgdma_rx, &rx_desc[0]);
> +       }
> +
> +       return 0;
> +}
> +
> +static int tse_init_dev(struct eth_device *edev)
> +{
> +       struct altera_tse_priv *priv = edev->priv;
> +       struct alt_tse_mac *mac_dev = priv->mac_dev;
> +       struct alt_sgdma_descriptor *tx_desc = priv->tx_desc;
> +       struct alt_sgdma_descriptor *rx_desc = priv->rx_desc;
> +       struct alt_sgdma_descriptor *rx_desc_cur;
> +
> +       rx_desc_cur = (struct alt_sgdma_descriptor *)&rx_desc[0];
> +
> +       tse_reset(edev);
> +
> +       /* need to create sgdma */
> +       alt_sgdma_construct_descriptor_burst(
> +               (struct alt_sgdma_descriptor *)&tx_desc[0],
> +               (struct alt_sgdma_descriptor *)&tx_desc[1],
> +               (uint32_t *)NULL,       /* read addr */
> +               (uint32_t *)0,          /*           */
> +               0,                      /* length or EOP ,will change for
> each tx */
> +               0x1,                    /* gen eop */
> +               0x0,                    /* read fixed */
> +               0x1,                    /* write fixed or sop */
> +               0x0,                    /* read burst */
> +               0x0,                    /* write burst */
> +               0x0                     /* channel */
> +               );
> +
> +       flush_dcache_range((uint32_t)(NetRxPackets[0]),
> (uint32_t)(NetRxPackets[0]) + PKTSIZE);
> +       alt_sgdma_construct_descriptor_burst(
> +               (struct alt_sgdma_descriptor *)&rx_desc[0],
> +               (struct alt_sgdma_descriptor *)&rx_desc[1],
> +               (uint32_t)0x0,                  /* read addr */
> +               (uint32_t *)NetRxPackets[0],    /*           */
> +               0x0,                            /* length or EOP */
> +               0x0,                            /* gen eop */
> +               0x0,                            /* read fixed */
> +               0x0,                            /* write fixed or sop */
> +               0x0,                            /* read burst */
> +               0x0,                            /* write burst */
> +               0x0                             /* channel */
> +               );
> +
> +       /* start rx async transfer */
> +       alt_sgdma_do_async_transfer(priv->sgdma_rx, rx_desc_cur);
> +
> +       /* Initialize MAC registers */
> +       writel(PKTSIZE, &mac_dev->max_frame_length);
> +
> +       /* NO Shift */
> +       writel(0, &mac_dev->rx_cmd_stat);
> +       writel(0, &mac_dev->tx_cmd_stat);
> +
> +       /* enable MAC */
> +       writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK,
> &mac_dev->command_config);
> +
> +       miidev_restart_aneg(priv->miidev);
> +
> +       return 0;
> +}
> +
> +static int tse_probe(struct device_d *dev)
> +{
> +       struct altera_tse_priv *priv;
> +       struct mii_device *miidev;
> +       struct eth_device *edev;
> +       struct alt_sgdma_descriptor *rx_desc;
> +       struct alt_sgdma_descriptor *tx_desc;
> +#ifndef CONFIG_TSE_USE_DEDICATED_DESC_MEM
> +       uint32_t dma_handle;
> +#endif
> +       edev = xzalloc(sizeof(struct eth_device) + sizeof(struct
> altera_tse_priv));
> +       miidev = xzalloc(sizeof(struct mii_device));
> +
> +       dev->type_data = edev;
> +       edev->priv = (struct altera_tse_priv *)(edev + 1);
> +
> +       edev->iobase = dev->map_base;
> +
> +       priv = edev->priv;
> +
> +       edev->init = tse_init_dev;
> +       edev->open = tse_eth_open;
> +       edev->send = tse_eth_send;
> +       edev->recv = tse_eth_rx;
> +       edev->halt = tse_eth_halt;
> +       edev->get_ethaddr = tse_get_ethaddr;
> +       edev->set_ethaddr = tse_set_ethaddr;
> +
> +#ifdef CONFIG_TSE_USE_DEDICATED_DESC_MEM
> +       tx_desc = (struct alt_sgdma_descriptor
> *)NIOS_SOPC_TSE_DESC_MEM_BASE;
> +       rx_desc = tx_desc + 2;
> +#else
> +       tx_desc = dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUFSRX),
> &dma_handle);
> +       rx_desc = tx_desc + 2;
> +
> +       if (!tx_desc) {
> +               free(edev);
> +               free(miidev);
> +               return 0;
> +       }
> +#endif
> +
> +       memset(rx_desc, 0, (sizeof *rx_desc) * (PKTBUFSRX + 1));
> +       memset(tx_desc, 0, (sizeof *tx_desc) * 2);
> +
> +       priv->mac_dev = (struct alt_tse_mac *)dev->map_base;
> +       priv->sgdma_rx = (struct alt_sgdma_registers
> *)NIOS_SOPC_SGDMA_RX_BASE;
> +       priv->sgdma_tx = (struct alt_sgdma_registers
> *)NIOS_SOPC_SGDMA_TX_BASE;
> +       priv->rx_desc = rx_desc;
> +       priv->tx_desc = tx_desc;
> +
> +       priv->miidev = miidev;
> +
> +       miidev->read = tse_phy_read;
> +       miidev->write = tse_phy_write;
> +       miidev->flags = 0;
> +       miidev->edev = edev;
> +
> +       if (dev->platform_data != NULL)
> +               miidev->address = *((int8_t *)(dev->platform_data));
> +       else {
> +               printf("No PHY address specified.\n");
> +               return -ENODEV;
> +       }
> +
> +       mii_register(miidev);
> +
> +       return eth_register(edev);
> +}
> +
> +static struct driver_d altera_tse_driver = {
> +       .name = "altera_tse",
> +       .probe = tse_probe,
> +};
> +
> +static int tse_init(void)
> +{
> +       register_driver(&altera_tse_driver);
> +       return 0;
> +}
> +
> +device_initcall(tse_init);
> +
> diff --git a/drivers/net/altera_tse.h b/drivers/net/altera_tse.h
> new file mode 100644
> index 0000000..c907c74
> --- /dev/null
> +++ b/drivers/net/altera_tse.h
> @@ -0,0 +1,303 @@
> +/*
> + * Altera 10/100/1000 triple speed ethernet mac
> + *
> + * Copyright (C) 2008 Altera Corporation.
> + * Copyright (C) 2010 Thomas Chou <thomas@wytron.com.tw>
> + * Copyright (C) 2011 Franck JULLIEN <elec4fun@gmail.com>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2 as
> + * published by the Free Software Foundation.
> + */
> +#ifndef _ALTERA_TSE_H_
> +#define _ALTERA_TSE_H_
> +
> +/* SGDMA Stuff */
> +#define ALT_SGDMA_STATUS_ERROR_MSK                     (0x00000001)
> +#define ALT_SGDMA_STATUS_EOP_ENCOUNTERED_MSK           (0x00000002)
> +#define ALT_SGDMA_STATUS_DESC_COMPLETED_MSK            (0x00000004)
> +#define ALT_SGDMA_STATUS_CHAIN_COMPLETED_MSK           (0x00000008)
> +#define ALT_SGDMA_STATUS_BUSY_MSK                      (0x00000010)
> +
> +#define ALT_SGDMA_CONTROL_IE_ERROR_MSK                 (0x00000001)
> +#define ALT_SGDMA_CONTROL_IE_EOP_ENCOUNTERED_MSK       (0x00000002)
> +#define ALT_SGDMA_CONTROL_IE_DESC_COMPLETED_MSK
>  (0x00000004)
> +#define ALT_SGDMA_CONTROL_IE_CHAIN_COMPLETED_MSK       (0x00000008)
> +#define ALT_SGDMA_CONTROL_IE_GLOBAL_MSK
>  (0x00000010)
> +#define ALT_SGDMA_CONTROL_RUN_MSK                      (0x00000020)
> +#define ALT_SGDMA_CONTROL_STOP_DMA_ER_MSK              (0x00000040)
> +#define ALT_SGDMA_CONTROL_IE_MAX_DESC_PROCESSED_MSK    (0x00000080)
> +#define ALT_SGDMA_CONTROL_MAX_DESC_PROCESSED_MSK       (0x0000FF00)
> +#define ALT_SGDMA_CONTROL_SOFTWARERESET_MSK            (0x00010000)
> +#define ALT_SGDMA_CONTROL_PARK_MSK                     (0x00020000)
> +#define ALT_SGDMA_CONTROL_CLEAR_INTERRUPT_MSK          (0x80000000)
> +
> +#define ALTERA_TSE_SGDMA_INTR_MASK
>  (ALT_SGDMA_CONTROL_IE_CHAIN_COMPLETED_MSK \
> +                       | ALT_SGDMA_STATUS_DESC_COMPLETED_MSK \
> +                       | ALT_SGDMA_CONTROL_IE_GLOBAL_MSK)
> +
> +/*
> + * Descriptor control bit masks & offsets
> + *
> + * Note: The control byte physically occupies bits [31:24] in memory.
> + *      The following bit-offsets are expressed relative to the LSB of
> + *      the control register bitfield.
> + */
> +#define ALT_SGDMA_DESCRIPTOR_CONTROL_GENERATE_EOP_MSK
>  (0x00000001)
> +#define ALT_SGDMA_DESCRIPTOR_CONTROL_READ_FIXED_ADDRESS_MSK
>  (0x00000002)
> +#define ALT_SGDMA_DESCRIPTOR_CONTROL_WRITE_FIXED_ADDRESS_MSK
> (0x00000004)
> +#define ALT_SGDMA_DESCRIPTOR_CONTROL_ATLANTIC_CHANNEL_MSK
>  (0x00000008)
> +#define ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK
> (0x00000080)
> +
> +/*
> + * Descriptor status bit masks & offsets
> + *
> + * Note: The status byte physically occupies bits [23:16] in memory.
> + *      The following bit-offsets are expressed relative to the LSB of
> + *      the status register bitfield.
> + */
> +#define ALT_SGDMA_DESCRIPTOR_STATUS_E_CRC_MSK
>  (0x00000001)
> +#define ALT_SGDMA_DESCRIPTOR_STATUS_E_PARITY_MSK
> (0x00000002)
> +#define ALT_SGDMA_DESCRIPTOR_STATUS_E_OVERFLOW_MSK
> (0x00000004)
> +#define ALT_SGDMA_DESCRIPTOR_STATUS_E_SYNC_MSK
> (0x00000008)
> +#define ALT_SGDMA_DESCRIPTOR_STATUS_E_UEOP_MSK
> (0x00000010)
> +#define ALT_SGDMA_DESCRIPTOR_STATUS_E_MEOP_MSK
> (0x00000020)
> +#define ALT_SGDMA_DESCRIPTOR_STATUS_E_MSOP_MSK
> (0x00000040)
> +#define ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK
>  (0x00000080)
> +#define ALT_SGDMA_DESCRIPTOR_STATUS_ERROR_MSK
>  (0x0000007F)
> +
> +/*
> + * The SGDMA controller buffer descriptor allocates
> + * 64 bits for each address. To support ANSI C, the
> + * struct implementing a descriptor places 32-bits
> + * of padding directly above each address; each pad must
> + * be cleared when initializing a descriptor.
> + */
> +
> +/*
> + * Buffer Descriptor data structure
> + *
> + */
> +struct alt_sgdma_descriptor {
> +       unsigned int *source;           /* the address of data to be read.
> */
> +       unsigned int source_pad;
> +
> +       unsigned int *destination;     /* the address to write data */
> +       unsigned int destination_pad;
> +
> +       unsigned int *next;            /* the next descriptor in the list.
> */
> +       unsigned int next_pad;
> +
> +       unsigned short bytes_to_transfer; /* the number of bytes to
> transfer */
> +       unsigned char read_burst;
> +       unsigned char write_burst;
> +
> +       unsigned short actual_bytes_transferred;/* bytes transferred by DMA
> */
> +       unsigned char descriptor_status;
> +       unsigned char descriptor_control;
> +
> +} __attribute__ ((packed, aligned(1)));
> +
> +/* SG-DMA Control/Status Slave registers map */
> +
> +struct alt_sgdma_registers {
> +       unsigned int status;
> +       unsigned int status_pad[3];
> +       unsigned int control;
> +       unsigned int control_pad[3];
> +       unsigned int next_descriptor_pointer;
> +       unsigned int descriptor_pad[3];
> +};
> +
> +/* TSE Stuff */
> +#define ALTERA_TSE_CMD_TX_ENA_MSK              (0x00000001)
> +#define ALTERA_TSE_CMD_RX_ENA_MSK              (0x00000002)
> +#define ALTERA_TSE_CMD_XON_GEN_MSK             (0x00000004)
> +#define ALTERA_TSE_CMD_ETH_SPEED_MSK           (0x00000008)
> +#define ALTERA_TSE_CMD_PROMIS_EN_MSK           (0x00000010)
> +#define ALTERA_TSE_CMD_PAD_EN_MSK              (0x00000020)
> +#define ALTERA_TSE_CMD_CRC_FWD_MSK             (0x00000040)
> +#define ALTERA_TSE_CMD_PAUSE_FWD_MSK           (0x00000080)
> +#define ALTERA_TSE_CMD_PAUSE_IGNORE_MSK                (0x00000100)
> +#define ALTERA_TSE_CMD_TX_ADDR_INS_MSK         (0x00000200)
> +#define ALTERA_TSE_CMD_HD_ENA_MSK              (0x00000400)
> +#define ALTERA_TSE_CMD_EXCESS_COL_MSK          (0x00000800)
> +#define ALTERA_TSE_CMD_LATE_COL_MSK            (0x00001000)
> +#define ALTERA_TSE_CMD_SW_RESET_MSK            (0x00002000)
> +#define ALTERA_TSE_CMD_MHASH_SEL_MSK           (0x00004000)
> +#define ALTERA_TSE_CMD_LOOPBACK_MSK            (0x00008000)
> +/* Bits (18:16) = address select */
> +#define ALTERA_TSE_CMD_TX_ADDR_SEL_MSK         (0x00070000)
> +#define ALTERA_TSE_CMD_MAGIC_ENA_MSK           (0x00080000)
> +#define ALTERA_TSE_CMD_SLEEP_MSK               (0x00100000)
> +#define ALTERA_TSE_CMD_WAKEUP_MSK              (0x00200000)
> +#define ALTERA_TSE_CMD_XOFF_GEN_MSK            (0x00400000)
> +#define ALTERA_TSE_CMD_CNTL_FRM_ENA_MSK                (0x00800000)
> +#define ALTERA_TSE_CMD_NO_LENGTH_CHECK_MSK     (0x01000000)
> +#define ALTERA_TSE_CMD_ENA_10_MSK              (0x02000000)
> +#define ALTERA_TSE_CMD_RX_ERR_DISC_MSK         (0x04000000)
> +/* Bits (30..27) reserved */
> +#define ALTERA_TSE_CMD_CNT_RESET_MSK           (0x80000000)
> +
> +#define ALTERA_TSE_TX_CMD_STAT_TX_SHIFT16      (0x00040000)
> +#define ALTERA_TSE_TX_CMD_STAT_OMIT_CRC                (0x00020000)
> +
> +#define ALTERA_TSE_RX_CMD_STAT_RX_SHIFT16      (0x02000000)
> +
> +#define ALT_TSE_SW_RESET_WATCHDOG_CNTR         10000
> +#define ALT_TSE_SGDMA_BUSY_WATCHDOG_CNTR       90000000
> +
> +#define ALT_TSE_SW_RESET_WATCHDOG_TOUT         1    /* ms */
> +#define ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT       5    /* ms */
> +
> +struct alt_tse_mdio {
> +       unsigned int control; /*PHY device operation control register */
> +       unsigned int status;  /*PHY device operation status register */
> +       unsigned int phy_id1; /*Bits 31:16 of PHY identifier. */
> +       unsigned int phy_id2; /*Bits 15:0 of PHY identifier. */
> +       unsigned int auto_negotiation_advertisement;
> +       unsigned int remote_partner_base_page_ability;
> +
> +       unsigned int reg6;
> +       unsigned int reg7;
> +       unsigned int reg8;
> +       unsigned int reg9;
> +       unsigned int rega;
> +       unsigned int regb;
> +       unsigned int regc;
> +       unsigned int regd;
> +       unsigned int rege;
> +       unsigned int regf;
> +       unsigned int reg10;
> +       unsigned int reg11;
> +       unsigned int reg12;
> +       unsigned int reg13;
> +       unsigned int reg14;
> +       unsigned int reg15;
> +       unsigned int reg16;
> +       unsigned int reg17;
> +       unsigned int reg18;
> +       unsigned int reg19;
> +       unsigned int reg1a;
> +       unsigned int reg1b;
> +       unsigned int reg1c;
> +       unsigned int reg1d;
> +       unsigned int reg1e;
> +       unsigned int reg1f;
> +};
> +
> +/* MAC register Space */
> +
> +struct alt_tse_mac {
> +       unsigned int megacore_revision;
> +       unsigned int scratch_pad;
> +       unsigned int command_config;
> +       unsigned int mac_addr_0;
> +       unsigned int mac_addr_1;
> +       unsigned int max_frame_length;
> +       unsigned int pause_quanta;
> +       unsigned int rx_sel_empty_threshold;
> +       unsigned int rx_sel_full_threshold;
> +       unsigned int tx_sel_empty_threshold;
> +       unsigned int tx_sel_full_threshold;
> +       unsigned int rx_almost_empty_threshold;
> +       unsigned int rx_almost_full_threshold;
> +       unsigned int tx_almost_empty_threshold;
> +       unsigned int tx_almost_full_threshold;
> +       unsigned int mdio_phy0_addr;
> +       unsigned int mdio_phy1_addr;
> +
> +       /* only if 100/1000 BaseX PCS, reserved otherwise */
> +       unsigned int reservedx44[5];
> +
> +       unsigned int reg_read_access_status;
> +       unsigned int min_tx_ipg_length;
> +
> +       /* IEEE 802.3 oEntity Managed Object Support */
> +       unsigned int aMACID_1;  /*The MAC addresses */
> +       unsigned int aMACID_2;
> +       unsigned int aFramesTransmittedOK;
> +       unsigned int aFramesReceivedOK;
> +       unsigned int aFramesCheckSequenceErrors;
> +       unsigned int aAlignmentErrors;
> +       unsigned int aOctetsTransmittedOK;
> +       unsigned int aOctetsReceivedOK;
> +
> +       /* IEEE 802.3 oPausedEntity Managed Object Support */
> +       unsigned int aTxPAUSEMACCtrlFrames;
> +       unsigned int aRxPAUSEMACCtrlFrames;
> +
> +       /* IETF MIB (MIB-II) Object Support */
> +       unsigned int ifInErrors;
> +       unsigned int ifOutErrors;
> +       unsigned int ifInUcastPkts;
> +       unsigned int ifInMulticastPkts;
> +       unsigned int ifInBroadcastPkts;
> +       unsigned int ifOutDiscards;
> +       unsigned int ifOutUcastPkts;
> +       unsigned int ifOutMulticastPkts;
> +       unsigned int ifOutBroadcastPkts;
> +
> +       /* IETF RMON MIB Object Support */
> +       unsigned int etherStatsDropEvent;
> +       unsigned int etherStatsOctets;
> +       unsigned int etherStatsPkts;
> +       unsigned int etherStatsUndersizePkts;
> +       unsigned int etherStatsOversizePkts;
> +       unsigned int etherStatsPkts64Octets;
> +       unsigned int etherStatsPkts65to127Octets;
> +       unsigned int etherStatsPkts128to255Octets;
> +       unsigned int etherStatsPkts256to511Octets;
> +       unsigned int etherStatsPkts512to1023Octets;
> +       unsigned int etherStatsPkts1024to1518Octets;
> +
> +       unsigned int etherStatsPkts1519toXOctets;
> +       unsigned int etherStatsJabbers;
> +       unsigned int etherStatsFragments;
> +
> +       unsigned int reservedxE4;
> +
> +       /*FIFO control register. */
> +       unsigned int tx_cmd_stat;
> +       unsigned int rx_cmd_stat;
> +
> +       unsigned int ipaccTxConf;
> +       unsigned int ipaccRxConf;
> +       unsigned int ipaccRxStat;
> +       unsigned int ipaccRxStatSum;
> +
> +       /*Multicast address resolution table */
> +       unsigned int hash_table[64];
> +
> +       /*Registers 0 to 31 within PHY device 0/1 */
> +       struct alt_tse_mdio mdio_phy0;
> +       struct alt_tse_mdio mdio_phy1;
> +
> +       /*4 Supplemental MAC Addresses */
> +       unsigned int supp_mac_addr_0_0;
> +       unsigned int supp_mac_addr_0_1;
> +       unsigned int supp_mac_addr_1_0;
> +       unsigned int supp_mac_addr_1_1;
> +       unsigned int supp_mac_addr_2_0;
> +       unsigned int supp_mac_addr_2_1;
> +       unsigned int supp_mac_addr_3_0;
> +       unsigned int supp_mac_addr_3_1;
> +
> +       unsigned int reservedx320[56];
> +};
> +
> +struct altera_tse_priv {
> +       struct alt_tse_mac *mac_dev;
> +       struct alt_sgdma_registers *sgdma_rx;
> +       struct alt_sgdma_registers *sgdma_tx;
> +       unsigned int rx_sgdma_irq;
> +       unsigned int tx_sgdma_irq;
> +       unsigned int has_descriptor_mem;
> +       unsigned int descriptor_mem_base;
> +       unsigned int descriptor_mem_size;
> +       struct alt_sgdma_descriptor *rx_desc;
> +       struct alt_sgdma_descriptor *tx_desc;
> +       struct mii_device *miidev;
> +};
> +
> +#endif /* _ALTERA_TSE_H_ */
> --
> 1.7.0.4
>
>
Hello,

Did you have time to check this one ? Should I review it ?

Thanks,
Franck.

--0015174c1c1206566a04a1eb3f00
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2011/4/11  <span dir=3D"ltr">&lt;<a href=
=3D"mailto:franck.jullien@gmail.com">franck.jullien@gmail.com</a>&gt;</span=
><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex;">
From: Franck JULLIEN &lt;<a href=3D"mailto:franck.jullien@gmail.com">franck=
.jullien@gmail.com</a>&gt;<br>
<br>
Add Altera Triple Speed Ethernet driver<br>
<br>
Signed-off-by: Franck JULLIEN &lt;<a href=3D"mailto:franck.jullien@gmail.co=
m">franck.jullien@gmail.com</a>&gt;<br>
---<br>
=A0drivers/net/Kconfig =A0 =A0 =A0| =A0 16 ++<br>
=A0drivers/net/Makefile =A0 =A0 | =A0 =A01 +<br>
=A0drivers/net/altera_tse.c | =A0579 ++++++++++++++++++++++++++++++++++++++=
++++++++<br>
=A0drivers/net/altera_tse.h | =A0303 ++++++++++++++++++++++++<br>
=A04 files changed, 899 insertions(+), 0 deletions(-)<br>
=A0create mode 100644 drivers/net/altera_tse.c<br>
=A0create mode 100644 drivers/net/altera_tse.h<br>
<br>
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig<br>
index 6479417..19e35db 100644<br>
--- a/drivers/net/Kconfig<br>
+++ b/drivers/net/Kconfig<br>
@@ -84,6 +84,22 @@ config DRIVER_NET_TAP<br>
 =A0 =A0 =A0 =A0bool &quot;tap Ethernet driver&quot;<br>
 =A0 =A0 =A0 =A0depends on LINUX<br>
<br>
+config DRIVER_NET_TSE<br>
+ =A0 =A0 =A0 depends on NIOS2<br>
+ =A0 =A0 =A0 bool &quot;Altera TSE ethernet driver&quot;<br>
+ =A0 =A0 =A0 select MIIDEV<br>
+ =A0 =A0 =A0 help<br>
+ =A0 =A0 =A0 =A0 This option enables support for the Altera TSE MAC.<br>
+<br>
+config TSE_USE_DEDICATED_DESC_MEM<br>
+ =A0 =A0 =A0 depends on DRIVER_NET_TSE<br>
+ =A0 =A0 =A0 bool &quot;Altera TSE uses dedicated descriptor memory&quot;<=
br>
+ =A0 =A0 =A0 help<br>
+ =A0 =A0 =A0 =A0 This option tells the TSE driver to use an onchip memory<=
br>
+ =A0 =A0 =A0 =A0 to store SGDMA descriptors. Descriptor memory is not<br>
+ =A0 =A0 =A0 =A0 reserved with a malloc but directly mapped to the memory<=
br>
+ =A0 =A0 =A0 =A0 address (defined in config.h)<br>
+<br>
=A0source &quot;drivers/net/usb/Kconfig&quot;<br>
<br>
=A0endmenu<br>
diff --git a/drivers/net/Makefile b/drivers/net/Makefile<br>
index ab23d22..f02618b 100644<br>
--- a/drivers/net/Makefile<br>
+++ b/drivers/net/Makefile<br>
@@ -11,3 +11,4 @@ obj-$(CONFIG_DRIVER_NET_MACB) =A0 =A0 =A0 =A0 +=3D macb.o=
<br>
=A0obj-$(CONFIG_DRIVER_NET_TAP) =A0 =A0 =A0 =A0 =A0 +=3D tap.o<br>
=A0obj-$(CONFIG_MIIDEV) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 +=3D miidev.o<b=
r>
=A0obj-$(CONFIG_NET_USB) =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0+=3D usb/<br>
+obj-$(CONFIG_DRIVER_NET_TSE) =A0 =A0 =A0 =A0 =A0 +=3D altera_tse.o<br>
diff --git a/drivers/net/altera_tse.c b/drivers/net/altera_tse.c<br>
new file mode 100644<br>
index 0000000..d922a9a<br>
--- /dev/null<br>
+++ b/drivers/net/altera_tse.c<br>
@@ -0,0 +1,579 @@<br>
+/*<br>
+ * Altera TSE Network driver<br>
+ *<br>
+ * Copyright (C) 2008 Altera Corporation.<br>
+ * Copyright (C) 2010 Thomas Chou &lt;<a href=3D"mailto:thomas@wytron.com.=
tw">thomas@wytron.com.tw</a>&gt;<br>
+ * Copyright (C) 2011 Franck JULLIEN, &lt;<a href=3D"mailto:elec4fun@gmail=
.com">elec4fun@gmail.com</a>&gt;<br>
+ *<br>
+ * See file CREDITS for list of people who contributed to this<br>
+ * project.<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or<br>
+ * modify it under the terms of the GNU General Public License as<br>
+ * published by the Free Software Foundation; either version 2 of<br>
+ * the License, or (at your option) any later version.<br>
+ *<br>
+ * This program is distributed in the hope that it will be useful,<br>
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. =A0See the<br>
+ * GNU General Public License for more details.<br>
+ *<br>
+ * You should have received a copy of the GNU General Public License<br>
+ * along with this program; if not, write to the Free Software<br>
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,<br>
+ * MA 02111-1307 USA<br>
+ */<br>
+<br>
+#include &lt;common.h&gt;<br>
+#include &lt;net.h&gt;<br>
+#include &lt;miidev.h&gt;<br>
+#include &lt;init.h&gt;<br>
+#include &lt;clock.h&gt;<br>
+#include &lt;linux/mii.h&gt;<br>
+<br>
+#include &lt;asm/io.h&gt;<br>
+#include &lt;asm/dma-mapping.h&gt;<br>
+<br>
+#include &quot;altera_tse.h&quot;<br>
+<br>
+/* This is a generic routine that the SGDMA mode-specific routines<br>
+ * call to populate a descriptor.<br>
+ * arg1 =A0 =A0 :pointer to first SGDMA descriptor.<br>
+ * arg2 =A0 =A0 :pointer to next =A0SGDMA descriptor.<br>
+ * arg3 =A0 =A0 :Address to where data to be written.<br>
+ * arg4 =A0 =A0 :Address from where data to be read.<br>
+ * arg5 =A0 =A0 :no of byte to transaction.<br>
+ * arg6 =A0 =A0 :variable indicating to generate start of packet or not<br=
>
+ * arg7 =A0 =A0 :read fixed<br>
+ * arg8 =A0 =A0 :write fixed<br>
+ * arg9 =A0 =A0 :read burst<br>
+ * arg10 =A0 =A0:write burst<br>
+ * arg11 =A0 =A0:atlantic_channel number<br>
+ */<br>
+static void alt_sgdma_construct_descriptor_burst(<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *desc,<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *next,<br>
+ =A0 =A0 =A0 uint32_t *read_addr,<br>
+ =A0 =A0 =A0 uint32_t *write_addr,<br>
+ =A0 =A0 =A0 uint16_t length_or_eop,<br>
+ =A0 =A0 =A0 uint8_t generate_eop,<br>
+ =A0 =A0 =A0 uint8_t read_fixed,<br>
+ =A0 =A0 =A0 uint8_t write_fixed_or_sop,<br>
+ =A0 =A0 =A0 uint8_t read_burst,<br>
+ =A0 =A0 =A0 uint8_t write_burst,<br>
+ =A0 =A0 =A0 uint8_t atlantic_channel)<br>
+{<br>
+ =A0 =A0 =A0 uint32_t temp;<br>
+<br>
+ =A0 =A0 =A0 /*<br>
+ =A0 =A0 =A0 =A0* Mark the &quot;next&quot; descriptor as &quot;not&quot; =
owned by hardware. This prevents<br>
+ =A0 =A0 =A0 =A0* The SGDMA controller from continuing to process the chai=
n. This is<br>
+ =A0 =A0 =A0 =A0* done as a single IO write to bypass cache, without flush=
ing<br>
+ =A0 =A0 =A0 =A0* the entire descriptor, since only the 8-bit descriptor s=
tatus must<br>
+ =A0 =A0 =A0 =A0* be flushed.<br>
+ =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 if (!next)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot;Next descriptor not defined!!\n&=
quot;);<br>
+<br>
+ =A0 =A0 =A0 temp =3D readb(&amp;next-&gt;descriptor_control);<br>
+ =A0 =A0 =A0 writeb(temp &amp; ~ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_M=
SK,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 &amp;next-&gt;descriptor_control);<br>
+<br>
+ =A0 =A0 =A0 writel((uint32_t)read_addr, &amp;desc-&gt;source);<br>
+ =A0 =A0 =A0 writel((uint32_t)write_addr, &amp;desc-&gt;destination);<br>
+ =A0 =A0 =A0 writel((uint32_t)next, &amp;desc-&gt;next);<br>
+<br>
+ =A0 =A0 =A0 writel(0, &amp;desc-&gt;source_pad);<br>
+ =A0 =A0 =A0 writel(0, &amp;desc-&gt;destination_pad);<br>
+ =A0 =A0 =A0 writel(0, &amp;desc-&gt;next_pad);<br>
+ =A0 =A0 =A0 writew(length_or_eop, &amp;desc-&gt;bytes_to_transfer);<br>
+ =A0 =A0 =A0 writew(0, &amp;desc-&gt;actual_bytes_transferred);<br>
+ =A0 =A0 =A0 writeb(0, &amp;desc-&gt;descriptor_status);<br>
+<br>
+ =A0 =A0 =A0 /* SGDMA burst not currently supported */<br>
+ =A0 =A0 =A0 writeb(0, &amp;desc-&gt;read_burst);<br>
+ =A0 =A0 =A0 writeb(0, &amp;desc-&gt;write_burst);<br>
+<br>
+ =A0 =A0 =A0 /*<br>
+ =A0 =A0 =A0 =A0* Set the descriptor control block as follows:<br>
+ =A0 =A0 =A0 =A0* - Set &quot;owned by hardware&quot; bit<br>
+ =A0 =A0 =A0 =A0* - Optionally set &quot;generate EOP&quot; bit<br>
+ =A0 =A0 =A0 =A0* - Optionally set the &quot;read from fixed address&quot;=
 bit<br>
+ =A0 =A0 =A0 =A0* - Optionally set the &quot;write to fixed address bit (w=
hich serves<br>
+ =A0 =A0 =A0 =A0* =A0 serves as a &quot;generate SOP&quot; control bit in =
memory-to-stream mode).<br>
+ =A0 =A0 =A0 =A0* - Set the 4-bit atlantic channel, if specified<br>
+ =A0 =A0 =A0 =A0*<br>
+ =A0 =A0 =A0 =A0* Note this step is performed after all other descriptor i=
nformation<br>
+ =A0 =A0 =A0 =A0* has been filled out so that, if the controller already h=
appens to be<br>
+ =A0 =A0 =A0 =A0* pointing at this descriptor, it will not run (via the &q=
uot;owned by<br>
+ =A0 =A0 =A0 =A0* hardware&quot; bit) until all other descriptor has been =
set up.<br>
+ =A0 =A0 =A0 =A0*/<br>
+<br>
+ =A0 =A0 =A0 writeb((ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK) |<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (generate_eop ? ALT_SGDMA_DESCRIPTOR_CONTROL_=
GENERATE_EOP_MSK : 0) |<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (read_fixed ? ALT_SGDMA_DESCRIPTOR_CONTROL_RE=
AD_FIXED_ADDRESS_MSK : 0) |<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (write_fixed_or_sop ? ALT_SGDMA_DESCRIPTOR_CO=
NTROL_WRITE_FIXED_ADDRESS_MSK : 0) |<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (atlantic_channel ? ((atlantic_channel &amp; =
0x0F) &lt;&lt; 3) : 0),<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 &amp;desc-&gt;descriptor_control);<br>
+}<br>
+<br>
+static int alt_sgdma_do_sync_transfer(struct alt_sgdma_registers *dev,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 struct alt_sgdma_descriptor *desc)<br>
+{<br>
+ =A0 =A0 =A0 uint32_t temp;<br>
+ =A0 =A0 =A0 uint64_t start;<br>
+ =A0 =A0 =A0 uint64_t tout;<br>
+<br>
+ =A0 =A0 =A0 /* Wait for any pending transfers to complete */<br>
+ =A0 =A0 =A0 tout =3D ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;<br>
+<br>
+ =A0 =A0 =A0 start =3D get_time_ns();<br>
+<br>
+ =A0 =A0 =A0 while (readl(&amp;dev-&gt;status) &amp; ALT_SGDMA_STATUS_BUSY=
_MSK) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (is_timeout(start, tout)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 debug(&quot;Timeout waiting s=
gdma in do sync!\n&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 /*<br>
+ =A0 =A0 =A0 =A0* Clear any (previous) status register information<br>
+ =A0 =A0 =A0 =A0* that might occlude our error checking later.<br>
+ =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 writel(0xFF, &amp;dev-&gt;status);<br>
+<br>
+ =A0 =A0 =A0 /* Point the controller at the descriptor */<br>
+ =A0 =A0 =A0 writel((uint32_t)desc, &amp;dev-&gt;next_descriptor_pointer);=
<br>
+ =A0 =A0 =A0 debug(&quot;next desc in sgdma 0x%x\n&quot;, (uint32_t)dev-&g=
t;next_descriptor_pointer);<br>
+<br>
+ =A0 =A0 =A0 /*<br>
+ =A0 =A0 =A0 =A0* Set up SGDMA controller to:<br>
+ =A0 =A0 =A0 =A0* - Disable interrupt generation<br>
+ =A0 =A0 =A0 =A0* - Run once a valid descriptor is written to controller<b=
r>
+ =A0 =A0 =A0 =A0* - Stop on an error with any particular descriptor<br>
+ =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 writel(ALT_SGDMA_CONTROL_RUN_MSK | ALT_SGDMA_CONTROL_STOP_DMA=
_ER_MSK,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 &amp;dev-&gt;control);<br>
+<br>
+ =A0 =A0 =A0 /* Wait for the descriptor (chain) to complete */<br>
+ =A0 =A0 =A0 debug(&quot;wait for sgdma....&quot;);<br>
+ =A0 =A0 =A0 start =3D get_time_ns();<br>
+<br>
+ =A0 =A0 =A0 while (readl(&amp;dev-&gt;status) &amp; ALT_SGDMA_STATUS_BUSY=
_MSK) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (is_timeout(start, tout)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 debug(&quot;Timeout waiting s=
gdma in do sync!\n&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 debug(&quot;done\n&quot;);<br>
+<br>
+ =A0 =A0 =A0 /* Clear Run */<br>
+ =A0 =A0 =A0 temp =3D readl(&amp;dev-&gt;control);<br>
+ =A0 =A0 =A0 writel(temp &amp; ~ALT_SGDMA_CONTROL_RUN_MSK, &amp;dev-&gt;co=
ntrol);<br>
+<br>
+ =A0 =A0 =A0 /* Get &amp; clear status register contents */<br>
+ =A0 =A0 =A0 debug(&quot;tx sgdma status =3D 0x%x&quot;, readl(&amp;dev-&g=
t;status));<br>
+ =A0 =A0 =A0 writel(0xFF, &amp;dev-&gt;status);<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+static int alt_sgdma_do_async_transfer(struct alt_sgdma_registers *dev,<br=
>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 struct alt_sgdma_descriptor *desc)<br>
+{<br>
+ =A0 =A0 =A0 uint64_t start;<br>
+ =A0 =A0 =A0 uint64_t tout;<br>
+<br>
+ =A0 =A0 =A0 /* Wait for any pending transfers to complete */<br>
+ =A0 =A0 =A0 tout =3D ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;<br>
+<br>
+ =A0 =A0 =A0 start =3D get_time_ns();<br>
+<br>
+ =A0 =A0 =A0 while (readl(&amp;dev-&gt;status) &amp; ALT_SGDMA_STATUS_BUSY=
_MSK) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (is_timeout(start, tout)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 debug(&quot;Timeout waiting s=
gdma in do async!\n&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 /*<br>
+ =A0 =A0 =A0 =A0* Clear any (previous) status register information<br>
+ =A0 =A0 =A0 =A0* that might occlude our error checking later.<br>
+ =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 writel(0xFF, &amp;dev-&gt;status);<br>
+<br>
+ =A0 =A0 =A0 /* Point the controller at the descriptor */<br>
+ =A0 =A0 =A0 writel((uint32_t)desc, &amp;dev-&gt;next_descriptor_pointer);=
<br>
+<br>
+ =A0 =A0 =A0 /*<br>
+ =A0 =A0 =A0 =A0* Set up SGDMA controller to:<br>
+ =A0 =A0 =A0 =A0* - Disable interrupt generation<br>
+ =A0 =A0 =A0 =A0* - Run once a valid descriptor is written to controller<b=
r>
+ =A0 =A0 =A0 =A0* - Stop on an error with any particular descriptor<br>
+ =A0 =A0 =A0 =A0*/<br>
+ =A0 =A0 =A0 writel(ALT_SGDMA_CONTROL_RUN_MSK | ALT_SGDMA_CONTROL_STOP_DMA=
_ER_MSK,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 &amp;dev-&gt;control);<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+static int tse_get_ethaddr(struct eth_device *edev, unsigned char *m)<br>
+{<br>
+ =A0 =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
+ =A0 =A0 =A0 struct alt_tse_mac *mac_dev =3D priv-&gt;mac_dev;<br>
+<br>
+ =A0 =A0 =A0 m[5] =3D (readl(&amp;mac_dev-&gt;mac_addr_1) &gt;&gt; 8) =A0&=
amp;&amp; 0xFF;<br>
+ =A0 =A0 =A0 m[4] =3D (readl(&amp;mac_dev-&gt;mac_addr_1)) =A0 =A0 =A0 &am=
p;&amp; 0xFF;<br>
+ =A0 =A0 =A0 m[3] =3D (readl(&amp;mac_dev-&gt;mac_addr_0) &gt;&gt; 24) &am=
p;&amp; 0xFF;<br>
+ =A0 =A0 =A0 m[2] =3D (readl(&amp;mac_dev-&gt;mac_addr_0) &gt;&gt; 16) &am=
p;&amp; 0xFF;<br>
+ =A0 =A0 =A0 m[1] =3D (readl(&amp;mac_dev-&gt;mac_addr_0) &gt;&gt; =A08) &=
amp;&amp; 0xFF;<br>
+ =A0 =A0 =A0 m[0] =3D (readl(&amp;mac_dev-&gt;mac_addr_0)) =A0 =A0 =A0 &am=
p;&amp; 0xFF;<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+static int tse_set_ethaddr(struct eth_device *edev, unsigned char *m)<br>
+{<br>
+ =A0 =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
+ =A0 =A0 =A0 struct alt_tse_mac *mac_dev =3D priv-&gt;mac_dev;<br>
+<br>
+ =A0 =A0 =A0 debug(&quot;Setting MAC address to %02x:%02x:%02x:%02x:%02x:%=
02x\n&quot;,<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 m[0], m[1], m[2], m[3], m[4], m[5]);<br>
+<br>
+ =A0 =A0 =A0 writel(m[3] &lt;&lt; 24 | m[2] &lt;&lt; 16 | m[1] &lt;&lt; 8 =
| m[0], &amp;mac_dev-&gt;mac_addr_0);<br>
+ =A0 =A0 =A0 writel((m[5] &lt;&lt; 8 | m[4]) &amp; 0xFFFF, &amp;mac_dev-&g=
t;mac_addr_1);<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+static int tse_phy_read(struct mii_device *mdev, int phy_addr, int reg)<br=
>
+{<br>
+ =A0 =A0 =A0 struct eth_device *edev =3D mdev-&gt;edev;<br>
+ =A0 =A0 =A0 struct alt_tse_mac *mac_dev;<br>
+ =A0 =A0 =A0 uint32_t *mdio_regs;<br>
+<br>
+ =A0 =A0 =A0 mac_dev =3D (struct alt_tse_mac *)edev-&gt;iobase;<br>
+ =A0 =A0 =A0 writel(phy_addr, &amp;mac_dev-&gt;mdio_phy1_addr);<br>
+<br>
+ =A0 =A0 =A0 mdio_regs =3D (uint32_t *)&amp;mac_dev-&gt;mdio_phy1;<br>
+<br>
+ =A0 =A0 =A0 return readl(&amp;mdio_regs[reg]) &amp; 0xFFFF;<br>
+}<br>
+<br>
+static int tse_phy_write(struct mii_device *mdev, int phy_addr, int reg, i=
nt val)<br>
+{<br>
+ =A0 =A0 =A0 struct eth_device *edev =3D mdev-&gt;edev;<br>
+ =A0 =A0 =A0 struct alt_tse_mac *mac_dev;<br>
+ =A0 =A0 =A0 uint32_t *mdio_regs;<br>
+<br>
+ =A0 =A0 =A0 mac_dev =3D (struct alt_tse_mac *)edev-&gt;iobase;<br>
+ =A0 =A0 =A0 writel(phy_addr, &amp;mac_dev-&gt;mdio_phy1_addr);<br>
+<br>
+ =A0 =A0 =A0 mdio_regs =3D (uint32_t *)&amp;mac_dev-&gt;mdio_phy1;<br>
+<br>
+ =A0 =A0 =A0 writel((uint32_t)val, &amp;mdio_regs[reg]);<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+static void tse_reset(struct eth_device *edev)<br>
+{<br>
+ =A0 =A0 =A0 /* stop sgdmas, disable tse receive */<br>
+ =A0 =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
+ =A0 =A0 =A0 struct alt_tse_mac *mac_dev =3D priv-&gt;mac_dev;<br>
+ =A0 =A0 =A0 struct alt_sgdma_registers *rx_sgdma =3D priv-&gt;sgdma_rx;<b=
r>
+ =A0 =A0 =A0 struct alt_sgdma_registers *tx_sgdma =3D priv-&gt;sgdma_tx;<b=
r>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *rx_desc =3D (struct alt_sgdma_de=
scriptor *)&amp;priv-&gt;rx_desc[0];<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *tx_desc =3D (struct alt_sgdma_de=
scriptor *)&amp;priv-&gt;tx_desc[0];<br>
+ =A0 =A0 =A0 uint64_t start;<br>
+ =A0 =A0 =A0 uint64_t tout;<br>
+<br>
+ =A0 =A0 =A0 tout =3D ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT * MSECOND;<br>
+<br>
+ =A0 =A0 =A0 /* clear rx desc &amp; wait for sgdma to complete */<br>
+ =A0 =A0 =A0 writeb(0, &amp;rx_desc-&gt;descriptor_control);<br>
+ =A0 =A0 =A0 writel(0, &amp;rx_sgdma-&gt;control);<br>
+<br>
+ =A0 =A0 =A0 writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &amp;rx_sgdma-&gt=
;control);<br>
+ =A0 =A0 =A0 writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &amp;rx_sgdma-&gt=
;control);<br>
+ =A0 =A0 =A0 mdelay(100);<br>
+<br>
+ =A0 =A0 =A0 start =3D get_time_ns();<br>
+<br>
+ =A0 =A0 =A0 while (readl(&amp;rx_sgdma-&gt;status) &amp; ALT_SGDMA_STATUS=
_BUSY_MSK) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (is_timeout(start, tout)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot;Timeout waiting =
for rx sgdma!\n&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(ALT_SGDMA_CONTROL_SOFT=
WARERESET_MSK, &amp;rx_sgdma-&gt;control);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(ALT_SGDMA_CONTROL_SOFT=
WARERESET_MSK, &amp;rx_sgdma-&gt;control);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 /* clear tx desc &amp; wait for sgdma to complete */<br>
+ =A0 =A0 =A0 writeb(0, &amp;tx_desc-&gt;descriptor_control);<br>
+ =A0 =A0 =A0 writel(0, &amp;tx_sgdma-&gt;control);<br>
+<br>
+ =A0 =A0 =A0 writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &amp;tx_sgdma-&gt=
;control);<br>
+ =A0 =A0 =A0 writel(ALT_SGDMA_CONTROL_SOFTWARERESET_MSK, &amp;tx_sgdma-&gt=
;control);<br>
+ =A0 =A0 =A0 mdelay(100);<br>
+<br>
+ =A0 =A0 =A0 start =3D get_time_ns();<br>
+<br>
+ =A0 =A0 =A0 while (readl(&amp;tx_sgdma-&gt;status) &amp; ALT_SGDMA_STATUS=
_BUSY_MSK) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (is_timeout(start, tout)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot;Timeout waiting =
for tx sgdma!\n&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(ALT_SGDMA_CONTROL_SOFT=
WARERESET_MSK, &amp;tx_sgdma-&gt;control);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 writel(ALT_SGDMA_CONTROL_SOFT=
WARERESET_MSK, &amp;tx_sgdma-&gt;control);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 /* reset the mac */<br>
+ =A0 =A0 =A0 writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK =
|<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ALTERA_TSE_CMD_SW_RESET_MSK, &amp;mac_dev-&gt=
;command_config);<br>
+<br>
+ =A0 =A0 =A0 start =3D get_time_ns();<br>
+ =A0 =A0 =A0 tout =3D ALT_TSE_SW_RESET_WATCHDOG_TOUT * MSECOND;<br>
+<br>
+ =A0 =A0 =A0 while (readl(&amp;mac_dev-&gt;command_config) &amp; ALTERA_TS=
E_CMD_SW_RESET_MSK) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (is_timeout(start, tout)) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot;TSEMAC SW reset =
bit never cleared!\n&quot;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 }<br>
+ =A0 =A0 =A0 }<br>
+}<br>
+<br>
+static int tse_eth_open(struct eth_device *edev)<br>
+{<br>
+ =A0 =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
+<br>
+ =A0 =A0 =A0 miidev_wait_aneg(priv-&gt;miidev);<br>
+ =A0 =A0 =A0 miidev_print_status(priv-&gt;miidev);<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+static int tse_eth_send(struct eth_device *edev, void *packet, int length)=
<br>
+{<br>
+<br>
+ =A0 =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
+ =A0 =A0 =A0 struct alt_sgdma_registers *tx_sgdma =3D priv-&gt;sgdma_tx;<b=
r>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *tx_desc =3D (struct alt_sgdma_de=
scriptor *)priv-&gt;tx_desc;<br>
+<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *tx_desc_cur =3D (struct alt_sgdm=
a_descriptor *)&amp;tx_desc[0];<br>
+<br>
+ =A0 =A0 =A0 flush_dcache_range((uint32_t)packet, (uint32_t)packet + lengt=
h);<br>
+ =A0 =A0 =A0 alt_sgdma_construct_descriptor_burst(<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor *)&amp;tx_desc[0=
],<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor *)&amp;tx_desc[1=
],<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)packet, =A0 =A0 /* read addr */<b=
r>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)0, =A0 =A0 =A0 =A0 =A0/* =A0 =A0 =
=A0 =A0 =A0 */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 length, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* le=
ngth or EOP ,will change for each tx */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x1, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/=
* gen eop */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/=
* read fixed */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x1, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/=
* write fixed or sop */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/=
* read burst */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/=
* write burst */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /=
* channel */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 );<br>
+<br>
+ =A0 =A0 =A0 alt_sgdma_do_sync_transfer(tx_sgdma, tx_desc_cur);<br>
+<br>
+ =A0 =A0 =A0 return 0;;<br>
+}<br>
+<br>
+static void tse_eth_halt(struct eth_device *edev)<br>
+{<br>
+ =A0 =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
+ =A0 =A0 =A0 struct alt_sgdma_registers *rx_sgdma =3D priv-&gt;sgdma_rx;<b=
r>
+ =A0 =A0 =A0 struct alt_sgdma_registers *tx_sgdma =3D priv-&gt;sgdma_tx;<b=
r>
+<br>
+ =A0 =A0 =A0 writel(0, &amp;rx_sgdma-&gt;control); /* Stop the controller =
and reset settings */<br>
+ =A0 =A0 =A0 writel(0, &amp;tx_sgdma-&gt;control); /* Stop the controller =
and reset settings */<br>
+}<br>
+<br>
+static int tse_eth_rx(struct eth_device *edev)<br>
+{<br>
+ =A0 =A0 =A0 uint16_t packet_length =3D 0;<br>
+<br>
+ =A0 =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *rx_desc =3D (struct alt_sgdma_de=
scriptor *)priv-&gt;rx_desc;<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *rx_desc_cur =3D &amp;rx_desc[0];=
<br>
+ =A0 =A0 =A0 struct alt_sgdma_registers *rx_sgdma =3D priv-&gt;sgdma_rx;<b=
r>
+<br>
+ =A0 =A0 =A0 if (rx_desc_cur-&gt;descriptor_status &amp;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP=
_MSK) {<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 packet_length =3D rx_desc-&gt;actual_bytes_tr=
ansferred;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 net_receive(NetRxPackets[0], packet_length);<=
br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* Clear Run */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 rx_sgdma-&gt;control =3D (rx_sgdma-&gt;contro=
l &amp; (~ALT_SGDMA_CONTROL_RUN_MSK));<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* start descriptor again */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 flush_dcache_range((uint32_t)(NetRxPackets[0]=
), (uint32_t)(NetRxPackets[0]) + PKTSIZE);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 alt_sgdma_construct_descriptor_burst(<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor =
*)&amp;rx_desc[0],<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor =
*)&amp;rx_desc[1],<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t)0x0, =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0/* read addr */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)NetRxPackets[0], =
=A0 =A0/* =A0 =A0 =A0 =A0 =A0 */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* length or EOP */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* gen eop */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* read fixed */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* write fixed or sop */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* read burst */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/* write burst */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* channel */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 );<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 /* setup the sgdma */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 alt_sgdma_do_async_transfer(priv-&gt;sgdma_rx=
, &amp;rx_desc[0]);<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+static int tse_init_dev(struct eth_device *edev)<br>
+{<br>
+ =A0 =A0 =A0 struct altera_tse_priv *priv =3D edev-&gt;priv;<br>
+ =A0 =A0 =A0 struct alt_tse_mac *mac_dev =3D priv-&gt;mac_dev;<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *tx_desc =3D priv-&gt;tx_desc;<br=
>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *rx_desc =3D priv-&gt;rx_desc;<br=
>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *rx_desc_cur;<br>
+<br>
+ =A0 =A0 =A0 rx_desc_cur =3D (struct alt_sgdma_descriptor *)&amp;rx_desc[0=
];<br>
+<br>
+ =A0 =A0 =A0 tse_reset(edev);<br>
+<br>
+ =A0 =A0 =A0 /* need to create sgdma */<br>
+ =A0 =A0 =A0 alt_sgdma_construct_descriptor_burst(<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor *)&amp;tx_desc[0=
],<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor *)&amp;tx_desc[1=
],<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)NULL, =A0 =A0 =A0 /* read addr */=
<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)0, =A0 =A0 =A0 =A0 =A0/* =A0 =A0 =
=A0 =A0 =A0 */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0/* length or EOP ,will change for each tx */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x1, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/=
* gen eop */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/=
* read fixed */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x1, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/=
* write fixed or sop */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/=
* read burst */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/=
* write burst */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /=
* channel */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 );<br>
+<br>
+ =A0 =A0 =A0 flush_dcache_range((uint32_t)(NetRxPackets[0]), (uint32_t)(Ne=
tRxPackets[0]) + PKTSIZE);<br>
+ =A0 =A0 =A0 alt_sgdma_construct_descriptor_burst(<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor *)&amp;rx_desc[0=
],<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (struct alt_sgdma_descriptor *)&amp;rx_desc[1=
],<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t)0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0/* read addr */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 (uint32_t *)NetRxPackets[0], =A0 =A0/* =A0 =
=A0 =A0 =A0 =A0 */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0/* length or EOP */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0/* gen eop */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0/* read fixed */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0/* write fixed or sop */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0/* read burst */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0, =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0/* write burst */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 0x0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 /* channel */<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 );<br>
+<br>
+ =A0 =A0 =A0 /* start rx async transfer */<br>
+ =A0 =A0 =A0 alt_sgdma_do_async_transfer(priv-&gt;sgdma_rx, rx_desc_cur);<=
br>
+<br>
+ =A0 =A0 =A0 /* Initialize MAC registers */<br>
+ =A0 =A0 =A0 writel(PKTSIZE, &amp;mac_dev-&gt;max_frame_length);<br>
+<br>
+ =A0 =A0 =A0 /* NO Shift */<br>
+ =A0 =A0 =A0 writel(0, &amp;mac_dev-&gt;rx_cmd_stat);<br>
+ =A0 =A0 =A0 writel(0, &amp;mac_dev-&gt;tx_cmd_stat);<br>
+<br>
+ =A0 =A0 =A0 /* enable MAC */<br>
+ =A0 =A0 =A0 writel(ALTERA_TSE_CMD_TX_ENA_MSK | ALTERA_TSE_CMD_RX_ENA_MSK,=
 &amp;mac_dev-&gt;command_config);<br>
+<br>
+ =A0 =A0 =A0 miidev_restart_aneg(priv-&gt;miidev);<br>
+<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+static int tse_probe(struct device_d *dev)<br>
+{<br>
+ =A0 =A0 =A0 struct altera_tse_priv *priv;<br>
+ =A0 =A0 =A0 struct mii_device *miidev;<br>
+ =A0 =A0 =A0 struct eth_device *edev;<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *rx_desc;<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *tx_desc;<br>
+#ifndef CONFIG_TSE_USE_DEDICATED_DESC_MEM<br>
+ =A0 =A0 =A0 uint32_t dma_handle;<br>
+#endif<br>
+ =A0 =A0 =A0 edev =3D xzalloc(sizeof(struct eth_device) + sizeof(struct al=
tera_tse_priv));<br>
+ =A0 =A0 =A0 miidev =3D xzalloc(sizeof(struct mii_device));<br>
+<br>
+ =A0 =A0 =A0 dev-&gt;type_data =3D edev;<br>
+ =A0 =A0 =A0 edev-&gt;priv =3D (struct altera_tse_priv *)(edev + 1);<br>
+<br>
+ =A0 =A0 =A0 edev-&gt;iobase =3D dev-&gt;map_base;<br>
+<br>
+ =A0 =A0 =A0 priv =3D edev-&gt;priv;<br>
+<br>
+ =A0 =A0 =A0 edev-&gt;init =3D tse_init_dev;<br>
+ =A0 =A0 =A0 edev-&gt;open =3D tse_eth_open;<br>
+ =A0 =A0 =A0 edev-&gt;send =3D tse_eth_send;<br>
+ =A0 =A0 =A0 edev-&gt;recv =3D tse_eth_rx;<br>
+ =A0 =A0 =A0 edev-&gt;halt =3D tse_eth_halt;<br>
+ =A0 =A0 =A0 edev-&gt;get_ethaddr =3D tse_get_ethaddr;<br>
+ =A0 =A0 =A0 edev-&gt;set_ethaddr =3D tse_set_ethaddr;<br>
+<br>
+#ifdef CONFIG_TSE_USE_DEDICATED_DESC_MEM<br>
+ =A0 =A0 =A0 tx_desc =3D (struct alt_sgdma_descriptor *)NIOS_SOPC_TSE_DESC=
_MEM_BASE;<br>
+ =A0 =A0 =A0 rx_desc =3D tx_desc + 2;<br>
+#else<br>
+ =A0 =A0 =A0 tx_desc =3D dma_alloc_coherent(sizeof(*tx_desc) * (3 + PKTBUF=
SRX), &amp;dma_handle);<br>
+ =A0 =A0 =A0 rx_desc =3D tx_desc + 2;<br>
+<br>
+ =A0 =A0 =A0 if (!tx_desc) {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 free(edev);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 free(miidev);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 return 0;<br>
+ =A0 =A0 =A0 }<br>
+#endif<br>
+<br>
+ =A0 =A0 =A0 memset(rx_desc, 0, (sizeof *rx_desc) * (PKTBUFSRX + 1));<br>
+ =A0 =A0 =A0 memset(tx_desc, 0, (sizeof *tx_desc) * 2);<br>
+<br>
+ =A0 =A0 =A0 priv-&gt;mac_dev =3D (struct alt_tse_mac *)dev-&gt;map_base;<=
br>
+ =A0 =A0 =A0 priv-&gt;sgdma_rx =3D (struct alt_sgdma_registers *)NIOS_SOPC=
_SGDMA_RX_BASE;<br>
+ =A0 =A0 =A0 priv-&gt;sgdma_tx =3D (struct alt_sgdma_registers *)NIOS_SOPC=
_SGDMA_TX_BASE;<br>
+ =A0 =A0 =A0 priv-&gt;rx_desc =3D rx_desc;<br>
+ =A0 =A0 =A0 priv-&gt;tx_desc =3D tx_desc;<br>
+<br>
+ =A0 =A0 =A0 priv-&gt;miidev =3D miidev;<br>
+<br>
+ =A0 =A0 =A0 miidev-&gt;read =3D tse_phy_read;<br>
+ =A0 =A0 =A0 miidev-&gt;write =3D tse_phy_write;<br>
+ =A0 =A0 =A0 miidev-&gt;flags =3D 0;<br>
+ =A0 =A0 =A0 miidev-&gt;edev =3D edev;<br>
+<br>
+ =A0 =A0 =A0 if (dev-&gt;platform_data !=3D NULL)<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 miidev-&gt;address =3D *((int8_t *)(dev-&gt;p=
latform_data));<br>
+ =A0 =A0 =A0 else {<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 printf(&quot;No PHY address specified.\n&quot=
;);<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 return -ENODEV;<br>
+ =A0 =A0 =A0 }<br>
+<br>
+ =A0 =A0 =A0 mii_register(miidev);<br>
+<br>
+ =A0 =A0 =A0 return eth_register(edev);<br>
+}<br>
+<br>
+static struct driver_d altera_tse_driver =3D {<br>
+ =A0 =A0 =A0 .name =3D &quot;altera_tse&quot;,<br>
+ =A0 =A0 =A0 .probe =3D tse_probe,<br>
+};<br>
+<br>
+static int tse_init(void)<br>
+{<br>
+ =A0 =A0 =A0 register_driver(&amp;altera_tse_driver);<br>
+ =A0 =A0 =A0 return 0;<br>
+}<br>
+<br>
+device_initcall(tse_init);<br>
+<br>
diff --git a/drivers/net/altera_tse.h b/drivers/net/altera_tse.h<br>
new file mode 100644<br>
index 0000000..c907c74<br>
--- /dev/null<br>
+++ b/drivers/net/altera_tse.h<br>
@@ -0,0 +1,303 @@<br>
+/*<br>
+ * Altera 10/100/1000 triple speed ethernet mac<br>
+ *<br>
+ * Copyright (C) 2008 Altera Corporation.<br>
+ * Copyright (C) 2010 Thomas Chou &lt;<a href=3D"mailto:thomas@wytron.com.=
tw">thomas@wytron.com.tw</a>&gt;<br>
+ * Copyright (C) 2011 Franck JULLIEN &lt;<a href=3D"mailto:elec4fun@gmail.=
com">elec4fun@gmail.com</a>&gt;<br>
+ *<br>
+ * This program is free software; you can redistribute it and/or modify<br=
>
+ * it under the terms of the GNU General Public License version 2 as<br>
+ * published by the Free Software Foundation.<br>
+ */<br>
+#ifndef _ALTERA_TSE_H_<br>
+#define _ALTERA_TSE_H_<br>
+<br>
+/* SGDMA Stuff */<br>
+#define ALT_SGDMA_STATUS_ERROR_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 (0x00000001)<br>
+#define ALT_SGDMA_STATUS_EOP_ENCOUNTERED_MSK =A0 =A0 =A0 =A0 =A0 (0x000000=
02)<br>
+#define ALT_SGDMA_STATUS_DESC_COMPLETED_MSK =A0 =A0 =A0 =A0 =A0 =A0(0x0000=
0004)<br>
+#define ALT_SGDMA_STATUS_CHAIN_COMPLETED_MSK =A0 =A0 =A0 =A0 =A0 (0x000000=
08)<br>
+#define ALT_SGDMA_STATUS_BUSY_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0(0x00000010)<br>
+<br>
+#define ALT_SGDMA_CONTROL_IE_ERROR_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (0x=
00000001)<br>
+#define ALT_SGDMA_CONTROL_IE_EOP_ENCOUNTERED_MSK =A0 =A0 =A0 (0x00000002)<=
br>
+#define ALT_SGDMA_CONTROL_IE_DESC_COMPLETED_MSK =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0(0x00000004)<br>
+#define ALT_SGDMA_CONTROL_IE_CHAIN_COMPLETED_MSK =A0 =A0 =A0 (0x00000008)<=
br>
+#define ALT_SGDMA_CONTROL_IE_GLOBAL_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0(0x00000010)<br>
+#define ALT_SGDMA_CONTROL_RUN_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0(0x00000020)<br>
+#define ALT_SGDMA_CONTROL_STOP_DMA_ER_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0(0x00=
000040)<br>
+#define ALT_SGDMA_CONTROL_IE_MAX_DESC_PROCESSED_MSK =A0 =A0(0x00000080)<br=
>
+#define ALT_SGDMA_CONTROL_MAX_DESC_PROCESSED_MSK =A0 =A0 =A0 (0x0000FF00)<=
br>
+#define ALT_SGDMA_CONTROL_SOFTWARERESET_MSK =A0 =A0 =A0 =A0 =A0 =A0(0x0001=
0000)<br>
+#define ALT_SGDMA_CONTROL_PARK_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 (0x00020000)<br>
+#define ALT_SGDMA_CONTROL_CLEAR_INTERRUPT_MSK =A0 =A0 =A0 =A0 =A0(0x800000=
00)<br>
+<br>
+#define ALTERA_TSE_SGDMA_INTR_MASK =A0(ALT_SGDMA_CONTROL_IE_CHAIN_COMPLETE=
D_MSK \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | ALT_SGDMA_STATUS_DESC_COMPL=
ETED_MSK \<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | ALT_SGDMA_CONTROL_IE_GLOBAL=
_MSK)<br>
+<br>
+/*<br>
+ * Descriptor control bit masks &amp; offsets<br>
+ *<br>
+ * Note: The control byte physically occupies bits [31:24] in memory.<br>
+ * =A0 =A0 =A0The following bit-offsets are expressed relative to the LSB =
of<br>
+ * =A0 =A0 =A0the control register bitfield.<br>
+ */<br>
+#define ALT_SGDMA_DESCRIPTOR_CONTROL_GENERATE_EOP_MSK =A0 =A0 =A0 =A0 =A0(=
0x00000001)<br>
+#define ALT_SGDMA_DESCRIPTOR_CONTROL_READ_FIXED_ADDRESS_MSK =A0 =A0(0x0000=
0002)<br>
+#define ALT_SGDMA_DESCRIPTOR_CONTROL_WRITE_FIXED_ADDRESS_MSK =A0 (0x000000=
04)<br>
+#define ALT_SGDMA_DESCRIPTOR_CONTROL_ATLANTIC_CHANNEL_MSK =A0 =A0 =A0(0x00=
000008)<br>
+#define ALT_SGDMA_DESCRIPTOR_CONTROL_OWNED_BY_HW_MSK =A0 =A0 =A0 =A0 =A0 (=
0x00000080)<br>
+<br>
+/*<br>
+ * Descriptor status bit masks &amp; offsets<br>
+ *<br>
+ * Note: The status byte physically occupies bits [23:16] in memory.<br>
+ * =A0 =A0 =A0The following bit-offsets are expressed relative to the LSB =
of<br>
+ * =A0 =A0 =A0the status register bitfield.<br>
+ */<br>
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_CRC_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0(0x00000001)<br>
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_PARITY_MSK =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 (0x00000002)<br>
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_OVERFLOW_MSK =A0 =A0 =A0 =A0 =A0 =A0=
 (0x00000004)<br>
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_SYNC_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 (0x00000008)<br>
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_UEOP_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 (0x00000010)<br>
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_MEOP_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 (0x00000020)<br>
+#define ALT_SGDMA_DESCRIPTOR_STATUS_E_MSOP_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 (0x00000040)<br>
+#define ALT_SGDMA_DESCRIPTOR_STATUS_TERMINATED_BY_EOP_MSK =A0 =A0 =A0(0x00=
000080)<br>
+#define ALT_SGDMA_DESCRIPTOR_STATUS_ERROR_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0(0x0000007F)<br>
+<br>
+/*<br>
+ * The SGDMA controller buffer descriptor allocates<br>
+ * 64 bits for each address. To support ANSI C, the<br>
+ * struct implementing a descriptor places 32-bits<br>
+ * of padding directly above each address; each pad must<br>
+ * be cleared when initializing a descriptor.<br>
+ */<br>
+<br>
+/*<br>
+ * Buffer Descriptor data structure<br>
+ *<br>
+ */<br>
+struct alt_sgdma_descriptor {<br>
+ =A0 =A0 =A0 unsigned int *source; =A0 =A0 =A0 =A0 =A0 /* the address of d=
ata to be read. */<br>
+ =A0 =A0 =A0 unsigned int source_pad;<br>
+<br>
+ =A0 =A0 =A0 unsigned int *destination; =A0 =A0 /* the address to write da=
ta */<br>
+ =A0 =A0 =A0 unsigned int destination_pad;<br>
+<br>
+ =A0 =A0 =A0 unsigned int *next; =A0 =A0 =A0 =A0 =A0 =A0/* the next descri=
ptor in the list. */<br>
+ =A0 =A0 =A0 unsigned int next_pad;<br>
+<br>
+ =A0 =A0 =A0 unsigned short bytes_to_transfer; /* the number of bytes to t=
ransfer */<br>
+ =A0 =A0 =A0 unsigned char read_burst;<br>
+ =A0 =A0 =A0 unsigned char write_burst;<br>
+<br>
+ =A0 =A0 =A0 unsigned short actual_bytes_transferred;/* bytes transferred =
by DMA */<br>
+ =A0 =A0 =A0 unsigned char descriptor_status;<br>
+ =A0 =A0 =A0 unsigned char descriptor_control;<br>
+<br>
+} __attribute__ ((packed, aligned(1)));<br>
+<br>
+/* SG-DMA Control/Status Slave registers map */<br>
+<br>
+struct alt_sgdma_registers {<br>
+ =A0 =A0 =A0 unsigned int status;<br>
+ =A0 =A0 =A0 unsigned int status_pad[3];<br>
+ =A0 =A0 =A0 unsigned int control;<br>
+ =A0 =A0 =A0 unsigned int control_pad[3];<br>
+ =A0 =A0 =A0 unsigned int next_descriptor_pointer;<br>
+ =A0 =A0 =A0 unsigned int descriptor_pad[3];<br>
+};<br>
+<br>
+/* TSE Stuff */<br>
+#define ALTERA_TSE_CMD_TX_ENA_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0(0x00000001)<=
br>
+#define ALTERA_TSE_CMD_RX_ENA_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0(0x00000002)<=
br>
+#define ALTERA_TSE_CMD_XON_GEN_MSK =A0 =A0 =A0 =A0 =A0 =A0 (0x00000004)<br=
>
+#define ALTERA_TSE_CMD_ETH_SPEED_MSK =A0 =A0 =A0 =A0 =A0 (0x00000008)<br>
+#define ALTERA_TSE_CMD_PROMIS_EN_MSK =A0 =A0 =A0 =A0 =A0 (0x00000010)<br>
+#define ALTERA_TSE_CMD_PAD_EN_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0(0x00000020)<=
br>
+#define ALTERA_TSE_CMD_CRC_FWD_MSK =A0 =A0 =A0 =A0 =A0 =A0 (0x00000040)<br=
>
+#define ALTERA_TSE_CMD_PAUSE_FWD_MSK =A0 =A0 =A0 =A0 =A0 (0x00000080)<br>
+#define ALTERA_TSE_CMD_PAUSE_IGNORE_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(0x=
00000100)<br>
+#define ALTERA_TSE_CMD_TX_ADDR_INS_MSK =A0 =A0 =A0 =A0 (0x00000200)<br>
+#define ALTERA_TSE_CMD_HD_ENA_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0(0x00000400)<=
br>
+#define ALTERA_TSE_CMD_EXCESS_COL_MSK =A0 =A0 =A0 =A0 =A0(0x00000800)<br>
+#define ALTERA_TSE_CMD_LATE_COL_MSK =A0 =A0 =A0 =A0 =A0 =A0(0x00001000)<br=
>
+#define ALTERA_TSE_CMD_SW_RESET_MSK =A0 =A0 =A0 =A0 =A0 =A0(0x00002000)<br=
>
+#define ALTERA_TSE_CMD_MHASH_SEL_MSK =A0 =A0 =A0 =A0 =A0 (0x00004000)<br>
+#define ALTERA_TSE_CMD_LOOPBACK_MSK =A0 =A0 =A0 =A0 =A0 =A0(0x00008000)<br=
>
+/* Bits (18:16) =3D address select */<br>
+#define ALTERA_TSE_CMD_TX_ADDR_SEL_MSK =A0 =A0 =A0 =A0 (0x00070000)<br>
+#define ALTERA_TSE_CMD_MAGIC_ENA_MSK =A0 =A0 =A0 =A0 =A0 (0x00080000)<br>
+#define ALTERA_TSE_CMD_SLEEP_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 (0x00100000)<=
br>
+#define ALTERA_TSE_CMD_WAKEUP_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0(0x00200000)<=
br>
+#define ALTERA_TSE_CMD_XOFF_GEN_MSK =A0 =A0 =A0 =A0 =A0 =A0(0x00400000)<br=
>
+#define ALTERA_TSE_CMD_CNTL_FRM_ENA_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(0x=
00800000)<br>
+#define ALTERA_TSE_CMD_NO_LENGTH_CHECK_MSK =A0 =A0 (0x01000000)<br>
+#define ALTERA_TSE_CMD_ENA_10_MSK =A0 =A0 =A0 =A0 =A0 =A0 =A0(0x02000000)<=
br>
+#define ALTERA_TSE_CMD_RX_ERR_DISC_MSK =A0 =A0 =A0 =A0 (0x04000000)<br>
+/* Bits (30..27) reserved */<br>
+#define ALTERA_TSE_CMD_CNT_RESET_MSK =A0 =A0 =A0 =A0 =A0 (0x80000000)<br>
+<br>
+#define ALTERA_TSE_TX_CMD_STAT_TX_SHIFT16 =A0 =A0 =A0(0x00040000)<br>
+#define ALTERA_TSE_TX_CMD_STAT_OMIT_CRC =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0(0x=
00020000)<br>
+<br>
+#define ALTERA_TSE_RX_CMD_STAT_RX_SHIFT16 =A0 =A0 =A0(0x02000000)<br>
+<br>
+#define ALT_TSE_SW_RESET_WATCHDOG_CNTR =A0 =A0 =A0 =A0 10000<br>
+#define ALT_TSE_SGDMA_BUSY_WATCHDOG_CNTR =A0 =A0 =A0 90000000<br>
+<br>
+#define ALT_TSE_SW_RESET_WATCHDOG_TOUT =A0 =A0 =A0 =A0 1 =A0 =A0/* ms */<b=
r>
+#define ALT_TSE_SGDMA_BUSY_WATCHDOG_TOUT =A0 =A0 =A0 5 =A0 =A0/* ms */<br>
+<br>
+struct alt_tse_mdio {<br>
+ =A0 =A0 =A0 unsigned int control; /*PHY device operation control register=
 */<br>
+ =A0 =A0 =A0 unsigned int status; =A0/*PHY device operation status registe=
r */<br>
+ =A0 =A0 =A0 unsigned int phy_id1; /*Bits 31:16 of PHY identifier. */<br>
+ =A0 =A0 =A0 unsigned int phy_id2; /*Bits 15:0 of PHY identifier. */<br>
+ =A0 =A0 =A0 unsigned int auto_negotiation_advertisement;<br>
+ =A0 =A0 =A0 unsigned int remote_partner_base_page_ability;<br>
+<br>
+ =A0 =A0 =A0 unsigned int reg6;<br>
+ =A0 =A0 =A0 unsigned int reg7;<br>
+ =A0 =A0 =A0 unsigned int reg8;<br>
+ =A0 =A0 =A0 unsigned int reg9;<br>
+ =A0 =A0 =A0 unsigned int rega;<br>
+ =A0 =A0 =A0 unsigned int regb;<br>
+ =A0 =A0 =A0 unsigned int regc;<br>
+ =A0 =A0 =A0 unsigned int regd;<br>
+ =A0 =A0 =A0 unsigned int rege;<br>
+ =A0 =A0 =A0 unsigned int regf;<br>
+ =A0 =A0 =A0 unsigned int reg10;<br>
+ =A0 =A0 =A0 unsigned int reg11;<br>
+ =A0 =A0 =A0 unsigned int reg12;<br>
+ =A0 =A0 =A0 unsigned int reg13;<br>
+ =A0 =A0 =A0 unsigned int reg14;<br>
+ =A0 =A0 =A0 unsigned int reg15;<br>
+ =A0 =A0 =A0 unsigned int reg16;<br>
+ =A0 =A0 =A0 unsigned int reg17;<br>
+ =A0 =A0 =A0 unsigned int reg18;<br>
+ =A0 =A0 =A0 unsigned int reg19;<br>
+ =A0 =A0 =A0 unsigned int reg1a;<br>
+ =A0 =A0 =A0 unsigned int reg1b;<br>
+ =A0 =A0 =A0 unsigned int reg1c;<br>
+ =A0 =A0 =A0 unsigned int reg1d;<br>
+ =A0 =A0 =A0 unsigned int reg1e;<br>
+ =A0 =A0 =A0 unsigned int reg1f;<br>
+};<br>
+<br>
+/* MAC register Space */<br>
+<br>
+struct alt_tse_mac {<br>
+ =A0 =A0 =A0 unsigned int megacore_revision;<br>
+ =A0 =A0 =A0 unsigned int scratch_pad;<br>
+ =A0 =A0 =A0 unsigned int command_config;<br>
+ =A0 =A0 =A0 unsigned int mac_addr_0;<br>
+ =A0 =A0 =A0 unsigned int mac_addr_1;<br>
+ =A0 =A0 =A0 unsigned int max_frame_length;<br>
+ =A0 =A0 =A0 unsigned int pause_quanta;<br>
+ =A0 =A0 =A0 unsigned int rx_sel_empty_threshold;<br>
+ =A0 =A0 =A0 unsigned int rx_sel_full_threshold;<br>
+ =A0 =A0 =A0 unsigned int tx_sel_empty_threshold;<br>
+ =A0 =A0 =A0 unsigned int tx_sel_full_threshold;<br>
+ =A0 =A0 =A0 unsigned int rx_almost_empty_threshold;<br>
+ =A0 =A0 =A0 unsigned int rx_almost_full_threshold;<br>
+ =A0 =A0 =A0 unsigned int tx_almost_empty_threshold;<br>
+ =A0 =A0 =A0 unsigned int tx_almost_full_threshold;<br>
+ =A0 =A0 =A0 unsigned int mdio_phy0_addr;<br>
+ =A0 =A0 =A0 unsigned int mdio_phy1_addr;<br>
+<br>
+ =A0 =A0 =A0 /* only if 100/1000 BaseX PCS, reserved otherwise */<br>
+ =A0 =A0 =A0 unsigned int reservedx44[5];<br>
+<br>
+ =A0 =A0 =A0 unsigned int reg_read_access_status;<br>
+ =A0 =A0 =A0 unsigned int min_tx_ipg_length;<br>
+<br>
+ =A0 =A0 =A0 /* IEEE 802.3 oEntity Managed Object Support */<br>
+ =A0 =A0 =A0 unsigned int aMACID_1; =A0/*The MAC addresses */<br>
+ =A0 =A0 =A0 unsigned int aMACID_2;<br>
+ =A0 =A0 =A0 unsigned int aFramesTransmittedOK;<br>
+ =A0 =A0 =A0 unsigned int aFramesReceivedOK;<br>
+ =A0 =A0 =A0 unsigned int aFramesCheckSequenceErrors;<br>
+ =A0 =A0 =A0 unsigned int aAlignmentErrors;<br>
+ =A0 =A0 =A0 unsigned int aOctetsTransmittedOK;<br>
+ =A0 =A0 =A0 unsigned int aOctetsReceivedOK;<br>
+<br>
+ =A0 =A0 =A0 /* IEEE 802.3 oPausedEntity Managed Object Support */<br>
+ =A0 =A0 =A0 unsigned int aTxPAUSEMACCtrlFrames;<br>
+ =A0 =A0 =A0 unsigned int aRxPAUSEMACCtrlFrames;<br>
+<br>
+ =A0 =A0 =A0 /* IETF MIB (MIB-II) Object Support */<br>
+ =A0 =A0 =A0 unsigned int ifInErrors;<br>
+ =A0 =A0 =A0 unsigned int ifOutErrors;<br>
+ =A0 =A0 =A0 unsigned int ifInUcastPkts;<br>
+ =A0 =A0 =A0 unsigned int ifInMulticastPkts;<br>
+ =A0 =A0 =A0 unsigned int ifInBroadcastPkts;<br>
+ =A0 =A0 =A0 unsigned int ifOutDiscards;<br>
+ =A0 =A0 =A0 unsigned int ifOutUcastPkts;<br>
+ =A0 =A0 =A0 unsigned int ifOutMulticastPkts;<br>
+ =A0 =A0 =A0 unsigned int ifOutBroadcastPkts;<br>
+<br>
+ =A0 =A0 =A0 /* IETF RMON MIB Object Support */<br>
+ =A0 =A0 =A0 unsigned int etherStatsDropEvent;<br>
+ =A0 =A0 =A0 unsigned int etherStatsOctets;<br>
+ =A0 =A0 =A0 unsigned int etherStatsPkts;<br>
+ =A0 =A0 =A0 unsigned int etherStatsUndersizePkts;<br>
+ =A0 =A0 =A0 unsigned int etherStatsOversizePkts;<br>
+ =A0 =A0 =A0 unsigned int etherStatsPkts64Octets;<br>
+ =A0 =A0 =A0 unsigned int etherStatsPkts65to127Octets;<br>
+ =A0 =A0 =A0 unsigned int etherStatsPkts128to255Octets;<br>
+ =A0 =A0 =A0 unsigned int etherStatsPkts256to511Octets;<br>
+ =A0 =A0 =A0 unsigned int etherStatsPkts512to1023Octets;<br>
+ =A0 =A0 =A0 unsigned int etherStatsPkts1024to1518Octets;<br>
+<br>
+ =A0 =A0 =A0 unsigned int etherStatsPkts1519toXOctets;<br>
+ =A0 =A0 =A0 unsigned int etherStatsJabbers;<br>
+ =A0 =A0 =A0 unsigned int etherStatsFragments;<br>
+<br>
+ =A0 =A0 =A0 unsigned int reservedxE4;<br>
+<br>
+ =A0 =A0 =A0 /*FIFO control register. */<br>
+ =A0 =A0 =A0 unsigned int tx_cmd_stat;<br>
+ =A0 =A0 =A0 unsigned int rx_cmd_stat;<br>
+<br>
+ =A0 =A0 =A0 unsigned int ipaccTxConf;<br>
+ =A0 =A0 =A0 unsigned int ipaccRxConf;<br>
+ =A0 =A0 =A0 unsigned int ipaccRxStat;<br>
+ =A0 =A0 =A0 unsigned int ipaccRxStatSum;<br>
+<br>
+ =A0 =A0 =A0 /*Multicast address resolution table */<br>
+ =A0 =A0 =A0 unsigned int hash_table[64];<br>
+<br>
+ =A0 =A0 =A0 /*Registers 0 to 31 within PHY device 0/1 */<br>
+ =A0 =A0 =A0 struct alt_tse_mdio mdio_phy0;<br>
+ =A0 =A0 =A0 struct alt_tse_mdio mdio_phy1;<br>
+<br>
+ =A0 =A0 =A0 /*4 Supplemental MAC Addresses */<br>
+ =A0 =A0 =A0 unsigned int supp_mac_addr_0_0;<br>
+ =A0 =A0 =A0 unsigned int supp_mac_addr_0_1;<br>
+ =A0 =A0 =A0 unsigned int supp_mac_addr_1_0;<br>
+ =A0 =A0 =A0 unsigned int supp_mac_addr_1_1;<br>
+ =A0 =A0 =A0 unsigned int supp_mac_addr_2_0;<br>
+ =A0 =A0 =A0 unsigned int supp_mac_addr_2_1;<br>
+ =A0 =A0 =A0 unsigned int supp_mac_addr_3_0;<br>
+ =A0 =A0 =A0 unsigned int supp_mac_addr_3_1;<br>
+<br>
+ =A0 =A0 =A0 unsigned int reservedx320[56];<br>
+};<br>
+<br>
+struct altera_tse_priv {<br>
+ =A0 =A0 =A0 struct alt_tse_mac *mac_dev;<br>
+ =A0 =A0 =A0 struct alt_sgdma_registers *sgdma_rx;<br>
+ =A0 =A0 =A0 struct alt_sgdma_registers *sgdma_tx;<br>
+ =A0 =A0 =A0 unsigned int rx_sgdma_irq;<br>
+ =A0 =A0 =A0 unsigned int tx_sgdma_irq;<br>
+ =A0 =A0 =A0 unsigned int has_descriptor_mem;<br>
+ =A0 =A0 =A0 unsigned int descriptor_mem_base;<br>
+ =A0 =A0 =A0 unsigned int descriptor_mem_size;<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *rx_desc;<br>
+ =A0 =A0 =A0 struct alt_sgdma_descriptor *tx_desc;<br>
+ =A0 =A0 =A0 struct mii_device *miidev;<br>
+};<br>
+<br>
+#endif /* _ALTERA_TSE_H_ */<br>
<font color=3D"#888888">--<br>
1.7.0.4<br>
<br>
</font></blockquote></div><br><div>Hello,</div><div><br></div><div>Did you =
have time to check this one ? Should I review it ?</div><div><br></div><div=
>Thanks,</div><div>Franck.</div>

--0015174c1c1206566a04a1eb3f00--


--===============1020401736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1020401736==--
