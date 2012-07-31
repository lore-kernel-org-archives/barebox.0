Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGjf-0001iw-FO
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 17:59:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 19:59:14 +0200
Message-Id: <1343757556-11897-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] nor m25p80: align start and end to erase blocks
To: barebox@lists.infradead.org

The erase command normally makes sure that the selected area is erased,
therefore align the parameters to eraseblock boundaries.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/m25p80.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/nor/m25p80.c b/drivers/nor/m25p80.c
index 0f3bcd1..7ff4546 100644
--- a/drivers/nor/m25p80.c
+++ b/drivers/nor/m25p80.c
@@ -205,8 +205,9 @@ static ssize_t m25p80_erase(struct cdev *cdev, size_t count, loff_t offset)
 	if (offset + count > flash->size)
 		return -EINVAL;
 
-	addr = offset;
-	len = count;
+	/* Align start and len to erase blocks */
+	addr = offset & ~(flash->erasesize - 1);
+	len = ALIGN(offset + count, flash->erasesize) - addr;
 
 	/* whole-chip erase? */
 	if (len == flash->size) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
