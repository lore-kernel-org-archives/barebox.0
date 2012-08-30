Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T72hl-0000eh-5o
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 11:14:34 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 30 Aug 2012 13:13:59 +0200
Message-Id: <1346325240-6037-2-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346325240-6037-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346325240-6037-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/2] trivial: fix spelling in usb code
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 commands/usb.c         |    2 +-
 drivers/usb/core/usb.c |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/usb.c b/commands/usb.c
index d02ea4b..729a402 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -50,7 +50,7 @@ static int do_usb(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(usb)
 BAREBOX_CMD_HELP_USAGE("usb [-f]\n")
 BAREBOX_CMD_HELP_SHORT("Scan for USB devices.\n")
-BAREBOX_CMD_HELP_OPT("-f", "force. Rescan if if if have scanned once\n")
+BAREBOX_CMD_HELP_OPT("-f", "force. Rescan although scanned already\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(usb)
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index a5075d5..81ae9f1 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -528,10 +528,10 @@ int usb_submit_int_msg(struct usb_device *dev, unsigned long pipe,
 }
 
 /*
- * submits a control message and waits for comletion (at least timeout * 1ms)
+ * submits a control message and waits for completion (at least timeout * 1ms)
  * If timeout is 0, we don't wait for completion (used as example to set and
  * clear keyboards LEDs). For data transfers, (storage transfers) we don't
- * allow control messages with 0 timeout, by previousely resetting the flag
+ * allow control messages with 0 timeout, by previously resetting the flag
  * asynch_allowed (usb_disable_asynch(1)).
  * returns the transfered length if OK or -1 if error. The transfered length
  * and the current status are stored in the dev->act_len and dev->status.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
