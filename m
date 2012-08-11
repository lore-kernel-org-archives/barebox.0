Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo4.mail-out.ovh.net ([46.105.72.36]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0CX7-0007wW-Dc
 for barebox@lists.infradead.org; Sat, 11 Aug 2012 14:19:18 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id C217910507DB
 for <barebox@lists.infradead.org>; Sat, 11 Aug 2012 16:23:49 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 11 Aug 2012 16:19:20 +0200
Message-Id: <1344694760-17468-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1344694760-17468-1-git-send-email-plagnioj@jcrosoft.com>
References: <1344694760-17468-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] driver: set DEVICE_ID_DYNAMIC to -2 and DEVICE_ID_SINGLE
 to -1
To: barebox@lists.infradead.org

so we can have the same behaviour as in the kernel for id = -1

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/driver.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 0a8dc8e..0fecc7a 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -127,9 +127,9 @@ struct driver_d {
 #define RW_SIZE_MASK    0x7
 
 /* dynamically assign the next free id */
-#define DEVICE_ID_DYNAMIC	-1
+#define DEVICE_ID_DYNAMIC	-2
 /* do not use an id (only one device available */
-#define DEVICE_ID_SINGLE	-2
+#define DEVICE_ID_SINGLE	-1
 
 /* Register devices and drivers.
  */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
