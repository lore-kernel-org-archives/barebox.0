Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5C6-0004Q8-Ow
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:54 +0100
Message-Id: <20200325123111.9612-8-s.hauer@pengutronix.de>
In-Reply-To: <20200325123111.9612-1-s.hauer@pengutronix.de>
References: <20200325123111.9612-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/24] usb: Make driver_info const
To: Barebox List <barebox@lists.infradead.org>

driver_info shouldn't be changed, make it const.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/usb/usb.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/usb/usb.h b/include/usb/usb.h
index 95dedfd5b7..a9c34cdde4 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -382,7 +382,7 @@ struct usb_device_id {
 	__u8		bInterfaceSubClass;
 	__u8		bInterfaceProtocol;
 
-	void *driver_info;
+	const void *driver_info;
 };
 
 #define USB_DEVICE_ID_MATCH_PRODUCT         0x0002
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
