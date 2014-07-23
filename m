Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22c.google.com ([2a00:1450:400c:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9wxn-0006HF-HH
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 13:52:12 +0000
Received: by mail-wg0-f44.google.com with SMTP id m15so1204942wgh.3
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 06:51:49 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 15:51:44 +0200
Message-Id: <1406123512-26489-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 03/10] USB: fixup usb_hub_descriptor length name
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

All other descriptors have their length field named bLength, except
imported usb_hub_descriptor from Linux uses bDescLength. Adjust the
name to match the others.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 include/usb/ch11.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/usb/ch11.h b/include/usb/ch11.h
index 924a9ea64c5e..93f891aea753 100644
--- a/include/usb/ch11.h
+++ b/include/usb/ch11.h
@@ -232,7 +232,7 @@ struct usb_hub_status {
 #define USB_HUB_PR_SS		3 /* Super speed hub */
 
 struct usb_hub_descriptor {
-	__u8  bDescLength;
+	__u8  bLength;
 	__u8  bDescriptorType;
 	__u8  bNbrPorts;
 	__le16 wHubCharacteristics;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
