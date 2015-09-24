Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zf9EG-00062D-QF
 for barebox@lists.infradead.org; Thu, 24 Sep 2015 16:18:41 +0000
Received: by lacwc7 with SMTP id wc7so12333657lac.2
 for <barebox@lists.infradead.org>; Thu, 24 Sep 2015 09:18:18 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 24 Sep 2015 19:20:23 +0300
Message-Id: <1443111628-12758-1-git-send-email-pmamonov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v7 0/5] input: add usb keyboard driver
To: barebox@lists.infradead.org

Changes since v6:
	common: clock: fix formatting
	usb: ehci-hcd: ehci_reentrance_detect() is a function
	usb: ehci-hcd: call dma_sync_single_for_device() when appropriate
	input: usb_kbd: use dma_alloc instead of dma_alloc_coherent

Peter Mamonov (5):
	common: clock: introduce mdelay_non_interruptible()
	usb: ehci-hcd: port periodic transactions
	usb: ehci-hcd: detect re-entrance
	usb: ehci-hcd: use mdelay_non_interruptible()
	input: port usb keyboard driver from the u-boot

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
