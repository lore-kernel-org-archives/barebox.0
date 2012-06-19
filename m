Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sgxff-00056C-6y
 for barebox@lists.infradead.org; Tue, 19 Jun 2012 12:36:35 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 19 Jun 2012 14:36:25 +0200
Message-Id: <1340109391-22794-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 0/6] fix dma memory allocations, add dma_alloc/dma_free
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

Hello,

on ARM using dfu mode we've seen problems with dma memory allocations.
Some drivers use dma_inv_range on allocated buffers, which corrupts memory
around the buffer, it it's not aligned to cache lines. This series
introduces: dma_alloc() and dma_free() that allocate memory aligned to
cache lines. This is 64 bytes on ARM (just to be sure) and
DCACHE_LINE_SIZE on nios2. All other arch do a transparent xmalloc.

Feel free to add the appropriate alignment for your architecture to
"include/asm/dma.h"

regards, Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
