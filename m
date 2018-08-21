Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs093-0000e1-5v
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:28:02 +0000
Received: by mail-pg1-x541.google.com with SMTP id k8-v6so3931619pgq.5
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:27:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 Aug 2018 23:27:36 -0700
Message-Id: <20180821062736.17884-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] include/common: Make use of ALIGN and ALIGN_DOWN
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/common.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/common.h b/include/common.h
index f93bd7f5d..abbe73fd3 100644
--- a/include/common.h
+++ b/include/common.h
@@ -109,8 +109,8 @@ void shutdown_barebox(void);
 
 #define PAGE_SIZE	4096
 #define PAGE_SHIFT	12
-#define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
-#define PAGE_ALIGN_DOWN(x) ((x) & ~(PAGE_SIZE - 1))
+#define PAGE_ALIGN(s)	ALIGN(s, PAGE_SIZE)
+#define PAGE_ALIGN_DOWN(x) ALIGN_DOWN(x, PAGE_SIZE)
 
 int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int swab);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
