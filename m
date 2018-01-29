Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x242.google.com ([2a00:1450:400c:c0c::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egCIN-00025E-IC
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 16:28:37 +0000
Received: by mail-wr0-x242.google.com with SMTP id t16so7884705wrc.10
 for <barebox@lists.infradead.org>; Mon, 29 Jan 2018 08:28:24 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Mon, 29 Jan 2018 17:28:15 +0100
Message-Id: <20180129162815.32166-1-aleksander@aleksander.es>
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
Subject: [PATCH] ratp: remove unused context fields
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/common/ratp.c b/common/ratp.c
index 6db4df870..80863f81f 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -54,14 +54,8 @@ struct ratp_bb_command_return {
 struct ratp_ctx {
 	struct console_device *cdev;
 	struct ratp ratp;
-	int ratp_status;
 	struct console_device ratp_console;
 	int have_synch;
-	int in_ratp_console;
-
-	u8 sendbuf[256];
-	u8 sendbuf_len;
-
 	int old_active;
 
 	struct kfifo *console_recv_fifo;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
