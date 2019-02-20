Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwOCP-0006KZ-Ly
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 09:29:55 +0000
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
 <20190220072930.14300-3-andrew.smirnov@gmail.com>
From: Yann Sionneau <ysionneau@kalray.eu>
Message-ID: <f18cf7da-6ca0-d3b6-0a77-9da7bef39276@kalray.eu>
Date: Wed, 20 Feb 2019 10:29:49 +0100
MIME-Version: 1.0
In-Reply-To: <20190220072930.14300-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 02/25] usb: xhci-hcd: Do not zero out DMA coherent memory
To: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

I'm not sure dma_alloc_coherent() should return zeroed out memory.

I'm pretty sure it does not.

mips arch seems to memset it to 0, but not all arch do that.

On 2/20/19 8:29 AM, Andrey Smirnov wrote:
> Memory returned by dma_alloc_coherent() should already be zeroed
> out, so there's no need to do this explicitly.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>   drivers/usb/host/xhci-hcd.c | 2 --
>   1 file changed, 2 deletions(-)
>
> diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
> index 7cfd74de4..7106a5637 100644
> --- a/drivers/usb/host/xhci-hcd.c
> +++ b/drivers/usb/host/xhci-hcd.c
> @@ -445,7 +445,6 @@ static struct xhci_virtual_device *xhci_alloc_virtdev(struct xhci_hcd *xhci,
>   
>   	vdev->dma_size = sz_ictx + sz_dctx;
>   	p = vdev->dma = dma_alloc_coherent(vdev->dma_size, DMA_ADDRESS_BROKEN);
> -	memset(vdev->dma, 0, vdev->dma_size);
>   
>   	vdev->out_ctx = p; p += sz_dctx;
>   	vdev->in_ctx = p; p += sz_ictx;
> @@ -1225,7 +1224,6 @@ static void xhci_dma_alloc(struct xhci_hcd *xhci)
>   	xhci->dma_size += num_ep * sz_ep;
>   
>   	p = xhci->dma = dma_alloc_coherent(xhci->dma_size, DMA_ADDRESS_BROKEN);
> -	memset(xhci->dma, 0, xhci->dma_size);
>   
>   	xhci->sp = p; p += sz_sp;
>   	xhci->dcbaa = p; p += sz_dca;

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
