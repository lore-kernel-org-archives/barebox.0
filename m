Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJeak-0003up-S3
 for barebox@lists.infradead.org; Thu, 14 Jan 2016 09:53:19 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Jan 2016 10:52:54 +0100
Message-Id: <1452765174-23368-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] state: hmac: fix error message that algo is displayed
To: barebox@lists.infradead.org
Cc: kernel@pengutronix.de

This patch moves the error message about missing crypto support so that the
used crypto algo is printed. Without this patch the algo is always shown as a
NULL pointer.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/state.c b/common/state.c
index d1fa47ffa34e..3e95efd91168 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1583,6 +1583,10 @@ static int state_backend_raw_file_init_digest(struct state *state, struct state_
 	if (!p)			/* does not exist */
 		return 0;
 
+	ret = of_property_read_string(state->root, "algo", &algo);
+	if (ret)
+		return ret;
+
 	if (!IS_ENABLED(CONFIG_STATE_CRYPTO)) {
 		dev_err(&state->dev,
 			"algo %s specified, but crypto support for state framework (CONFIG_STATE_CRYPTO) not enabled.\n",
@@ -1590,10 +1594,6 @@ static int state_backend_raw_file_init_digest(struct state *state, struct state_
 		return -EINVAL;
 	}
 
-	ret = of_property_read_string(state->root, "algo", &algo);
-	if (ret)
-		return ret;
-
 	ret = keystore_get_secret(state->name, &key, &key_len);
 	if (ret == -ENOENT)	/* -ENOENT == does not exist */
 		return -EPROBE_DEFER;
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
