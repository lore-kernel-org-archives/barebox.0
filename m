Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLUB-0007fo-OX
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:58:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:58:18 +0200
Message-Id: <1311839900-10389-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] Fix memory corruption bug in dev_id()
To: barebox@lists.infradead.org

The size of the static buffer in dev_id was only 8 bytes
(sizeof(long) * 2). This is completely bogus, so give
the buffer a sane length and also make sure we don't
write beyond the buffer using snprintf.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index b5166c8..bb6df3c 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -284,9 +284,9 @@ EXPORT_SYMBOL(dummy_probe);
 
 const char *dev_id(const struct device_d *dev)
 {
-	static char buf[sizeof(unsigned long) * 2];
+	static char buf[MAX_DRIVER_NAME + 16];
 
-	sprintf(buf, FORMAT_DRIVER_MANE_ID, dev->name, dev->id);
+	snprintf(buf, sizeof(buf), FORMAT_DRIVER_MANE_ID, dev->name, dev->id);
 
 	return buf;
 }
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
