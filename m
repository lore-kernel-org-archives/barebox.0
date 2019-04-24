Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJF7A-0008U9-Q3
 for barebox@lists.infradead.org; Wed, 24 Apr 2019 10:26:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Apr 2019 12:26:49 +0200
Message-Id: <20190424102650.9257-3-s.hauer@pengutronix.de>
In-Reply-To: <20190424102650.9257-1-s.hauer@pengutronix.de>
References: <20190424102650.9257-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] console_countdown: Add pattern list
To: Barebox List <barebox@lists.infradead.org>

This adds an optional string argument to console_countdown() which can
hold a list of keys which also abort the countdown.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/timeout.c          |  2 +-
 common/console_countdown.c  | 19 ++++++++++++++++++-
 include/console_countdown.h |  2 +-
 3 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/commands/timeout.c b/commands/timeout.c
index d197cedd8b..db88900287 100644
--- a/commands/timeout.c
+++ b/commands/timeout.c
@@ -61,7 +61,7 @@ static int do_timeout(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	timeout = simple_strtoul(argv[optind], NULL, 0);
-	ret = console_countdown(timeout, flags, str);
+	ret = console_countdown(timeout, flags, NULL, str);
 
 	if (varname && str[0])
 		setenv(varname, str);
diff --git a/common/console_countdown.c b/common/console_countdown.c
index 36da1ce577..8d09894c30 100644
--- a/common/console_countdown.c
+++ b/common/console_countdown.c
@@ -30,7 +30,22 @@ void console_countdown_abort(void)
 	console_countdown_timeout_abort = true;
 }
 
-int console_countdown(int timeout_s, unsigned flags, char *out_key)
+static int key_in_list(char key, const char *keys)
+{
+	if (!keys)
+		return false;
+
+	while (*keys) {
+		if (key == *keys)
+			return true;
+		keys++;
+	}
+
+	return false;
+}
+
+int console_countdown(int timeout_s, unsigned flags, const char *keys,
+		      char *out_key)
 {
 	uint64_t start, second;
 	int countdown, ret = -EINTR;
@@ -48,6 +63,8 @@ int console_countdown(int timeout_s, unsigned flags, char *out_key)
 		if (tstc()) {
 			key = getchar();
 			if (key >= 0) {
+				if (key_in_list(key, keys))
+					goto out;
 				if (flags & CONSOLE_COUNTDOWN_ANYKEY)
 					goto out;
 				if (flags & CONSOLE_COUNTDOWN_RETURN && key == '\n')
diff --git a/include/console_countdown.h b/include/console_countdown.h
index c6c2d5c00e..88cadf11ec 100644
--- a/include/console_countdown.h
+++ b/include/console_countdown.h
@@ -7,7 +7,7 @@
 #define CONSOLE_COUNTDOWN_CTRLC (1 << 4)
 #define CONSOLE_COUNTDOWN_EXTERN (1 << 5)
 
-int console_countdown(int timeout_s, unsigned flags, char *out_key);
+int console_countdown(int timeout_s, unsigned flags, const char *keys, char *out_key);
 void console_countdown_abort(void);
 
 #endif /* __CONSOLE_COUNTDOWN_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
