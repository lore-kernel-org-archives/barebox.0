Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y6lzM-0004rO-Ca
 for barebox@lists.infradead.org; Thu, 01 Jan 2015 20:04:57 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu,  1 Jan 2015 21:04:21 +0100
Message-Id: <1420142663-6243-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] commands: loady: fix bug with netconsole
To: barebox@lists.infradead.org

Netconsole doesn't have a baudrate. Loady supposes a console has one,
and tries to compute the console's baudrate variable value, regardless
of its existence.

This triggers a NULL pointer dereference on netconsole. If attempting
loady on a netconsole is a bit useless, barebox should not panic. Fix
this by checking the variable exists before reading its value.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 commands/loadxy.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/loadxy.c b/commands/loadxy.c
index df14043..1e65cb6 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -43,10 +43,10 @@
 static int console_change_speed(struct console_device *cdev, int baudrate)
 {
 	int current_baudrate;
+	const char *bstr;
 
-	current_baudrate =
-		(int)simple_strtoul(dev_get_param(&cdev->class_dev,
-						  "baudrate"), NULL, 10);
+	bstr = dev_get_param(&cdev->class_dev, "baudrate");
+	current_baudrate = bstr ? (int)simple_strtoul(bstr, NULL, 10) : 0;
 	if (baudrate && baudrate != current_baudrate) {
 		printf("## Switch baudrate from %d to %d bps and press ENTER ...\n",
 		       current_baudrate, baudrate);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
