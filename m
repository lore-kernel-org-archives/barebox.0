Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6m-0006Vb-Uw
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:50:00 +0200
Message-Id: <1404809417-21477-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/21] readkey: keys are unsugned char
To: barebox@lists.infradead.org

We have keys with values > 127, so it must be an unsigned char.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/readkey.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/readkey.c b/lib/readkey.c
index 7b38110..2073a73 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -25,7 +25,7 @@
 
 struct esc_cmds {
 	const char *seq;
-	char val;
+	unsigned char val;
 };
 
 static const struct esc_cmds esccmds[] = {
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
