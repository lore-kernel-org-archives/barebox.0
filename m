Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y8S3K-0005Nr-Qr
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 11:12:05 +0000
Message-ID: <1420542694.2333.11.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 06 Jan 2015 12:11:34 +0100
In-Reply-To: <20150106135611.e7d20dffcf2f94ee0ccfbdaa@gmail.com>
References: <1420405745-4408-1-git-send-email-dev@lynxeye.de>
 <20150105201933.75e448ef02ad9e9e31ac6663@gmail.com>
 <1420479449.2221.3.camel@lynxeye.de>
 <20150106135611.e7d20dffcf2f94ee0ccfbdaa@gmail.com>
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
Subject: Re: [PATCH] net: rtl8169: remove unnecessary cache maintenance
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Am Dienstag, den 06.01.2015, 13:56 +0300 schrieb Antony Pavlov:
> On Mon, 05 Jan 2015 18:37:29 +0100
> Lucas Stach <dev@lynxeye.de> wrote:
> 
> > Am Montag, den 05.01.2015, 20:19 +0300 schrieb Antony Pavlov:
> > > On Sun,  4 Jan 2015 22:09:05 +0100
> > > Lucas Stach <dev@lynxeye.de> wrote:
> > > 
> > > I suppose that this patch can make problems on MIPS with explicid cache handling.
> > > 
> > How would it?
> > This driver is ARM only for now (as we are using ARM MMU functions to
> > flush buffers) until someone gets around to properly implement generic
> > dma sync ops.
> 
> Anyway it is reasonable to add 'depends on ARM' to 'config DRIVER_NET_RTL8169'
> record in drivers/net/Kconfig.
> 
Yes, will do.

> > But even then MIPS knows about uncached memory types which is exactly
> > what should be returned for a dma coherent memory allocation.
> 
> Alas! We can't just add 'volatile' modifier to make pointer uncached on MIPS in general case.

This is not how it works. The memory for the buffer descriptors isn't
general malloc memory, but allocated with dma_alloc_coherent, which
makes sure the memory is uncached. This works on both ARM and MIPS.

Regards,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
