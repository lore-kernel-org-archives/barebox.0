Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGNUO-0003AZ-TW
 for barebox@lists.infradead.org; Thu, 01 Jun 2017 10:38:01 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu,  1 Jun 2017 12:37:28 +0200
Message-Id: <1496313450-14507-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH v3 1/3] fs: add parseopt_b for loop mount option
To: barebox@lists.infradead.org

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
No changes since v2.
---
 fs/parseopt.c | 26 ++++++++++++++++++++++++++
 fs/parseopt.h |  1 +
 2 files changed, 27 insertions(+)

diff --git a/fs/parseopt.c b/fs/parseopt.c
index 12dbe1813c..8ff83019a7 100644
--- a/fs/parseopt.c
+++ b/fs/parseopt.c
@@ -2,6 +2,32 @@
 
 #include "parseopt.h"
 
+void parseopt_b(const char *options, const char *opt, bool *val)
+{
+	const char *start;
+	size_t optlen = strlen(opt);
+
+again:
+	start = strstr(options, opt);
+
+	if (!start) {
+		*val = false;
+		return;
+	}
+
+	if (start > options && start[-1] != ',') {
+		options = start;
+		goto again;
+	}
+
+	if (start[optlen] != ',' && start[optlen] != '\0') {
+		options = start;
+		goto again;
+	}
+
+	*val = true;
+}
+
 void parseopt_hu(const char *options, const char *opt, unsigned short *val)
 {
 	const char *start;
diff --git a/fs/parseopt.h b/fs/parseopt.h
index a8523b6a10..abf3be3f35 100644
--- a/fs/parseopt.h
+++ b/fs/parseopt.h
@@ -1 +1,2 @@
+void parseopt_b(const char *options, const char *opt, bool *val);
 void parseopt_hu(const char *options, const char *opt, unsigned short *val);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
