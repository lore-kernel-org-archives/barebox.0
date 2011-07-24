Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql0GB-0002vK-PG
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 15:06:29 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 1A3E3FFA2EF
	for <barebox@lists.infradead.org>;
	Sun, 24 Jul 2011 17:07:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Jul 2011 16:48:58 +0200
Message-Id: <1311518949-6990-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110724144441.GA10295@game.jcrosoft.org>
References: <20110724144441.GA10295@game.jcrosoft.org>
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
Subject: [PATCH 01/12] drivers/bus: move to drivers/base
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/Makefile                     |    1 +
 drivers/base/Makefile                |    2 ++
 {lib => drivers/base}/driver.c       |    0
 lib/bus.c => drivers/base/platform.c |    0
 lib/Makefile                         |    2 --
 5 files changed, 3 insertions(+), 2 deletions(-)
 create mode 100644 drivers/base/Makefile
 rename {lib => drivers/base}/driver.c (100%)
 rename lib/bus.c => drivers/base/platform.c (100%)

diff --git a/drivers/Makefile b/drivers/Makefile
index 92b22bd..16b3bb1 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -1,3 +1,4 @@
+obj-y	+= base/
 obj-y	+= net/
 obj-y	+= serial/
 obj-y	+= mtd/
diff --git a/drivers/base/Makefile b/drivers/base/Makefile
new file mode 100644
index 0000000..2d94723
--- /dev/null
+++ b/drivers/base/Makefile
@@ -0,0 +1,2 @@
+obj-y	+= driver.o
+obj-y	+= platform.o
diff --git a/lib/driver.c b/drivers/base/driver.c
similarity index 100%
rename from lib/driver.c
rename to drivers/base/driver.c
diff --git a/lib/bus.c b/drivers/base/platform.c
similarity index 100%
rename from lib/bus.c
rename to drivers/base/platform.c
diff --git a/lib/Makefile b/lib/Makefile
index 8b986d2..d96cfe7 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -5,8 +5,6 @@ obj-y			+= string.o
 obj-y			+= vsprintf.o
 obj-y			+= div64.o
 obj-y			+= misc.o
-obj-y			+= driver.o
-obj-y			+= bus.o
 obj-y			+= parameter.o
 obj-y			+= xfuncs.o
 obj-y			+= getopt.o
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
