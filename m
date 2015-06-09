Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cuo-0004rm-FX
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:12 +0200
Message-Id: <1433830875-31119-10-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] loadxy: use console_set_baudrate
To: Barebox List <barebox@lists.infradead.org>

No need to do this manually

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadb.c  |  2 +-
 commands/loadxy.c | 46 ++++++++++++++++++++++++++--------------------
 2 files changed, 27 insertions(+), 21 deletions(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index 7424bcc..66934c4 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -604,7 +604,7 @@ static int do_load_serial_bin(int argc, char *argv[])
 	ulong offset = 0;
 	ulong addr;
 	int load_baudrate = 0, current_baudrate;
-	int rcode = 0;
+	int rcode = 0, ret;
 	int opt;
 	int open_mode = O_WRONLY;
 	char *output_file = NULL;
diff --git a/commands/loadxy.c b/commands/loadxy.c
index d5cc588..a4b1bec 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -40,21 +40,6 @@
 
 #define DEF_FILE	"image.bin"
 
-static int console_change_speed(struct console_device *cdev, int baudrate)
-{
-	int current_baudrate;
-
-	current_baudrate = console_get_baudrate(cdev);
-	if (baudrate && baudrate != current_baudrate) {
-		printf("## Switch baudrate from %d to %d bps and press ENTER ...\n",
-		       current_baudrate, baudrate);
-		mdelay(50);
-		cdev->setbrg(cdev, baudrate);
-		mdelay(50);
-	}
-	return current_baudrate;
-}
-
 /**
  * @brief provide the loady(Y-Modem or Y-Modem/G) support
  *
@@ -97,7 +82,15 @@ static int do_loady(int argc, char *argv[])
 		return -ENODEV;
 	}
 
-	current_baudrate = console_change_speed(cdev, load_baudrate);
+	current_baudrate = console_get_baudrate(cdev);
+
+	if (!load_baudrate)
+		load_baudrate = current_baudrate;
+
+	rc = console_set_baudrate(cdev, load_baudrate);
+	if (rc)
+		return rc;
+
 	printf("## Ready for binary (ymodem) download at %d bps...\n",
 	       load_baudrate ? load_baudrate : current_baudrate);
 
@@ -111,7 +104,9 @@ static int do_loady(int argc, char *argv[])
 		rcode = 1;
 	}
 
-	console_change_speed(cdev, current_baudrate);
+	rc = console_set_baudrate(cdev, current_baudrate);
+	if (rc)
+		return rc;
 
 	return rcode;
 }
@@ -143,7 +138,7 @@ BAREBOX_CMD_END
 static int do_loadx(int argc, char *argv[])
 {
 	ulong offset = 0;
-	int load_baudrate = 0, current_baudrate, ofd, opt, rcode = 0;
+	int load_baudrate = 0, current_baudrate, rc, ofd, opt, rcode = 0;
 	char *output_file = NULL, *cname = NULL;
 	struct console_device *cdev = NULL;
 
@@ -198,7 +193,15 @@ static int do_loadx(int argc, char *argv[])
 		}
 	}
 
-	current_baudrate = console_change_speed(cdev, load_baudrate);
+	current_baudrate = console_get_baudrate(cdev);
+
+	if (!load_baudrate)
+		load_baudrate = current_baudrate;
+
+	rc = console_set_baudrate(cdev, load_baudrate);
+	if (rc)
+		return rc;
+
 	printf("## Ready for binary (xmodem) download "
 	       "to 0x%08lX offset on %s device at %d bps...\n", offset,
 	       output_file, load_baudrate ? load_baudrate : current_baudrate);
@@ -207,7 +210,10 @@ static int do_loadx(int argc, char *argv[])
 		printf("## Binary (xmodem) download aborted (%d)\n", rcode);
 		rcode = 1;
 	}
-	console_change_speed(cdev, current_baudrate);
+
+	rc = console_set_baudrate(cdev, current_baudrate);
+	if (rc)
+		return rc;
 
 	return rcode;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
