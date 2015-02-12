Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22d.google.com ([2a00:1450:400c:c00::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM2RQ-0001f9-LC
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 22:41:01 +0000
Received: by mail-wg0-f45.google.com with SMTP id k14so10128980wgh.4
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 14:40:38 -0800 (PST)
Message-ID: <54DD2BE3.1090101@gmail.com>
Date: Thu, 12 Feb 2015 23:40:35 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1423777200-22965-1-git-send-email-dev@lynxeye.de>
 <1423777200-22965-18-git-send-email-dev@lynxeye.de>
In-Reply-To: <1423777200-22965-18-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH RFT 17/24] net: orion-gbe: convert to streaming DMA ops
To: Lucas Stach <dev@lynxeye.de>, barebox@lists.infradead.org

On 12.02.2015 22:39, Lucas Stach wrote:

Lucas,

I really enjoy reading commit logs, but I cannot find any on this
one. ;) Mind adding a few words for the final patch set?

I'll give it a go on Dove and Kirkwood in the next few days, but be
aware that there is still no cache support on both anyway.

Sebastian

> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>   drivers/net/orion-gbe.c | 13 ++++++++-----
>   1 file changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/net/orion-gbe.c b/drivers/net/orion-gbe.c
> index ad1fc66..4235122 100644
> --- a/drivers/net/orion-gbe.c
> +++ b/drivers/net/orion-gbe.c
> @@ -33,7 +33,6 @@
>   #include <net.h>
>   #include <of_net.h>
>   #include <linux/sizes.h>
> -#include <asm/mmu.h>
>   #include <linux/clk.h>
>   #include <linux/err.h>
>   #include <linux/mbus.h>
> @@ -243,7 +242,7 @@ static int port_send(struct eth_device *edev, void *data, int len)
>   	int ret;
>
>   	/* flush transmit data */
> -	dma_flush_range((unsigned long)data, (unsigned long)data+len);
> +	dma_sync_single_for_device((unsigned long)data, len, DMA_TO_DEVICE);
>
>   	txdesc->cmd_sts = TXDESC_OWNED_BY_DMA;
>   	txdesc->cmd_sts |= TXDESC_FIRST | TXDESC_LAST;
> @@ -258,6 +257,7 @@ static int port_send(struct eth_device *edev, void *data, int len)
>   	/* wait for packet transmit completion */
>   	ret = wait_on_timeout(TRANSFER_TIMEOUT,
>   		      (readl(&txdesc->cmd_sts) & TXDESC_OWNED_BY_DMA) == 0);
> +	dma_sync_single_for_cpu((unsigned long)data, len, DMA_TO_DEVICE);
>   	if (ret) {
>   		dev_err(&edev->dev, "transmit timeout\n");
>   		return ret;
> @@ -301,12 +301,15 @@ static int port_recv(struct eth_device *edev)
>   	}
>
>   	/* invalidate current receive buffer */
> -	dma_inv_range((unsigned long)rxdesc->buf_ptr,
> -		      (unsigned long)rxdesc->buf_ptr +
> -		      ALIGN(PKTSIZE, 8));
> +	dma_sync_single_for_cpu((unsigned long)rxdesc->buf_ptr,
> +				ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
>
>   	/* received packet is padded with two null bytes */
>   	net_receive(edev, rxdesc->buf_ptr + 0x2, rxdesc->byte_cnt - 0x2);
> +
> +	dma_sync_single_for_device((unsigned long)rxdesc->buf_ptr,
> +				   ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
> +
>   	ret = 0;
>
>   recv_err:
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
