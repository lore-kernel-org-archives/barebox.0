Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKE-0002ka-DW
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:29:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id q17so11478497pfh.10
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:29:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:09 -0800
Message-Id: <20190220072930.14300-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/25] usb: xhci-hcd: Make sure to initialize xhci->rings_list
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make sure to initialize xhci->rings_list, otherwise any use of the
driver will result in a crash.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/xhci-hcd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/host/xhci-hcd.c b/drivers/usb/host/xhci-hcd.c
index a01f9fe38..cdce0d5ec 100644
--- a/drivers/usb/host/xhci-hcd.c
+++ b/drivers/usb/host/xhci-hcd.c
@@ -1470,6 +1470,7 @@ int xhci_register(struct device_d *dev, struct xhci_data *data)
 	xhci = xzalloc(sizeof(*xhci));
 	host = &xhci->host;
 	INIT_LIST_HEAD(&xhci->vdev_list);
+	INIT_LIST_HEAD(&xhci->rings_list);
 	xhci->dev = dev;
 	xhci->cap_regs = data->regs;
 	xhci->op_regs = (void __iomem *)xhci->cap_regs +
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
