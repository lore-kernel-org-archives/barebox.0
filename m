Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo1.mail-out.ovh.net ([178.33.104.224]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDw28-00009y-CJ
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 12:04:24 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 3CA94FFA674
 for <barebox@lists.infradead.org>; Fri,  8 Mar 2013 13:20:37 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Mar 2013 12:59:38 +0100
Message-Id: <1362743983-11462-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362743983-11462-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130307215402.GA32347@game.jcrosoft.org>
 <1362743983-11462-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 06/11] meminfo: switch to pr_xxx
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/meminfo.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/meminfo.c b/common/meminfo.c
index 5e3ff71..45733da 100644
--- a/common/meminfo.c
+++ b/common/meminfo.c
@@ -10,9 +10,9 @@ static int display_meminfo(void)
 	ulong mend   = mem_malloc_end();
 	ulong msize  = mend - mstart + 1;
 
-	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext - 1);
-	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop - 1);
-	printf("malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
+	pr_debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext - 1);
+	pr_debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop - 1);
+	pr_info("malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
 		mstart, mend, size_human_readable(msize));
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
