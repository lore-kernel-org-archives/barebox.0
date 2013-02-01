Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXU-0004Me-2g
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:45 +0100
Message-Id: <1359705587-9762-33-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 32/34] generic memory layout: fix deps for [MALLOC|STACK]_BASE
To: barebox@lists.infradead.org

Defining STACK_BASE and MALLOC_BASE only makes sense when
either CONFIG_MEMORY_LAYOUT_DEFAULT or CONFIG_MEMORY_LAYOUT_FIXED
is set, so use separate #ifdefs instead ot #if/#else

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/asm-generic/memory_layout.h |    6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index eb1607f..45e0ed8 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -2,15 +2,13 @@
 #define __ASM_GENERIC_MEMORY_LAYOUT_H
 
 #ifdef CONFIG_MEMORY_LAYOUT_DEFAULT
-
 #define MALLOC_BASE (TEXT_BASE - CONFIG_MALLOC_SIZE)
 #define STACK_BASE (TEXT_BASE - CONFIG_MALLOC_SIZE - CONFIG_STACK_SIZE)
+#endif
 
-#else
-
+#ifdef CONFIG_MEMORY_LAYOUT_FIXED
 #define STACK_BASE CONFIG_STACK_BASE
 #define MALLOC_BASE CONFIG_MALLOC_BASE
-
 #endif
 
 #define HEAD_TEXT_BASE MALLOC_BASE
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
