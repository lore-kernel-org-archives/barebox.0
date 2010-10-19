Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj4-0005qo-Pb
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:54:50 +0200
Message-Id: <1287492930-15716-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/42] fnmatch:sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/fnmatch.c |    5 +----
 1 files changed, 1 insertions(+), 4 deletions(-)

diff --git a/lib/fnmatch.c b/lib/fnmatch.c
index 223b9d3..1a5e8d0 100644
--- a/lib/fnmatch.c
+++ b/lib/fnmatch.c
@@ -48,10 +48,7 @@ extern int errno;
 
 /* Match STRING against the filename pattern PATTERN, returning zero if
    it matches, nonzero if not.  */
-int fnmatch(pattern, string, flags)
-const char *pattern;
-const char *string;
-int flags;
+int fnmatch(const char *pattern, const char *string, int flags)
 {
 	register const char *p = pattern, *n = string;
 	register char c;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
