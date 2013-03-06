Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9xQ-0007Nh-GE
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:44:20 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id AC4F9104E4CF
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 09:55:19 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 09:39:49 +0100
Message-Id: <1362559192-11992-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362559192-11992-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306083849.GC4401@game.jcrosoft.org>
 <1362559192-11992-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/9] meminfo: switch to pr_xxx
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
