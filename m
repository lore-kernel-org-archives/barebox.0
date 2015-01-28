Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGN7D-0000FE-3S
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 07:32:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Jan 2015 08:32:14 +0100
Message-Id: <1422430339-11969-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
References: <1422430339-11969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/15] pbl: Add support for memory_display
To: Barebox List <barebox@lists.infradead.org>

The PBL has console support now, so add memory_display support aswell
which can be a good debugging aid.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile |  1 +
 pbl/console.c   | 10 ++++++++++
 2 files changed, 11 insertions(+)

diff --git a/common/Makefile b/common/Makefile
index 282ddbc..ee5dca7 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -1,5 +1,6 @@
 obj-y				+= memory.o
 obj-y				+= memory_display.o
+pbl-$(CONFIG_PBL_CONSOLE)	+= memory_display.o
 obj-y				+= clock.o
 obj-y				+= console_common.o
 obj-y				+= startup.o
diff --git a/pbl/console.c b/pbl/console.c
index 3875e2a..a9859ad 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -30,3 +30,13 @@ int pr_print(int level, const char *fmt, ...)
 
 	return i;
 }
+
+int ctrlc(void)
+{
+	return 0;
+}
+
+void console_putc(unsigned int ch, char c)
+{
+	putc_ll(c);
+}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
