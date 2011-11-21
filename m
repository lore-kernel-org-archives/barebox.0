Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSTyd-0001yN-MG
 for barebox@lists.infradead.org; Mon, 21 Nov 2011 13:32:04 +0000
Received: by bkat2 with SMTP id t2so8631768bka.36
 for <barebox@lists.infradead.org>; Mon, 21 Nov 2011 05:32:00 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Mon, 21 Nov 2011 14:31:31 +0100
Message-Id: <1321882291-26290-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH] eeprom/at25: add erase support
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/eeprom/at25.c |   15 +++++++++++++++
 1 files changed, 15 insertions(+), 0 deletions(-)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 8a979d5..39c5846 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -237,10 +237,25 @@ static off_t at25_ee_lseek(struct cdev *cdev, off_t off)
 	return off;
 }
 
+static int at25_ee_erase(struct cdev *cdev, size_t count, unsigned long offset)
+{
+	int result;
+	void *buf = xzalloc(count);
+
+	result = at25_ee_write(cdev, buf, count, offset, 0);
+	free(buf);
+
+	if (result < 0)
+		return result;
+
+	return 0;
+}
+
 static struct file_operations at25_fops = {
 	.read	= at25_ee_read,
 	.write	= at25_ee_write,
 	.lseek	= at25_ee_lseek,
+	.erase	= at25_ee_erase,
 };
 
 static int at25_probe(struct device_d *dev)
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
