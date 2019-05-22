Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLle-0002GX-C4
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id g9so851115pfo.11
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:30 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:05 -0700
Message-Id: <20190522073414.9308-10-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/18] usb: host: ehci: Initialize qTDs explicitly
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert the code to initialize only used qTDs as well as initializing
all of the fields explicitly without doing a wholesale memset() first.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 6742a67de..2b890cbc9 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -206,6 +206,9 @@ static int ehci_td_buffer(struct qTD *td, dma_addr_t addr, size_t sz)
 		return -ENOMEM;
 	}
 
+	for (idx++; idx < buffer_count; idx++)
+		td->qt_buffer[idx] = 0;
+
 	return 0;
 }
 
@@ -233,6 +236,8 @@ static int ehci_prepare_qtd(struct device_d *dev,
 		ret = ehci_td_buffer(td, *buffer_dma, length);
 		if (ret)
 			return ret;
+	} else {
+		memset(td->qt_buffer, 0, sizeof(td->qt_buffer));
 	}
 
 	return 0;
@@ -281,7 +286,6 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		      le16_to_cpu(req->index));
 
 	memset(&ehci->qh_list[1], 0, sizeof(struct QH));
-	memset(ehci->td, 0, sizeof(struct qTD) * NUM_TD);
 
 	qh = &ehci->qh_list[1];
 	qh->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
