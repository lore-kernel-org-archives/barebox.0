Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SxF4R-0000ce-K2
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 10:25:33 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 451A7FFAF94
 for <barebox@lists.infradead.org>; Fri,  3 Aug 2012 12:31:36 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Aug 2012 12:25:17 +0200
Message-Id: <1343989522-8807-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120803102300.GB23597@game.jcrosoft.org>
 <1343989522-8807-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/12] ARM: add early malloc support needed by the decompressor
To: barebox@lists.infradead.org

This is not needed by lzo but by gunzip, xz and others.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/start-pbl.c |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 17e0829..dd5c483 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -23,11 +23,15 @@
 
 #include <common.h>
 #include <init.h>
+#include <sizes.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
+unsigned long free_mem_ptr;
+unsigned long free_mem_end_ptr;
+
 void __naked __section(.text_head_entry) pbl_start(void)
 {
 	barebox_arm_head();
@@ -46,6 +50,10 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 {
 	void (*barebox)(void);
 
+	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
+	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
+	free_mem_end_ptr = free_mem_ptr + SZ_128K;
+
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
 		barebox = (void *)(TEXT_BASE + 1);
 	else
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
