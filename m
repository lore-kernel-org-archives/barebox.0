Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RG6I3-0005Vq-A4
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 09:48:55 +0000
Received: by bkbc12 with SMTP id c12so728887bkb.36
	for <barebox@lists.infradead.org>; Tue, 18 Oct 2011 02:48:52 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 18 Oct 2011 13:48:44 +0400
Message-Id: <1318931325-31138-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH 1/2] fs: fix path_check_prereq()
To: barebox@lists.infradead.org

This patch makes impossible the situations than path_check_prereq() can make
'return 0' without changing errno.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/fs.c |    7 ++++---
 1 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 7d65ec8..714fc9b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -293,9 +293,11 @@ static int path_check_prereq(const char *path, unsigned int flags)
 	struct stat s;
 	unsigned int m;
 
+	errno = 0;
+
 	if (stat(path, &s)) {
 		if (flags & S_UB_DOES_NOT_EXIST)
-			return 0;
+			goto out;
 		errno = -ENOENT;
 		goto out;
 	}
@@ -306,7 +308,7 @@ static int path_check_prereq(const char *path, unsigned int flags)
 	}
 
 	if (flags == S_UB_EXISTS)
-		return 0;
+		goto out;
 
 	m = s.st_mode;
 
@@ -325,7 +327,6 @@ static int path_check_prereq(const char *path, unsigned int flags)
 		goto out;
 	}
 
-	errno = 0;
 out:
 	return errno;
 }
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
