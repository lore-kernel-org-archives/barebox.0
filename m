Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QLLXG-0003cL-Dd
	for barebox@lists.infradead.org; Sat, 14 May 2011 20:34:03 +0000
Received: by wwb39 with SMTP id 39so2857373wwb.18
	for <barebox@lists.infradead.org>; Sat, 14 May 2011 13:34:00 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
Date: Sat, 14 May 2011 22:33:51 +0200
Message-Id: <1305405231-22863-1-git-send-email-jacmet@sunsite.dk>
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
Subject: [PATCH] setenv: be robust against setenv(<var>, NULL)
To: barebox@lists.infradead.org

Handle value == NULL similiar to how value == '' is currently handled.
hush's builtin_getopt() seems to trigger this for OPTARG.

Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
---
 common/env.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/env.c b/common/env.c
index b72b5d1..47cef05 100644
--- a/common/env.c
+++ b/common/env.c
@@ -205,7 +205,7 @@ int setenv(const char *_name, const char *value)
 	struct variable_d *var;
 	int ret = 0;
 
-	if (!*value)
+	if (value && !*value)
 		value = NULL;
 
 
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
