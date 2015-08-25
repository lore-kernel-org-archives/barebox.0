Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUBWr-0003DM-UD
 for barebox@lists.infradead.org; Tue, 25 Aug 2015 10:32:34 +0000
Received: by labia3 with SMTP id ia3so30704047lab.3
 for <barebox@lists.infradead.org>; Tue, 25 Aug 2015 03:32:11 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 25 Aug 2015 13:33:56 +0300
Message-Id: <1440498836-8650-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH] usb: ehci-hcd: initialize ehci->qh_list[] with zeros
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Without this initialization ehci->qh_list[0].qh_endpt2 is left uninitialized,
which causes problems with some EHCI host controllers.

Das u-boot uses the same strategy:

	static int ehci_common_init(struct ehci_ctrl *ctrl, uint tweaks)
	{
		...
		qh_list = &ctrl->qh_list;

		/* Set head of reclaim list */
		memset(qh_list, 0, sizeof(*qh_list));
		qh_list->qh_link = cpu_to_hc32((unsigned long)qh_list | QH_LINK_TYPE_QH);
		qh_list->qh_endpt1 = cpu_to_hc32(QH_ENDPT1_H(1) |
							QH_ENDPT1_EPS(USB_SPEED_HIGH));
		qh_list->qh_overlay.qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
		qh_list->qh_overlay.qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
		qh_list->qh_overlay.qt_token =
				cpu_to_hc32(QT_TOKEN_STATUS(QT_TOKEN_STATUS_HALTED));
		...
	}

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index a9039c6..58c22db 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -772,6 +772,8 @@ static int ehci_init(struct usb_host *host)
 			return ret;
 	}
 
+	memset(ehci->qh_list, 0, sizeof(struct QH) * NUM_TD);
+
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 	ehci->qh_list->qh_endpt1 = cpu_to_hc32((1 << 15) | (USB_SPEED_HIGH << 12));
 	ehci->qh_list->qh_curtd = cpu_to_hc32(QT_NEXT_TERMINATE);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
