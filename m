Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PHzpr-0005Kd-Ok
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 14:15:13 +0000
Received: by bwz5 with SMTP id 5so5380483bwz.36
	for <barebox@lists.infradead.org>; Mon, 15 Nov 2010 06:15:05 -0800 (PST)
From: Marek Belisko <marek.belisko@gmail.com>
Date: Mon, 15 Nov 2010 15:17:19 +0100
Message-Id: <1289830639-26626-1-git-send-email-marek.belisko@gmail.com>
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
Subject: [PATCH] serial_s3c24x0: Add missing brackets.
To: barebox@lists.infradead.org

Fucntion s3c24x0_serial_flush() could behave wrong
because of missing brackets. Correct condition logic.
Problem found by sparse.

Signed-off-by: Marek Belisko <marek.belisko@gmail.com>
---
 drivers/serial/serial_s3c24x0.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
index fedddd3..d7eac8f 100644
--- a/drivers/serial/serial_s3c24x0.c
+++ b/drivers/serial/serial_s3c24x0.c
@@ -113,7 +113,7 @@ static void s3c24x0_serial_flush(struct console_device *cdev)
 {
 	struct device_d *dev = cdev->dev;
 
-	while (!readb(dev->map_base + UTRSTAT) & 0x4)
+	while (!(readb(dev->map_base + UTRSTAT) & 0x4))
 		;
 }
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
