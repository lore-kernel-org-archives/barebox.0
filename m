Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMbxn-0007fe-9E
 for barebox@lists.infradead.org; Tue, 24 Apr 2012 09:23:12 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Apr 2012 11:23:03 +0200
Message-Id: <1335259383-22646-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] common: memory: fix off-by-one in tlsf_create
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/memory.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index faff33b..3b4a5ef 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -58,7 +58,7 @@ void mem_malloc_init(void *start, void *end)
 	malloc_end = (unsigned long)end;
 	malloc_brk = malloc_start;
 #ifdef CONFIG_MALLOC_TLSF
-	tlsf_mem_pool = tlsf_create(start, (char *)end - (char *)start);
+	tlsf_mem_pool = tlsf_create(start, end - start + 1);
 #endif
 }
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
