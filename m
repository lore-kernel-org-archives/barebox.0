Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RG6I4-0005Vr-8a
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 09:48:56 +0000
Received: by bkbc12 with SMTP id c12so728903bkb.36
	for <barebox@lists.infradead.org>; Tue, 18 Oct 2011 02:48:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 18 Oct 2011 13:48:45 +0400
Message-Id: <1318931325-31138-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1318931325-31138-1-git-send-email-antonynpavlov@gmail.com>
References: <1318931325-31138-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH 2/2] fs: fix chdir()
To: barebox@lists.infradead.org

chdir() allocates memory using mormalise_path(). But if path_check_prereq()
returns error than memory isn't freed.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/fs.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 714fc9b..f42ca36 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -347,8 +347,9 @@ int chdir(const char *pathname)
 
 	strcpy(cwd, p);
 
-	free(p);
 out:
+	free(p);
+
 	return errno;
 }
 EXPORT_SYMBOL(chdir);
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
