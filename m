Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRdsu-0003yt-HU
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 06:59:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2012 08:58:56 +0200
Message-Id: <1351234748-24994-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
References: <1351234748-24994-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/15] mtd: fix mtdraw_write/mtdraw_erase arguments
To: barebox@lists.infradead.org

For the !CONFIG_MTD_WRITE case they still have ulong as offset
argument.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdraw.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index f541802..079575c 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -258,11 +258,11 @@ static int mtdraw_erase(struct cdev *cdev, size_t count, loff_t _offset)
 }
 #else
 static ssize_t mtdraw_write(struct cdev *cdev, const void *buf, size_t count,
-			    ulong offset, ulong flags)
+			    loff_t offset, ulong flags)
 {
 	return 0;
 }
-static ssize_t mtdraw_erase(struct cdev *cdev, size_t count, ulong offset)
+static ssize_t mtdraw_erase(struct cdev *cdev, size_t count, loff_t offset)
 {
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
