Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP1-00088n-BR
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:22 +0200
Message-Id: <1269855383-22716-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] hush: only remove backslashes introduced from glob
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 6a8b56b..afa67d1 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -779,8 +779,9 @@ static int globhack(const char *src, int flags, glob_t *pglob)
 	int cnt=0, pathc;
 	const char *s;
 	char *dest;
+
 	for (cnt=1, s=src; s && *s; s++) {
-		if (*s == '\\') s++;
+		if (*s == '\\' && strchr("*[?", *(s + 1))) s++;
 		cnt++;
 	}
 	dest = xmalloc(cnt);
@@ -794,7 +795,7 @@ static int globhack(const char *src, int flags, glob_t *pglob)
 	pglob->gl_pathv[pathc-1] = dest;
 	pglob->gl_pathv[pathc] = NULL;
 	for (s=src; s && *s; s++, dest++) {
-		if (*s == '\\') s++;
+		if (*s == '\\' && strchr("*[?", *(s + 1))) s++;
 		*dest = *s;
 	}
 	*dest='\0';
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
