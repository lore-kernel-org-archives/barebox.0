Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1epbKb-0004HV-M8
 for barebox@lists.infradead.org; Sat, 24 Feb 2018 15:01:49 +0000
Received: by mail-wr0-x243.google.com with SMTP id o76so16890092wrb.7
 for <barebox@lists.infradead.org>; Sat, 24 Feb 2018 07:01:35 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sat, 24 Feb 2018 16:01:18 +0100
Message-Id: <20180224150121.28309-7-aleksander@aleksander.es>
In-Reply-To: <20180224150121.28309-1-aleksander@aleksander.es>
References: <20180224150121.28309-1-aleksander@aleksander.es>
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
Subject: [PATCH v3 6/9] ratp: use xstrndup() instead of a custom
 xmemdup_add_zero()
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

The console operations done via RATP expect strings, so just use
xstrndup() instead of defining a custom method.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/ratp.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index 1e9c65179..fae9cec5b 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -132,17 +132,6 @@ static int console_send(struct ratp *r, void *pkt, int len)
 	return 0;
 }
 
-static void *xmemdup_add_zero(const void *buf, int len)
-{
-	void *ret;
-
-	ret = xzalloc(len + 1);
-	*(uint8_t *)(ret + len) = 0;
-	memcpy(ret, buf, len);
-
-	return ret;
-}
-
 static void ratp_queue_console_tx(struct ratp_ctx *ctx)
 {
 	u8 buf[255];
@@ -220,7 +209,7 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 		if (!IS_ENABLED(CONFIG_CONSOLE_RATP) || ratp_command)
 			return 0;
 
-		ratp_command = xmemdup_add_zero(&rbb->data, dlen);
+		ratp_command = xstrndup((const char *)rbb->data, dlen);
 		ratp_ctx = ctx;
 		pr_debug("got command: %s\n", ratp_command);
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
