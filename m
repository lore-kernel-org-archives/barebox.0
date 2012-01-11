Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkyO8-0004cU-Pk
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 13:38:50 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1B327100023A
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 14:40:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Jan 2012 14:31:56 +0100
Message-Id: <1326288716-1342-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120111132914.GB958@game.jcrosoft.org>
References: <20120111132914.GB958@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/6] driver: switch driver_d name to const char*
To: barebox@lists.infradead.org

this will allow to save 200 bytes on a9g20 and 180 bytes on ti xlaoder

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/driver.h  |    2 +-
 include/usb/usb.h |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 1751d3c..1b8b16d 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -105,7 +105,7 @@ struct device_d {
 struct driver_d {
 	/*! The name of this driver. Used to match to
 	 * the corresponding device. */
-	char name[MAX_DRIVER_NAME];
+	const char *name;
 
 	struct list_head list;
 
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 08fd1a1..a61a008 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -187,7 +187,7 @@ struct usb_device {
 struct usb_device_id;
 
 struct usb_driver {
-	char	*name;
+	const char	*name;
 	int     (*probe) (struct usb_device *, const struct usb_device_id *);
 	void    (*disconnect)(struct usb_device *);
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
