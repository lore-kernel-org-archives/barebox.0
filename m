Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxBPN-0007n4-I1
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 06:30:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  3 Aug 2012 08:30:35 +0200
Message-Id: <1343975435-5948-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1343975435-5948-1-git-send-email-s.hauer@pengutronix.de>
References: <1343975435-5948-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] glob: fix GLOB_SORT
To: barebox@lists.infradead.org
Cc: jbe@pengutronix.de

The arguments to collated_compare are actually pointers to
pointers to char, not pointers to char.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/glob.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/glob.c b/lib/glob.c
index c4c6067..1b0137b 100644
--- a/lib/glob.c
+++ b/lib/glob.c
@@ -78,8 +78,8 @@ int glob_pattern_p(const char *pattern, int quote)
 /* Do a collated comparison of A and B.  */
 static int collated_compare(const void *a, const void *b)
 {
-	const char *s1 = a;
-	const char *s2 = b;
+	const char *const s1 = *(const char *const *)a;
+	const char *const s2 = *(const char *const *)b;
 
 	if (s1 == s2)
 		return 0;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
