Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8Wxa-00039A-Ay
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 14:17:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Feb 2013 15:17:13 +0100
Message-Id: <1361456235-30969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] hush: expand variables before globbing in for loops
To: barebox@lists.infradead.org

The following does work:

for i in *; do echo $i; done

but the following does not:

a="*"; for i in $a; do echo $i; done

This is because globbing in for loops takes place before the variable
is expanded. Fix this by explicitly expanding the variables before globbing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 1f468f6..5927ad6 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1008,7 +1008,11 @@ static int xglob(o_string *dest, int flags, glob_t *pglob, int glob_needed)
 			return 0;
 		}
 	} else if (glob_needed) {
-		gr = do_glob(dest->data, flags, NULL, pglob);
+		char *data;
+		data = insert_var_value(dest->data);
+		gr = do_glob(data, flags, NULL, pglob);
+		if (data != dest->data)
+			free(data);
 		debug("glob returned %d\n",gr);
 	} else {
 		gr = fake_glob(dest->data, flags, NULL, pglob);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
