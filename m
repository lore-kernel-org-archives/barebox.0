Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqxWY-0006oY-9o
 for barebox@lists.infradead.org; Mon, 13 Jan 2020 11:04:47 +0000
Date: Mon, 13 Jan 2020 12:04:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200113110442.fhi6vodwirt5el2m@pengutronix.de>
References: <99c3d904-b27d-57ad-89ee-ee2510391618@data-modul.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99c3d904-b27d-57ad-89ee-ee2510391618@data-modul.com>
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
Subject: Re: barebox for iMX8MMini crashes while usb_rescan for USB type A
To: "Albert, Elmar" <EAlbert@data-modul.com>
Cc: andrew.smirnov@gmail.com, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Albert,

On Mon, Jan 13, 2020 at 07:54:54AM +0000, Albert, Elmar wrote:
> Hello everybody,
> 
> I'm working on a customer board based on an iMX8MMini using Barebox
> based on version 2019.05.0. We have problems to bring-up the USB with
> type A connector,
> we are not using type C as on the NXP EVK.
> 
> I added the iMX8MMini to the drivers/usb/imx/imx-usb-misc.c completely
> separated from the already implementation for the iMX7D.
> 
> When starting an usb_rescan using the usb command, barebox crashes with
> an exception. I updated the usb driver to version 2019.12.0, but get the
> same behaviour,
> it crashes with an exception:
> 
> DABT (current EL) exception (ESR 0x96000061) at 0x000000005ff4005c

The problem seems to be here that memset is called on non aligned memory
that is allocated with dma_alloc_coherent(). On ARM64 we have memset
implemented like this:

void *memset(void *dst, int c, __kernel_size_t size)
{
        if (likely(get_cr() & CR_M))
                return __arch_memset(dst, c, size);

        return __default_memset(dst, c, size);
}

As you found out __arch_memset() crashes in your case. The test
get_cr() & CR_M isn't quite correct here. We must test here how the page
is mapped, not if the MMU is enabled. This test might be too expensive
here, so that it's probably better to introduce and use memset_io here
which doesn't try this optimization.

Andrey, as you introduced this code, do you have any ideas to share what
we want to do here?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
