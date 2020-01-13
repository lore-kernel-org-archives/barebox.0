Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqu9v-0006bt-LB
 for barebox@lists.infradead.org; Mon, 13 Jan 2020 07:29:13 +0000
References: <20200109072855.14154-1-antonynpavlov@gmail.com>
 <20200109072855.14154-4-antonynpavlov@gmail.com>
From: Oleksij Rempel <o.rempel@pengutronix.de>
Message-ID: <0e202cc5-a5af-309e-c55c-5c508592fa9d@pengutronix.de>
Date: Mon, 13 Jan 2020 08:29:09 +0100
MIME-Version: 1.0
In-Reply-To: <20200109072855.14154-4-antonynpavlov@gmail.com>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 3/5] net: e1000: make it work on MIPS
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Hm... how was it working before? We was just lucky to have physical address equal to 
virtual. I would say, it is not really MIPS only fix.

Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

On 09.01.20 08:28, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>   drivers/net/e1000/e1000.h | 2 ++
>   drivers/net/e1000/main.c  | 8 ++++----
>   2 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/e1000/e1000.h b/drivers/net/e1000/e1000.h
> index 52ad3d4cdb..d26e6dcc02 100644
> --- a/drivers/net/e1000/e1000.h
> +++ b/drivers/net/e1000/e1000.h
> @@ -2180,7 +2180,9 @@ struct e1000_hw {
>   	struct mii_bus miibus;
>   
>   	struct e1000_tx_desc *tx_base;
> +	dma_addr_t tx_base_phys;
>   	struct e1000_rx_desc *rx_base;
> +	dma_addr_t rx_base_phys;
>   	unsigned char *packet;
>   	dma_addr_t packet_dma;
>   
> diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
> index f67c5d867b..69b1516640 100644
> --- a/drivers/net/e1000/main.c
> +++ b/drivers/net/e1000/main.c
> @@ -3232,7 +3232,7 @@ static void e1000_configure_tx(struct e1000_hw *hw)
>   	unsigned long tctl;
>   	unsigned long tipg, tarc;
>   	uint32_t ipgr1, ipgr2;
> -	const unsigned long tx_base = (unsigned long)hw->tx_base;
> +	const unsigned long tx_base = (unsigned long)hw->tx_base_phys;
>   
>   	e1000_write_reg(hw, E1000_TDBAL, lower_32_bits(tx_base));
>   	e1000_write_reg(hw, E1000_TDBAH, upper_32_bits(tx_base));
> @@ -3351,7 +3351,7 @@ static void e1000_setup_rctl(struct e1000_hw *hw)
>   static void e1000_configure_rx(struct e1000_hw *hw)
>   {
>   	unsigned long rctl, ctrl_ext;
> -	const unsigned long rx_base = (unsigned long)hw->rx_base;
> +	const unsigned long rx_base = (unsigned long)hw->rx_base_phys;
>   
>   	hw->rx_tail = 0;
>   	/* make sure receives are disabled while setting up the descriptors */
> @@ -3564,8 +3564,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>   
>   	hw = xzalloc(sizeof(*hw));
>   
> -	hw->tx_base = dma_alloc_coherent(16 * sizeof(*hw->tx_base), DMA_ADDRESS_BROKEN);
> -	hw->rx_base = dma_alloc_coherent(16 * sizeof(*hw->rx_base), DMA_ADDRESS_BROKEN);
> +	hw->tx_base = dma_alloc_coherent(16 * sizeof(*hw->tx_base), &hw->tx_base_phys);
> +	hw->rx_base = dma_alloc_coherent(16 * sizeof(*hw->rx_base), &hw->rx_base_phys);
>   
>   	edev = &hw->edev;
>   
> 

Kind regards,
Oleksij Rempel

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
