Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo1.mail-out.ovh.net ([188.165.48.29]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSOzm-0006NJ-1l
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 09:17:27 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id A6FF5FFA282
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 10:27:37 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 28 Oct 2012 10:15:10 +0100
Message-Id: <1351415710-19380-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1351415710-19380-1-git-send-email-plagnioj@jcrosoft.com>
References: <1351415710-19380-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] console: display Switch to console [csxx] when switching
 from debug_ll to real console
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/console.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/common/console.c b/common/console.c
index 2e8c973..fdd5f42 100644
--- a/common/console.c
+++ b/common/console.c
@@ -88,6 +88,9 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 	if (initialized < CONSOLE_INIT_FULL) {
 		char ch;
 		initialized = CONSOLE_INIT_FULL;
+		PUTS_LL("Switch to console [");
+		PUTS_LL(dev_name(dev));
+		PUTS_LL("]\n");
 		barebox_banner();
 		while (kfifo_getc(console_output_fifo, &ch) == 0)
 			console_putc(CONSOLE_STDOUT, ch);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
