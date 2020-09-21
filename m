Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKFzE-0004x2-0f
 for barebox@lists.infradead.org; Mon, 21 Sep 2020 07:11:44 +0000
Received: from localhost.localdomain (p5ded6c86.dip0.t-ipconnect.de
 [93.237.108.134]) (Authenticated sender: ahmad@a3f.at)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 2B395C000B
 for <barebox@lists.infradead.org>; Mon, 21 Sep 2020 07:11:39 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 21 Sep 2020 09:11:35 +0200
Message-Id: <20200921071135.561256-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] common: misc: support strerror(err) for all err <= MAX_ERRNO
To: barebox@lists.infradead.org

We have a _LAST_ERRNO of 3 decimal digits. strerror(_LAST_ERRNO) is ok,
but it's still possible that some code passes a non-error code int,
which will overflow the static buffer. Play it safe and bump up the
buffer size to at least 11 characters. This is enough to represent
all integers, with only 7 characters more static storage.

This way strerror(some_int_passed_by_mistake) will not invoke UB.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Detected by ASAN on sandbox a while ago. The place which passed the
non-errno int needs probably fixing as well, but I need to find it again
first..
---
 common/misc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/misc.c b/common/misc.c
index 1c7f93760804..1a1cc071b4d1 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -22,6 +22,7 @@
 #include <led.h>
 #include <of.h>
 #include <restart.h>
+#include <linux/stringify.h>
 
 int errno;
 EXPORT_SYMBOL(errno);
@@ -29,7 +30,7 @@ EXPORT_SYMBOL(errno);
 
 const char *strerror(int errnum)
 {
-	static char errno_string[10];
+	static char errno_string[sizeof("error -2147483648")];
 
 #ifdef CONFIG_ERRNO_MESSAGES
 	char *str;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
