Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgTIb-0007q1-PH
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 07:24:22 +0000
Message-ID: <1428650609.2182.7.camel@lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 10 Apr 2015 09:23:29 +0200
In-Reply-To: <1428627714-17077-4-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627714-17077-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428627714-17077-4-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 3/4] net: mvneta: Remove unnecessary DMA ops
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Am Freitag, den 10.04.2015, 03:01 +0200 schrieb Sebastian Hesselbarth:
> Commit a76c62f80d95860e6c5904ab5cb91667c43f61eb
>  ("net: mvneta: convert to streaming DMA ops")
> converted explicit ARM cache flushes to streaming DMA calls.
> 
> However, in mvneta_send() we are not interested in the sent data buffer
> anymore. Also, in mvneta_recv() the device does not care about received
> data buffer.
> 
> Remove unnecessary dma_sync_single_for_cpu() in mvneta_send() and
> dma_sync_single_for_device() in mvneta_recv().
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

NACK: see below.

> ---
> Cc: barebox@lists.infradead.org
> Cc: Lucas Stach <dev@lynxeye.de>
> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> ---
>  drivers/net/mvneta.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/net/mvneta.c b/drivers/net/mvneta.c
> index 3be2ec531fb1..e1c7f15210e4 100644
> --- a/drivers/net/mvneta.c
> +++ b/drivers/net/mvneta.c
> @@ -409,7 +409,6 @@ static int mvneta_send(struct eth_device *edev, void *data, int len)
>  	 * the Tx port status register (PTXS).
>  	 */
>  	ret = wait_on_timeout(TRANSFER_TIMEOUT, !mvneta_pending_tx(priv));
> -	dma_sync_single_for_cpu((unsigned long)data, len, DMA_TO_DEVICE);

This makes sure the CPU has a consistent view of memory. If something
got speculatively loaded into the cache you will write out invalid data
on the next send.

>  	if (ret) {
>  		dev_err(&edev->dev, "transmit timeout\n");
>  		return ret;
> @@ -468,9 +467,6 @@ static int mvneta_recv(struct eth_device *edev)
>  			  rxdesc->data_size - MVNETA_MH_SIZE);
>  	ret = 0;
>  
> -	dma_sync_single_for_device((unsigned long)rxdesc->buf_phys_addr,
> -				   ALIGN(PKTSIZE, 8), DMA_FROM_DEVICE);
> -
The buffer is reused for the next receive operation. This isn't syncing
the data to the device, but is actually a cache invalidate to make sure
there is no pending cache writeback that may corrupt your received data.

>  recv_err:
>  	/* reset this and get next rx descriptor*/
>  	rxdesc->data_size = 0;

The DMA API has a notion of buffer ownership. Accessing a buffer without
transferring the ownership to the appropriate entity (cpu or device) is
illegal. Using the DMA API in a non balanced manner is skipping the
ownership transfer.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
