Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4yhQ-0002m8-EN
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 18:01:25 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue,  6 Mar 2012 19:01:43 +0100
Message-Id: <1331056903-3007-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH] show_progress: minor optimizations
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

not really needed, patching was (probably) caused by miscompilation
with recent gcc, but bloat-o-meter reports

| show_progress                                220     192     -28

after this patch. The '#define' seems to be the only way to gain
this reduction; 'const' annotations do not have an effect with gcc
4.6 and 'static' will save the 28 bytes but adds other 5 ones.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 lib/show_progress.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/lib/show_progress.c b/lib/show_progress.c
index 39808d2..341184b 100644
--- a/lib/show_progress.c
+++ b/lib/show_progress.c
@@ -25,6 +25,7 @@
 #include <asm-generic/div64.h>
 
 #define HASHES_PER_LINE	65
+#define SPINCHR		"\\|/-"
 
 static int printed;
 static int progress_max;
@@ -32,10 +33,8 @@ static int spin;
 
 void show_progress(int now)
 {
-	char spinchr[] = "\\|/-";
-
 	if (now < 0) {
-		printf("%c\b", spinchr[spin++ % (sizeof(spinchr) - 1)]);
+		printf("%c\b", SPINCHR[spin++ % (sizeof(SPINCHR) - 1)]);
 		return;
 	}
 
-- 
1.7.7.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
