Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cuo-0004ro-FZ
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:14 +0200
Message-Id: <1433830875-31119-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
References: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] loadb: Use console_set_baudrate
To: Barebox List <barebox@lists.infradead.org>

No Need to do this manually

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadb.c | 28 ++++++----------------------
 1 file changed, 6 insertions(+), 22 deletions(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index 8294f39..acc3cd4 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -660,17 +660,9 @@ static int do_load_serial_bin(int argc, char *argv[])
 		}
 	}
 
-	if (load_baudrate != current_baudrate) {
-		printf("## Switch baudrate to %d bps and press ENTER ...\n",
-		       load_baudrate);
-		udelay(50000);
-		cdev->setbrg(cdev, load_baudrate);
-		udelay(50000);
-		for (;;) {
-			if (getc() == '\r')
-				break;
-		}
-	}
+	ret = console_set_baudrate(cdev, load_baudrate);
+	if (ret)
+		return ret;
 
 	printf("## Ready for binary (kermit) download "
 	       "to 0x%08lX offset on %s device at %d bps...\n", offset,
@@ -681,17 +673,9 @@ static int do_load_serial_bin(int argc, char *argv[])
 		rcode = 1;
 	}
 
-	if (load_baudrate != current_baudrate) {
-		printf("## Switch baudrate to %d bps and press ESC ...\n",
-		       current_baudrate);
-		udelay(50000);
-		cdev->setbrg(cdev, current_baudrate);
-		udelay(50000);
-		for (;;) {
-			if (getc() == 0x1B)	/* ESC */
-				break;
-		}
-	}
+	ret = console_set_baudrate(cdev, current_baudrate);
+	if (ret)
+		return ret;
 
 	close(ofd);
 	ofd = 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
