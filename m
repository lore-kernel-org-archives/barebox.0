Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlW-00028X-9n
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:23 +0000
Received: by mail-pl1-x643.google.com with SMTP id f97so645922plb.5
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:33:56 -0700
Message-Id: <20190522073414.9308-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Subject: [PATCH 00/18] EHCI improvements
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is a number of improvements (or so I though) I made while
woring with USB on i.MX6. All of the patches are optional, so if some
of the changes don't seem like an improvmement they can be dropped.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (18):
  usb: host: ehci: Do not zero out DMA coherent memory
  usb: host: ehci: Share code to enable/disable async schedule
  usb: host: ehci: Use to USBSTS to wait for transfer completion
  usb: host: ehci: Replace magic number with macros
  usb: host: ehci: Drop unnecessary cleanup code
  usb: host: ehci: Introduce ehci_prepare_qtd()
  usb: host: ehci: Simplify qTD buffer synchronization
  usb: host: ehci: Simplify ehci_td_buffer()
  usb: host: ehci: Initialize qTDs explicitly
  usb: host: ehci: Simplify ehci_submit_async()'s epilogue
  usb: host: ehci: Drop needless assignments in ehci_submit_async()
  usb: host: ehci: Use bool to simplify ehci_submit_async()
  usb: host: ehci: Add a comment explaing IOC setting for data
  usb: host: ehci: Replace explicit printf() with dev_err()
  usb: host: ehci: Drop explicit memset() in ehci_init()
  usb: host: ehci: Treat ehci->qh_list as an array
  ush: host: ehci: Simplify QH initialization in ehci_submit_async()
  usb: host: ehci: Allocate only NUM_QH queue heads for qh_list

 drivers/usb/host/ehci-hcd.c | 377 +++++++++++++++++++-----------------
 drivers/usb/host/ehci.h     |  52 +++--
 2 files changed, 242 insertions(+), 187 deletions(-)

-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
