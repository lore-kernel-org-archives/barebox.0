Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTY2C-0003eV-2G
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 12:04:09 +0000
Date: Thu, 24 Nov 2011 13:04:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111124120400.GC27267@pengutronix.de>
References: <87ipm9yd88.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ipm9yd88.fsf@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: ARM, MMU and IO space mapping
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Thu, Nov 24, 2011 at 12:24:55PM +0100, Robert Jarzmik wrote:
> Hi,
> 
> I was wandering in the MMU arm implementation and I'm wondering if anybody is
> using it and accessing some IO mapped space.
> 
> My trouble is that mmu_init() only maps the RAM space (and with cacheable memory
> type). For the PXA, I would need a non-cacheable non-bufferable memory type,
> which could be allocated either :
>  - through dev_request_mem_region(), which would be amended for the MMU case
>  - or through a dedicated ioremap() function, which will be empty in no MMU case
> 
> The current issue I'm facing is that when I launch barebox with MMU enabled, the
> UDC device doesn't work (I presume because the IO space is not mapped into the
> MMU). This prevents me from using barebox in MMU context (and therefore I have
> no D-Cache).
> 
> Would the evolution of dev_request_mem_region() be acceptable, or should I
> consider another way ?

The generic arm code sets up a flat 1:1 noncached mapping. Then it
remaps the SDRAM cacheable/bufferable. So a normal driver can just
access the registers without worrying about ioremap() since they are
outside of the SDRAM. What you need in your udc driver is either
dma_alloc_coherent which allocates a chunk of SDRAM and remaps it
uncacheable/unbufferable or you have to sync manually using
dma_clean_range/dma_flush_range. See drivers/usb/gadget/fsl_udc.c or
drivers/net/fec_imx.c for examples.

I remember Marc had some trouble with the mmu/cache implementation on
PXA. I don't know the details though. Maybe you have to dig through
the manuals/kernel code to find out the differences between the normal
arm v5 and pxa.

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
