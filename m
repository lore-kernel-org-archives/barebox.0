Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYGzt-00068h-OX
 for barebox@lists.infradead.org; Wed, 07 Dec 2011 12:53:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 Dec 2011 13:52:58 +0100
Message-Id: <1323262387-8012-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] memory: do not try to reserve iomem on sandbox
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/memory.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 7d0f4ca..1d72888 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -53,6 +53,7 @@ void mem_malloc_init(void *start, void *end)
 	malloc_brk = malloc_start;
 }
 
+#ifndef __SANDBOX__
 static int mem_malloc_resource(void)
 {
 	/*
@@ -75,10 +76,10 @@ static int mem_malloc_resource(void)
 #ifdef STACK_BASE
 	request_sdram_region("stack", STACK_BASE, STACK_SIZE);
 #endif
-
 	return 0;
 }
 coredevice_initcall(mem_malloc_resource);
+#endif
 
 static void *sbrk_no_zero(ptrdiff_t increment)
 {
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
