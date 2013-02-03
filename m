Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21GZ-0007G5-Qm
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:14:00 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 7F089104EDA0
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:03 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:34 +0100
Message-Id: <1359904236-11622-34-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 34/36] generic memory layout: fix deps for [MALLOC|STACK]_BASE
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

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
