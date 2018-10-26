Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyV6-0000mK-QS
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:33:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2018 11:33:33 +0200
Message-Id: <20181026093338.22751-4-s.hauer@pengutronix.de>
In-Reply-To: <20181026093338.22751-1-s.hauer@pengutronix.de>
References: <20181026093338.22751-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] usb: Add usb_unregister_host()
To: Barebox List <barebox@lists.infradead.org>

We have usb_register_host() which puts a new host on the list
of hosts we should also have the opposite which removes the
host from the list again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 5 +++++
 include/usb/usb.h      | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 70ded6ded1..1e48c1d0a8 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -102,6 +102,11 @@ int usb_register_host(struct usb_host *host)
 	return 0;
 }
 
+void usb_unregister_host(struct usb_host *host)
+{
+	list_del(&host->list);
+}
+
 /**
  * set configuration number to configuration
  */
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 9aab06c87c..eb2eeb8db3 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -157,6 +157,7 @@ struct usb_host {
 };
 
 int usb_register_host(struct usb_host *);
+void usb_unregister_host(struct usb_host *host);
 
 int usb_host_detect(struct usb_host *host);
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
