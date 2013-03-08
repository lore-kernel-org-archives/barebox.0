Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDw20-00007g-Up
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 12:04:21 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 29F61FFA64D
 for <barebox@lists.infradead.org>; Fri,  8 Mar 2013 13:20:37 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Mar 2013 12:59:34 +0100
Message-Id: <1362743983-11462-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362743983-11462-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130307215402.GA32347@game.jcrosoft.org>
 <1362743983-11462-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/11] console: switch to kfifo_dump_str
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console.c |    9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/common/console.c b/common/console.c
index beb37bd..243d402 100644
--- a/common/console.c
+++ b/common/console.c
@@ -55,6 +55,11 @@ static struct kfifo __console_output_fifo;
 static struct kfifo *console_input_fifo = &__console_input_fifo;
 static struct kfifo *console_output_fifo = &__console_output_fifo;
 
+static void console_output_dump(unsigned char ch)
+{
+	console_putc(CONSOLE_STDOUT, ch);
+}
+
 static int console_std_set(struct device_d *dev, struct param_d *param,
 		const char *val)
 {
@@ -86,14 +91,12 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 	dev_param_set_generic(dev, param, active);
 
 	if (initialized < CONSOLE_INIT_FULL) {
-		char ch;
 		initialized = CONSOLE_INIT_FULL;
 		PUTS_LL("Switch to console [");
 		PUTS_LL(dev_name(dev));
 		PUTS_LL("]\n");
 		barebox_banner();
-		while (kfifo_getc(console_output_fifo, &ch) == 0)
-			console_putc(CONSOLE_STDOUT, ch);
+		kfifo_dump_str(console_output_fifo, console_output_dump);
 	}
 
 	return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
