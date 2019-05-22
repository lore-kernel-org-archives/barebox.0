Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLli-0002Lh-14
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:40 +0000
Received: by mail-pg1-x543.google.com with SMTP id z3so868020pgp.8
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:09 -0700
Message-Id: <20190522073414.9308-14-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/18] usb: host: ehci: Add a comment explaing IOC setting for
 data
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add a comment explaining the rationale behinde QT_TOKEN_IOC(req ==
NULL).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index f0d899e82..a6f497925 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -362,6 +362,15 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 		ret = ehci_prepare_qtd(ehci->dev,
 				       td, QT_TOKEN_DT(toggle) |
+				       /*
+					* We only want this qTD to
+					* generate an interrupt if
+					* this is a BULK
+					* request. Otherwise, we'll
+					* rely on following status
+					* stage qTD's IOC to notify us
+					* that transfer is complete
+					*/
 				       QT_TOKEN_IOC(req == NULL) |
 				       QT_TOKEN_PID(pid),
 				       buffer, length,
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
