Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLll-0002Pg-1v
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id w7so651272plz.1
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:12 -0700
Message-Id: <20190522073414.9308-17-andrew.smirnov@gmail.com>
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
Subject: [PATCH 16/18] usb: host: ehci: Treat ehci->qh_list as an array
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since ehci->qh_list is an array, convert the code to use
ehci->qh_list[0] to access its first element to make things a bit more
clear. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 11c34d8a2..bd033c23c 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -839,13 +839,14 @@ static int ehci_init(struct usb_host *host)
 			return ret;
 	}
 
-	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
-	ehci->qh_list->qh_endpt1 = cpu_to_hc32(QH_ENDPT1_H(1) |
-					       QH_ENDPT1_EPS(USB_SPEED_HIGH));
-	ehci->qh_list->qh_curtd = cpu_to_hc32(QT_NEXT_TERMINATE);
-	ehci->qh_list->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
-	ehci->qh_list->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
-	ehci->qh_list->qt_token = cpu_to_hc32(QT_TOKEN_STATUS_HALTED);
+	ehci->qh_list[0].qh_link = cpu_to_hc32((uint32_t)&ehci->qh_list[0] |
+					       QH_LINK_TYPE_QH);
+	ehci->qh_list[0].qh_endpt1 = cpu_to_hc32(QH_ENDPT1_H(1) |
+						 QH_ENDPT1_EPS(USB_SPEED_HIGH));
+	ehci->qh_list[0].qh_curtd = cpu_to_hc32(QT_NEXT_TERMINATE);
+	ehci->qh_list[0].qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
+	ehci->qh_list[0].qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
+	ehci->qh_list[0].qt_token = cpu_to_hc32(QT_TOKEN_STATUS_HALTED);
 
 	/* Set async. queue head pointer. */
 	ehci_writel(&ehci->hcor->or_asynclistaddr, (uint32_t)ehci->qh_list);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
