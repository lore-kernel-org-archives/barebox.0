Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo4.mail-out.ovh.net ([46.105.41.16]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9xQ-0007Nc-KW
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:44:20 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id EA9BB104E518
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 09:55:18 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 09:39:45 +0100
Message-Id: <1362559192-11992-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362559192-11992-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306083849.GC4401@game.jcrosoft.org>
 <1362559192-11992-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/9] console: switch to kfifo_dump_str
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
