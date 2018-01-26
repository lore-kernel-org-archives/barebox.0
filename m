Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1efB4D-0005EA-GP
 for barebox@lists.infradead.org; Fri, 26 Jan 2018 20:57:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jan 2018 21:57:31 +0100
Message-Id: <20180126205731.29443-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootargs: Fix memory leak in linux_bootargs_get()
To: Barebox List <barebox@lists.infradead.org>

globalvar_get_match() returns an allocated string which may be
empty. We have to free() the empty string aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootargs.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/bootargs.c b/common/bootargs.c
index a89f23a3f2..f0ab689158 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -56,19 +56,21 @@ const char *linux_bootargs_get(void)
 		bootargs = basprintf("%s mtdparts=%s", linux_bootargs,
 				       parts);
 		free(linux_bootargs);
-		free(parts);
 		linux_bootargs = bootargs;
 	}
 
+	free(parts);
+
 	parts = globalvar_get_match("linux.blkdevparts.", ";");
 	if (strlen(parts)) {
 		bootargs = basprintf("%s blkdevparts=%s", linux_bootargs,
 				       parts);
 		free(linux_bootargs);
-		free(parts);
 		linux_bootargs = bootargs;
 	}
 
+	free(parts);
+
 	return linux_bootargs;
 }
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
