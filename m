Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo3.mail-out.ovh.net ([188.165.33.202]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QkI4s-0006zx-5b
	for barebox@lists.infradead.org; Fri, 22 Jul 2011 15:55:51 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id AB9A810140DD
	for <barebox@lists.infradead.org>;
	Fri, 22 Jul 2011 17:56:31 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 22 Jul 2011 17:38:35 +0200
Message-Id: <1311349119-30197-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311349119-30197-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311349119-30197-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/6] drivers: move resource generic management to
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
