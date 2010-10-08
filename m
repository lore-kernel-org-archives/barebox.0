Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P4C07-00032d-A8
	for barebox@lists.infradead.org; Fri, 08 Oct 2010 12:24:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Oct 2010 14:24:33 +0200
Message-Id: <1286540674-17174-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1286540674-17174-1-git-send-email-s.hauer@pengutronix.de>
References: <1286540674-17174-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] hush: fix nasty memory leak in hush
To: barebox@lists.infradead.org

Fix memory leak in globbing part of hush. a simple '['
on the command line was enough to trigger it.
We must call globfree() before setting the glob structure
to zero.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index f22eca6..1b5cd99 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -790,6 +790,7 @@ static int globhack(const char *src, int flags, glob_t *pglob)
 	}
 	dest = xmalloc(cnt);
 	if (!(flags & GLOB_APPEND)) {
+		globfree(pglob);
 		pglob->gl_pathv = NULL;
 		pglob->gl_pathc = 0;
 		pglob->gl_offs = 0;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
