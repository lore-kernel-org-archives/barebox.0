Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLUB-0007fp-Ou
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:58:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:58:19 +0200
Message-Id: <1311839900-10389-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311839900-10389-1-git-send-email-s.hauer@pengutronix.de>
References: <1311839900-10389-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] fix typo
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |    2 +-
 include/driver.h      |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index bb6df3c..78e9ea9 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -286,7 +286,7 @@ const char *dev_id(const struct device_d *dev)
 {
 	static char buf[MAX_DRIVER_NAME + 16];
 
-	snprintf(buf, sizeof(buf), FORMAT_DRIVER_MANE_ID, dev->name, dev->id);
+	snprintf(buf, sizeof(buf), FORMAT_DRIVER_NAME_ID, dev->name, dev->id);
 
 	return buf;
 }
diff --git a/include/driver.h b/include/driver.h
index af34803..9a0b102 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -27,7 +27,7 @@
 #include <linux/ioport.h>
 
 #define MAX_DRIVER_NAME		32
-#define FORMAT_DRIVER_MANE_ID	"%s%d"
+#define FORMAT_DRIVER_NAME_ID	"%s%d"
 
 #include <param.h>
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
