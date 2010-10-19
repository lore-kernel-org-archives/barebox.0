Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj6-0005rK-NS
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:54:58 +0200
Message-Id: <1287492930-15716-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/42] console: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index 204a08c..3a1b451 100644
--- a/common/console.c
+++ b/common/console.c
@@ -120,7 +120,7 @@ static int console_baudrate_set(struct device_d *dev, struct param_d *param,
 static struct kfifo *console_input_buffer;
 static struct kfifo *console_output_buffer;
 
-int getc_buffer_flush(void)
+static int getc_buffer_flush(void)
 {
 	console_input_buffer = kfifo_alloc(1024);
 	console_output_buffer = kfifo_alloc(1024);
@@ -247,7 +247,9 @@ int tstc(void)
 }
 EXPORT_SYMBOL(tstc);
 
-void __early_initdata *early_console_base;
+#ifdef CONFIG_HAS_EARLY_INIT
+static void __early_initdata *early_console_base;
+#endif
 
 void console_putc(unsigned int ch, char c)
 {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
