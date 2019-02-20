Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwX0o-0001Yc-RL
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 18:54:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id w2so12645784wrt.11
 for <barebox@lists.infradead.org>; Wed, 20 Feb 2019 10:54:30 -0800 (PST)
MIME-Version: 1.0
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
 <20190220072930.14300-3-andrew.smirnov@gmail.com>
 <f18cf7da-6ca0-d3b6-0a77-9da7bef39276@kalray.eu>
In-Reply-To: <f18cf7da-6ca0-d3b6-0a77-9da7bef39276@kalray.eu>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 20 Feb 2019 10:54:17 -0800
Message-ID: <CAHQ1cqEPFtjtsxb-7BaMcNPMvwT5O+MXW7YRcHD1PB-OAoVfHA@mail.gmail.com>
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
Subject: Re: [PATCH 02/25] usb: xhci-hcd: Do not zero out DMA coherent memory
To: Yann Sionneau <ysionneau@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Feb 20, 2019 at 1:29 AM Yann Sionneau <ysionneau@kalray.eu> wrote:
>
> I'm not sure dma_alloc_coherent() should return zeroed out memory.
>
> I'm pretty sure it does not.
>
> mips arch seems to memset it to 0, but not all arch do that.
>

It is definitely the semantics in latest kernel code, see e.g. here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?h=v5.0-rc7&id=dfd32cad146e3624970eee9329e99d2c6ef751b3

As for Barebox, currently there are three architectures that select
HAS_DMA to indicate that they implement said DMA functions: MIPS, ARM
and ARM64. As you mentioned before MIPS already does the right thing
and a series to do the same on ARM/ARM64 was recently merged into
"next" as well, specifically this patch:

https://git.pengutronix.de/cgit/barebox/commit/arch/arm/cpu/mmu-common.c?h=next&id=7179471fd7651e8ddd7758d2c3c94928421e5493

I think this should cover all of the bases as far as xHCI is concerned.

Having looked at it againg, the only two "non-zeroing" cases that I
can see in the codebase are:

1. Nios II which, AFAICT, only uses DMA functions in
drivers/net/altera_tse.c. Since it doesn't select HAS_DMA and is
pretty self-contained, I don't think there's any reason to worry about
leaving it as it is.

2. No MMU case on ARM/ARM64, I doubt there are many users of that
combination, but it is definitely something that should be fixed. I'll
submit a separate series for that.

Thanks,
Andrey Smirnov

> On 2/20/19 8:29 AM, Andrey Smirnov wrote:
> > Memory returned by dma_alloc_coherent() should already be zeroed
> > out, so there's no need to do this explicitly.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >   drivers/usb/host/xhci-hcd.c | 2 --
> >   1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
> > index 7cfd74de4..7106a5637 100644
> > --- a/drivers/usb/host/xhci-hcd.c
> > +++ b/drivers/usb/host/xhci-hcd.c
> > @@ -445,7 +445,6 @@ static struct xhci_virtual_device *xhci_alloc_virtdev(struct xhci_hcd *xhci,
> >
> >       vdev->dma_size = sz_ictx + sz_dctx;
> >       p = vdev->dma = dma_alloc_coherent(vdev->dma_size, DMA_ADDRESS_BROKEN);
> > -     memset(vdev->dma, 0, vdev->dma_size);
> >
> >       vdev->out_ctx = p; p += sz_dctx;
> >       vdev->in_ctx = p; p += sz_ictx;
> > @@ -1225,7 +1224,6 @@ static void xhci_dma_alloc(struct xhci_hcd *xhci)
> >       xhci->dma_size += num_ep * sz_ep;
> >
> >       p = xhci->dma = dma_alloc_coherent(xhci->dma_size, DMA_ADDRESS_BROKEN);
> > -     memset(xhci->dma, 0, xhci->dma_size);
> >
> >       xhci->sp = p; p += sz_sp;
> >       xhci->dcbaa = p; p += sz_dca;

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
