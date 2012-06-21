Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1She6j-0002rB-KB
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:55:24 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1She6g-00006R-UF
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 11:55:18 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1She6g-0002Us-Sv
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 11:55:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Jun 2012 11:55:08 +0200
Message-Id: <1340272517-8972-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] more dma fixes
To: barebox@lists.infradead.org

Hi All,

Based on Marcs series here are some more fixes to the cache handling for
USB/ehci. As Marc already mentioned we have to make sure that buffers which
are used for DMA are cacheline aligned, otherwise we risk corrupting data
around the buffers.

Sascha

----------------------------------------------------------------
Sascha Hauer (9):
      USB core: allocate setup_packet using dma_alloc
      USB core: device descriptor using dma_alloc
      USB core: Allocate tmpbuf using dma_alloc
      USB ehci: Use dma coherent buffers for qh/qtd
      USB ehci: put fields of struct qTD directly into struct QH
      USB storage: use dma_alloc where appropriate
      block: use dma_alloc to allocate buffers
      partition: Use dma_alloc for allocating buffers
      USB ehci: rework cache handling

 common/block.c                  |    7 +--
 common/partitions.c             |    5 +-
 drivers/usb/core/usb.c          |  100 ++++++++++++++++++++----------------
 drivers/usb/host/ehci-hcd.c     |  108 ++++++++++++---------------------------
 drivers/usb/host/ehci.h         |   10 +++-
 drivers/usb/storage/transport.c |   11 ++--
 include/usb/usb.h               |    3 +-
 7 files changed, 115 insertions(+), 129 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
