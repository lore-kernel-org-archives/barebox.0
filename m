Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCQoZ-00011O-JW
 for barebox@lists.infradead.org; Sun, 09 Feb 2014 09:36:40 +0000
Received: by mail-ee0-f47.google.com with SMTP id d49so2320216eek.20
 for <barebox@lists.infradead.org>; Sun, 09 Feb 2014 01:36:13 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun,  9 Feb 2014 10:35:57 +0100
Message-Id: <1391938558-18466-1-git-send-email-alex.aring@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] bpkfs: remove twice include of fs.h
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 fs/bpkfs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index b3b45be..ae7681a 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -12,7 +12,6 @@
 #include <fs.h>
 #include <errno.h>
 #include <fcntl.h>
-#include <fs.h>
 #include <malloc.h>
 #include <init.h>
 #include <linux/stat.h>
-- 
1.8.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
