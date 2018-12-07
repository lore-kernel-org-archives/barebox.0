Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gV9jG-0005BP-SL
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 06:35:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gV9j2-0000lv-7l
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:35:00 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <afa@pengutronix.de>) id 1gV9j2-00020M-0H
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:35:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Dec 2018 07:34:31 +0100
Message-Id: <20181207063433.7623-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/4] driver: left shift 1U instead of 1 in bitmask for
 consistency
To: barebox@lists.infradead.org

The first two masks use 1U already, so follow suit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/driver.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/driver.h b/include/driver.h
index 1b61f2066099..d509031f4980 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -489,8 +489,8 @@ int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 
 #define DEVFS_PARTITION_FIXED		(1U << 0)
 #define DEVFS_PARTITION_READONLY	(1U << 1)
-#define DEVFS_IS_CHARACTER_DEV		(1 << 3)
-#define DEVFS_PARTITION_FROM_TABLE	(1 << 4)
+#define DEVFS_IS_CHARACTER_DEV		(1U << 3)
+#define DEVFS_PARTITION_FROM_TABLE	(1U << 4)
 
 struct cdev *devfs_add_partition(const char *devname, loff_t offset,
 		loff_t size, unsigned int flags, const char *name);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
