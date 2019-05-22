Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlk-0002OL-64
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:47 +0000
Received: by mail-pl1-x642.google.com with SMTP id c5so636598pll.11
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:11 -0700
Message-Id: <20190522073414.9308-16-andrew.smirnov@gmail.com>
In-Reply-To: <20190522073414.9308-1-andrew.smirnov@gmail.com>
References: <20190522073414.9308-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/18] usb: host: ehci: Drop explicit memset() in ehci_init()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Memory allocated by dma_alloc_coherent() is already zeroed out,
ehci->qh_list[0] never changes during the operation of the driver and
ehci->qh_list[1] will be explicitly initialized by ehci_submit_async()
so this additional memset() shouldn't be necessary.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 050a3166e..11c34d8a2 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -839,8 +839,6 @@ static int ehci_init(struct usb_host *host)
 			return ret;
 	}
 
-	memset(ehci->qh_list, 0, sizeof(struct QH) * NUM_TD);
-
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 	ehci->qh_list->qh_endpt1 = cpu_to_hc32(QH_ENDPT1_H(1) |
 					       QH_ENDPT1_EPS(USB_SPEED_HIGH));
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
