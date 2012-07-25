Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StwY1-0003qy-22
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 08:02:27 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id D0D40FF9704
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 10:08:05 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Jul 2012 10:02:47 +0200
Message-Id: <1343203373-18641-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343203373-18641-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120725075730.GT22657@game.jcrosoft.org>
 <1343203373-18641-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 05/11] ARM: add early malloc support needed by the decompressor
To: barebox@lists.infradead.org

This is not needed by lzo but by gunzip, xz and others.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/start.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 18c5c83..8ab6fdc 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -28,6 +28,9 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
+unsigned long free_mem_ptr;
+unsigned long free_mem_end_ptr;
+
 #ifdef CONFIG_IMAGE_COMPRESSION
 void __naked __section(.text_head_entry) compressed_start(void)
 {
@@ -158,6 +161,10 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 	/* clear bss */
 	memset(__bss_start, 0, __bss_stop - __bss_start);
 
+	/* set 128 KiB before the STACK_BASE - 16 address for early malloc */
+	free_mem_ptr = STACK_BASE - 0x20000 - 16;
+	free_mem_end_ptr = STACK_BASE - 16;
+
 	/* flush I-cache before jumping to the copied binary */
 	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
