Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SvmoV-0001gB-A2
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 10:03:01 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id E2C41FF9B0C
 for <barebox@lists.infradead.org>; Mon, 30 Jul 2012 12:08:53 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Jul 2012 12:02:41 +0200
Message-Id: <1343642565-32257-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120730100022.GD19759@game.jcrosoft.org>
 <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 08/12] ARM: add early malloc support needed by the decompressor
To: barebox@lists.infradead.org

This is not needed by lzo but by gunzip, xz and others.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/cpu/start.c |    7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index a54f5fd..f61c326 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -28,6 +28,9 @@
 #include <asm-generic/memory_layout.h>
 #include <asm/sections.h>
 
+unsigned long free_mem_ptr;
+unsigned long free_mem_end_ptr;
+
 #ifdef CONFIG_PBL_IMAGE
 void __naked __section(.text_head_entry) pbl_start(void)
 {
@@ -193,6 +196,10 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
 	/* clear bss */
 	memset(__bss_start, 0, __bss_stop - __bss_start);
 
+	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
+	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
+	free_mem_end_ptr = free_mem_ptr + SZ_128K;
+
 	/* flush I-cache before jumping to the copied binary */
 	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
