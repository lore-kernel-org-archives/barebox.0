Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBrC-0007rT-MP
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:42:05 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 75C43DC209E
 for <barebox@lists.infradead.org>; Thu, 13 Dec 2012 17:50:26 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 13 Dec 2012 17:40:09 +0100
Message-Id: <1355416810-26555-8-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121213163758.GB26483@game.jcrosoft.org>
 <1355416810-26555-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 8/9] meminfo: switch to pr_xxx
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/meminfo.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/meminfo.c b/common/meminfo.c
index 06fce5a..989024f 100644
--- a/common/meminfo.c
+++ b/common/meminfo.c
@@ -9,12 +9,12 @@ static int display_meminfo(void)
 	ulong mend   = mem_malloc_end();
 	ulong msize  = mend - mstart + 1;
 
-	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext);
-	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
-	printf("malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
+	pr_debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext);
+	pr_debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
+	pr_info("malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
 		mstart, mend, size_human_readable(msize));
 #ifdef CONFIG_ARM
-	printf("stack space:  0x%08x -> 0x%08x (size %s)\n",
+	pr_info("stack space:  0x%08x -> 0x%08x (size %s)\n",
 		STACK_BASE, STACK_BASE + STACK_SIZE,
 		size_human_readable(STACK_SIZE));
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
