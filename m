Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql0GB-0002v2-P4
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 15:06:30 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 3E604FFA2F3
	for <barebox@lists.infradead.org>;
	Sun, 24 Jul 2011 17:07:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Jul 2011 16:48:59 +0200
Message-Id: <1311518949-6990-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 02/12] drivers: move resource generic management to
	driver/base/resource.c
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Makefile                         |    1 -
 drivers/base/Makefile                   |    1 +
 common/mem.c => drivers/base/resource.c |    0
 3 files changed, 1 insertions(+), 1 deletions(-)
 rename common/mem.c => drivers/base/resource.c (100%)

diff --git a/common/Makefile b/common/Makefile
index 27aebae..9fed2ae 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -9,7 +9,6 @@ obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_BLOCK)		+= block.o
 
 obj-y += memory.o
-obj-y += mem.o
 obj-$(CONFIG_MALLOC_DLMALLOC) += dlmalloc.o
 obj-$(CONFIG_MALLOC_DUMMY) += dummy_malloc.o
 obj-y += clock.o
diff --git a/drivers/base/Makefile b/drivers/base/Makefile
index 2d94723..957ca5a 100644
--- a/drivers/base/Makefile
+++ b/drivers/base/Makefile
@@ -1,2 +1,3 @@
 obj-y	+= driver.o
 obj-y	+= platform.o
+obj-y	+= resource.o
diff --git a/common/mem.c b/drivers/base/resource.c
similarity index 100%
rename from common/mem.c
rename to drivers/base/resource.c
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
