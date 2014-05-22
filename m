Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WnLPv-0001eb-0P
 for barebox@lists.infradead.org; Thu, 22 May 2014 05:19:47 +0000
Received: by mail-lb0-f172.google.com with SMTP id l4so2269518lbv.17
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 22:19:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 May 2014 09:19:12 +0400
Message-Id: <1400735952-6424-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1400735952-6424-1-git-send-email-antonynpavlov@gmail.com>
References: <1400735952-6424-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] usb: drop unused USB_UHCI_*_ID macros
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/usb/usb.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/usb/usb.h b/include/usb/usb.h
index b4ac4ba..6f5a351 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -219,10 +219,6 @@ int usb_register_host(struct usb_host *);
 
 int usb_host_detect(struct usb_host *host, int force);
 
-/* Defines */
-#define USB_UHCI_VEND_ID	0x8086
-#define USB_UHCI_DEV_ID		0x7112
-
 int usb_set_protocol(struct usb_device *dev, int ifnum, int protocol);
 int usb_set_idle(struct usb_device *dev, int ifnum, int duration,
 			int report_id);
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
