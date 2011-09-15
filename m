Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R4AFJ-0001rz-D4
	for barebox@lists.infradead.org; Thu, 15 Sep 2011 11:36:46 +0000
Received: by bkat2 with SMTP id t2so2734926bka.36
	for <barebox@lists.infradead.org>; Thu, 15 Sep 2011 04:36:43 -0700 (PDT)
Message-Id: <560194a56016e7562eb1e50f68a58ff6f6e069a7.1316086518.git.fercerpav@gmail.com>
From: Paul Fertser <fercerpav@gmail.com>
Date: Thu, 15 Sep 2011 15:27:36 +0400
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
Subject: [PATCH 1/2] m25p80: add additional sanity checks for erasure
To: barebox@lists.infradead.org
Cc: Franck JULLIEN <elec4fun@gmail.com>

This guards for the cases where the initial offset or byte count is
not aligned with regard to erase block size, thus making it impossible
for erase to do any harm to the nearby sectors.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 drivers/nor/m25p80.c |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index e6fe75e..6f650a5 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -206,7 +206,9 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, unsigned long offse
 		__func__, "at", (long long)offset, (long long)count);
 
 	/* sanity checks */
-	if (offset + count > flash->size)
+	if ((offset + count > flash->size) ||
+	    (offset % flash->erasesize) ||
+	    ((offset+count) % flash->erasesize))
 		return -EINVAL;
 
 	addr = offset;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
