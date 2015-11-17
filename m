Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyeAQ-0004WI-Bk
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 11:11:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Nov 2015 12:10:48 +0100
Message-Id: <1447758651-26575-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
References: <1447758651-26575-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] loadb: deactivate console before using it for loadb
To: Barebox List <barebox@lists.infradead.org>

Remove the console device we are about using for loadb from the
console layer by deactivating it. This makes sure that no printf output
disturbs the current file transfer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadb.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index bdf1710..6710665 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -617,6 +617,7 @@ static int do_load_serial_bin(int argc, char *argv[])
 	int rcode = 0, ret;
 	int opt;
 	char *output_file = NULL;
+	int current_active;
 
 	while ((opt = getopt(argc, argv, "f:b:o:c")) > 0) {
 		switch (opt) {
@@ -641,6 +642,7 @@ static int do_load_serial_bin(int argc, char *argv[])
 		return -ENODEV;
 	}
 	current_baudrate = console_get_baudrate(cdev);
+	current_active = console_get_active(cdev);
 
 	/* Load Defaults */
 	if (load_baudrate == 0)
@@ -665,13 +667,15 @@ static int do_load_serial_bin(int argc, char *argv[])
 		}
 	}
 
+	printf("## Ready for binary (kermit) download "
+	       "to 0x%08lX offset on %s device at %d bps...\n", offset,
+	       output_file, load_baudrate);
+
+	console_set_active(cdev, 0);
 	ret = console_set_baudrate(cdev, load_baudrate);
 	if (ret)
 		return ret;
 
-	printf("## Ready for binary (kermit) download "
-	       "to 0x%08lX offset on %s device at %d bps...\n", offset,
-	       output_file, load_baudrate);
 	addr = load_serial_bin();
 	if (addr == 0) {
 		printf("## Binary (kermit) download aborted\n");
@@ -682,6 +686,8 @@ static int do_load_serial_bin(int argc, char *argv[])
 	if (ret)
 		return ret;
 
+	console_set_active(cdev, current_active);
+
 	close(ofd);
 	ofd = 0;
 	return rcode;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
