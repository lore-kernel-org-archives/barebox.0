Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuRZI-0002NJ-Hb
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 17:42:02 +0000
Received: by mail-ea0-f177.google.com with SMTP id c10so1354309eaa.36
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2013 09:41:58 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 13 Jan 2013 18:42:17 +0100
Message-Id: <1358098943-18928-4-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
References: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 3/9] meminfo: fix display of allocated addresses
To: barebox@lists.infradead.org
Cc: marc@cpdesign.com

Fix display to stdout of allocated addresses.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 common/meminfo.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/meminfo.c b/common/meminfo.c
index a7c515f..a09b2d2 100644
--- a/common/meminfo.c
+++ b/common/meminfo.c
@@ -10,13 +10,13 @@ static int display_meminfo(void)
 	ulong mend   = mem_malloc_end();
 	ulong msize  = mend - mstart + 1;
 
-	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext);
-	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop);
+	debug("barebox code: 0x%p -> 0x%p\n", _stext, _etext - 1);
+	debug("bss segment:  0x%p -> 0x%p\n", __bss_start, __bss_stop - 1);
 	printf("malloc space: 0x%08lx -> 0x%08lx (size %s)\n",
 		mstart, mend, size_human_readable(msize));
 #ifdef CONFIG_ARM
 	printf("stack space:  0x%08x -> 0x%08x (size %s)\n",
-		STACK_BASE, STACK_BASE + STACK_SIZE,
+		STACK_BASE, STACK_BASE + STACK_SIZE - 1,
 		size_human_readable(STACK_SIZE));
 #endif
 	return 0;
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
