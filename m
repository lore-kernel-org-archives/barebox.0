Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pz0-f43.google.com ([209.85.210.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qhzpf-0006Rd-EH
	for barebox@lists.infradead.org; Sat, 16 Jul 2011 08:02:44 +0000
Received: by pzk1 with SMTP id 1so2688501pzk.30
	for <barebox@lists.infradead.org>; Sat, 16 Jul 2011 01:02:30 -0700 (PDT)
From: Vikram Narayanan <vikram186@gmail.com>
Date: Sat, 16 Jul 2011 13:32:09 +0530
Message-ID: <1310803330.2562.13.camel@ubuntu.ubuntu-domain>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] checks for return value during the initcall
To: barebox@lists.infradead.org

Hi,

This patch checks for the return value, if there is no memory allocated in the getc_buffer_flush initcall.

Signed-off-by: Vikram Narayanan<vikram186@gmail.com>
---
diff --git a/common/console.c b/common/console.c
index d60e57f..c502638 100644
--- a/common/console.c
+++ b/common/console.c
@@ -37,6 +37,7 @@
 #include <poller.h>
 #include <linux/list.h>
 #include <linux/stringify.h>
+#include <errno.h>
 
 LIST_HEAD(console_list);
 EXPORT_SYMBOL(console_list);
@@ -118,6 +119,8 @@ static int getc_buffer_flush(void)
 {
 	console_input_buffer = kfifo_alloc(1024);
 	console_output_buffer = kfifo_alloc(1024);
+	if(!console_input_buffer || !console_output_buffer)
+		return ENOMEM;
 	return 0;
 }
 
-- 
Thanks,
Vikram



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
