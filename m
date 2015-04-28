Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yn2oz-0004nj-NI
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 10:32:58 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 28 Apr 2015 12:32:27 +0200
Message-Id: <1430217147-14188-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] common: env: make error message more verbose
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Change the setenv error message from

	set parameter: Invalid argument

to a more helpful

	net: cannot set parameter 'nameserver': Invalid argument

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/env.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/env.c b/common/env.c
index 2e33eb35856b..434170a7468b 100644
--- a/common/env.c
+++ b/common/env.c
@@ -225,8 +225,10 @@ int setenv(const char *_name, const char *value)
 
 		errno = -ret;
 
-		if (ret < 0)
-			perror("set parameter");
+		if (ret < 0) {
+			dev_err(dev, "cannot set parameter '%s'", par);
+			perror("");
+		}
 
 		goto out;
 	}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
