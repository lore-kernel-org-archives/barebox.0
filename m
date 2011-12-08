Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYb31-0001Zn-0c
 for barebox@lists.infradead.org; Thu, 08 Dec 2011 10:17:51 +0000
Received: by bkcje16 with SMTP id je16so1838070bkc.36
 for <barebox@lists.infradead.org>; Thu, 08 Dec 2011 02:17:46 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  8 Dec 2011 14:17:42 +0400
Message-Id: <1323339462-24144-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fix "no previous prototype for 'sbrk'" warning
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/memory.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 7d0f4ca..8090baa 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -28,6 +28,7 @@
 #include <linux/ioport.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
+#include <malloc.h>
 
 /*
  * Begin and End of memory area for malloc(), and current "brk"
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
