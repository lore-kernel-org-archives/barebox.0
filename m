Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShJXY-0002FY-Ug
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 11:57:41 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 20 Jun 2012 13:57:29 +0200
Message-Id: <1340193455-2229-1-git-send-email-mkl@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/6] fix dma memory allocations, add dma_alloc/dma_free
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

on ARM using dfu mode we've seen problems with dma memory allocations.
Some drivers use dma_inv_range on allocated buffers, which corrupts memory
around the buffer, it it's not aligned to cache lines. This series
introduces: dma_alloc() and dma_free() that allocate memory aligned to
cache lines. This is 64 bytes on ARM (just to be sure) and
DCACHE_LINE_SIZE on nios2. All other arch do a transparent xmalloc.

Feel free to add the appropriate alignment for your architecture to
"include/asm/dma.h". If you do so add a

    #define dma_alloc dma_alloc
    #define dma_free dma_free

to your "asm/dma.h" so that the generic funtion won't be used.

changes since v1:
- align size to cache line size, too (tnx Sascha)
- provide a generic "include/dma.h" which implements generic fallbacks
  using ifndef dma_{alloc,free} magic.
- add includes to arm and nions implementations

regards, Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
