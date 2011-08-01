Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnsqM-0003gu-7C
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 13:47:45 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id BBD7DFFA5D6
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 15:48:36 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  1 Aug 2011 15:29:40 +0200
Message-Id: <1312205383-13266-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110801132643.GH6255@game.jcrosoft.org>
References: <20110801132643.GH6255@game.jcrosoft.org>
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
Subject: [PATCH 6/9] init: introduce mem, mmu and postmmu initcall
To: barebox@lists.infradead.org

on ARM we need to init all the memory before the mmu and before any drivers
use dma_alloc_coherent

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/init.h |   11 +++++++----
 1 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/include/init.h b/include/init.h
index 2f4fac1..976f643 100644
--- a/include/init.h
+++ b/include/init.h
@@ -30,10 +30,13 @@ typedef int (*initcall_t)(void);
 #define postcore_initcall(fn)		__define_initcall("2",fn,2)
 #define console_initcall(fn)		__define_initcall("3",fn,3)
 #define postconsole_initcall(fn)	__define_initcall("4",fn,4)
-#define coredevice_initcall(fn)		__define_initcall("5",fn,5)
-#define fs_initcall(fn)			__define_initcall("6",fn,6)
-#define device_initcall(fn)		__define_initcall("7",fn,7)
-#define late_initcall(fn)		__define_initcall("8",fn,8)
+#define mem_initcall(fn)		__define_initcall("5",fn,5)
+#define mmu_initcall(fn)		__define_initcall("6",fn,6)
+#define postmmu_initcall(fn)		__define_initcall("7",fn,7)
+#define coredevice_initcall(fn)		__define_initcall("8",fn,8)
+#define fs_initcall(fn)			__define_initcall("9",fn,9)
+#define device_initcall(fn)		__define_initcall("10",fn,10)
+#define late_initcall(fn)		__define_initcall("11",fn,11)
 
 /* section for code used very early when
  * - we're not running from where we linked at
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
