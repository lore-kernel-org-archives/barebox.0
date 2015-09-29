Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZgoeA-0005D1-47
 for barebox@lists.infradead.org; Tue, 29 Sep 2015 06:44:18 +0000
Date: Tue, 29 Sep 2015 08:43:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150929064355.GM7858@pengutronix.de>
References: <1443111628-12758-1-git-send-email-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443111628-12758-1-git-send-email-pmamonov@gmail.com>
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
Subject: Re: [PATCH v7 0/5] input: add usb keyboard driver
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 24, 2015 at 07:20:23PM +0300, Peter Mamonov wrote:
> Changes since v6:
> 	common: clock: fix formatting
> 	usb: ehci-hcd: ehci_reentrance_detect() is a function
> 	usb: ehci-hcd: call dma_sync_single_for_device() when appropriate
> 	input: usb_kbd: use dma_alloc instead of dma_alloc_coherent
> 
> Peter Mamonov (5):
> 	common: clock: introduce mdelay_non_interruptible()
> 	usb: ehci-hcd: port periodic transactions
> 	usb: ehci-hcd: detect re-entrance
> 	usb: ehci-hcd: use mdelay_non_interruptible()
> 	input: port usb keyboard driver from the u-boot

Applied, thanks.

I gave it some tests on my Efika Smartbook aswell. Works like a charm
there.

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
