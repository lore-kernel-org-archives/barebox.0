Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfOrr-0006NV-Sr
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 05:47:00 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so1689792lag.36
 for <barebox@lists.infradead.org>; Sun, 02 Dec 2012 21:46:57 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  3 Dec 2012 09:46:52 +0400
Message-Id: <1354513612-32271-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] at25: use dev_lseek_default as at24 does
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/eeprom/at25.c |    7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 5578c78..9bd7748 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -232,15 +232,10 @@ static ssize_t at25_ee_write(struct cdev *cdev,
 	return written ? written : status;
 }
 
-static loff_t at25_ee_lseek(struct cdev *cdev, loff_t off)
-{
-	return off;
-}
-
 static struct file_operations at25_fops = {
 	.read	= at25_ee_read,
 	.write	= at25_ee_write,
-	.lseek	= at25_ee_lseek,
+	.lseek	= dev_lseek_default,
 };
 
 static int at25_probe(struct device_d *dev)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
