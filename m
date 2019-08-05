Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZ5Q-0000Y2-7A
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 09:15:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Aug 2019 11:15:22 +0200
Message-Id: <20190805091522.7021-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] console: return number of characters written in fops_write
To: Barebox List <barebox@lists.infradead.org>

struct cdev_operations write() callback is supposed to return the number
of characters written. Do this instead of returning 0 for the console
device files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/console.c b/common/console.c
index 406722a1da..ee17a508ba 100644
--- a/common/console.c
+++ b/common/console.c
@@ -300,7 +300,7 @@ static ssize_t fops_write(struct cdev* dev, const void* buf, size_t count,
 
 	priv->puts(priv, buf);
 
-	return 0;
+	return count;
 }
 
 int console_register(struct console_device *newcdev)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
