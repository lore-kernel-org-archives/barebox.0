Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGjX-0005mw-1u
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 17:59:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 19:59:13 +0200
Message-Id: <1343757556-11897-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343757556-11897-1-git-send-email-s.hauer@pengutronix.de>
References: <1343757556-11897-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] nor m25p80: refactor chip erase
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/m25p80.c |   25 ++++++++++++-------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 13ce130..0f3bcd1 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -210,9 +210,10 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 
 	/* whole-chip erase? */
 	if (len == flash->size) {
-
 		if (erase_chip(flash))
 			return -EIO;
+		return 0;
+	}
 
 	/* REVISIT in some cases we could speed up erasing large regions
 	 * by using OPCODE_SE instead of OPCODE_BE_4K.  We may have set up
@@ -220,18 +221,16 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 	 */
 
 	/* "sector"-at-a-time erase */
-	} else {
-		while (len) {
-			if (ctrlc())
-				return -EINTR;
-			if (erase_sector(flash, addr))
-				return -EIO;
-
-			if (len <= flash->erasesize)
-				break;
-			addr += flash->erasesize;
-			len -= flash->erasesize;
-		}
+	while (len) {
+		if (ctrlc())
+			return -EINTR;
+		if (erase_sector(flash, addr))
+			return -EIO;
+
+		if (len <= flash->erasesize)
+			break;
+		addr += flash->erasesize;
+		len -= flash->erasesize;
 	}
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
