Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSiKU-0002gR-Rj
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 08:37:28 +0000
Date: Tue, 3 Mar 2015 09:37:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150303083704.GA10997@pengutronix.de>
References: <1425215842-6982-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425215842-6982-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 00/24] Phasing out direct usage of asm/mmu.h on ARM
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sun, Mar 01, 2015 at 02:16:58PM +0100, Lucas Stach wrote:
> This series introduces to Barebox the streaming DMA ops and implements
> them for the ARM architecture. This will make it a lot easier to
> get common cache maintenance operations for all architectures and in
> turn allows for wider reuse of driver across architectures.
> 
> I've tested this on a Tegra124 which is known to fall over in all sorts
> of funny ways if cache maintenance is broken. No odd behavior spotted.
> 
> The series is bisect-clean and I've compile tested it on some defconfigs,
> but please go wild and TEST. I'll take any complaints.
> 
> Changes since RFT:
> - rebased to current master
> - now compile tested on all ARM defconfigs
> - fixed a few compile errors by reordering stuff in patches
> - A few more words in commit logs

As discussed with Lucas personally:

The series breaks MIPS and NIOS2 support.

On ARM we assume that the address returned from dma_alloc_coherent
can be used as physical DMA address. This is not true on MIPS and NIOS2.
On MIPS and NIOS2 dma_alloc_coherent also returns the DMA address which
differs from the virtual address. This means most users of DMA memory
are broken on MIPS and NIOS2, only the drivers which use the MIPS/NIOS2
variant of dma_alloc_coherent work on these architectures.

The outcome is that we'll implement dma_alloc_coherent() for all
architectures which also returns the physical address:

void *dma_alloc_coherent(size_t len, dma_addr_t *handle);

For all the users which do not handle converting the virtual address
into a DMA address properly we'll add a

#define DMA_ADDRESS_BROKEN	NULL

define which can be passed as the handle pointer. This will allow us to
identify broken users easily and to fix them one by one.

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
