Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQo8-0007W5-Am
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:52:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:51:57 +0200
Message-Id: <1334501517-29478-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334501517-29478-1-git-send-email-s.hauer@pengutronix.de>
References: <1334501517-29478-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] automount: remove existing automountpoint
To: barebox@lists.infradead.org

Before creating a new mountpoint on an already existing mountpoint
we have to remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 64997cc..04dace4 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -259,6 +259,8 @@ int automount_add(const char *path, const char *cmd)
 	am->path = normalise_path(path);
 	am->cmd = xstrdup(cmd);
 
+	automount_remove(am->path);
+
 	ret = stat(path, &s);
 	if (!ret) {
 		/*
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
