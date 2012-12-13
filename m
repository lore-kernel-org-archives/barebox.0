Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBrC-0007rO-MS
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:42:03 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5BAF9DC1D26
 for <barebox@lists.infradead.org>; Thu, 13 Dec 2012 17:50:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 13 Dec 2012 17:40:07 +0100
Message-Id: <1355416810-26555-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121213163758.GB26483@game.jcrosoft.org>
 <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/9] console: allow to specify ouput kfifo size via
 CONSOLE_KFIFO_OUTPUT_SIZE
To: barebox@lists.infradead.org

1024 by default
4096 if DEBUG_INFO

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig   |    7 +++++++
 common/console.c |    4 ++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 57119dc..6a0c345 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -477,6 +477,13 @@ config CONSOLE_FULL
 	  once the first console is registered. Recommended for most
 	  usecases.
 
+config CONSOLE_KFIFO_OUTPUT_SIZE
+	prompt "kfifo output size"
+	depends on CONSOLE_FULL
+	int
+	default 4086 if DEBUG_INFO
+	default 1024
+
 choice
 	prompt "Console activation strategy"
 	depends on CONSOLE_FULL
diff --git a/common/console.c b/common/console.c
index d8fe5b6..aeef0a2 100644
--- a/common/console.c
+++ b/common/console.c
@@ -48,7 +48,7 @@ static int initialized = 0;
 #define CONSOLE_BUFFER_SIZE	1024
 
 static char console_input_buffer[CONSOLE_BUFFER_SIZE];
-static char console_output_buffer[CONSOLE_BUFFER_SIZE];
+static char console_output_buffer[CONFIG_CONSOLE_KFIFO_OUTPUT_SIZE];
 
 static struct kfifo __console_input_fifo;
 static struct kfifo __console_output_fifo;
@@ -138,7 +138,7 @@ static void console_init_early(void)
 	kfifo_init(console_input_fifo, console_input_buffer,
 			CONSOLE_BUFFER_SIZE);
 	kfifo_init(console_output_fifo, console_output_buffer,
-			CONSOLE_BUFFER_SIZE);
+			CONFIG_CONSOLE_KFIFO_OUTPUT_SIZE);
 
 	initialized = CONSOLE_INITIALIZED_BUFFER;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
