Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8Wxa-00039B-LF
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 14:17:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 Feb 2013 15:17:14 +0100
Message-Id: <1361456235-30969-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361456235-30969-1-git-send-email-s.hauer@pengutronix.de>
References: <1361456235-30969-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] hush: implement $*
To: barebox@lists.infradead.org

To get all arguments a script is called with.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/common/hush.c b/common/hush.c
index 5927ad6..43ce3ba 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -335,6 +335,19 @@ static int b_addchr(o_string *o, int ch)
 	return 0;
 }
 
+static int b_addstr(o_string *o, const char *str)
+{
+	int ret;
+
+	while (*str) {
+		ret = b_addchr(o, *str++);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static void b_reset(o_string *o)
 {
 	o->length = 0;
@@ -1410,6 +1423,14 @@ static int handle_dollar(o_string *dest, struct p_context *ctx, struct in_str *i
 			}
 			b_addchr(dest, SPECIAL_VAR_SYMBOL);
 			break;
+		case '*':
+			for (i = 1; i < ctx->global_argc; i++) {
+				b_addstr(dest, ctx->global_argv[i]);
+				b_addchr(dest, ' ');
+			}
+
+			advance = 1;
+			break;
 		default:
 			b_addchr(dest, '$');
 		}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
