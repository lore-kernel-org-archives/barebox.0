Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehCFX-0000Vv-O1
 for barebox@lists.infradead.org; Thu, 01 Feb 2018 10:37:49 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Thu,  1 Feb 2018 11:37:15 +0100
Message-Id: <20180201103717.17429-1-p.zabel@pengutronix.de>
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
Subject: [PATCH 1/3] fs/parseopt: Add parseopt_llu_suffix
To: barebox@lists.infradead.org

Add an option parser using strtoull_suffix that can be used to
parse a loop mount offset option.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 include/parseopt.h |  2 ++
 lib/parseopt.c     | 30 ++++++++++++++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/include/parseopt.h b/include/parseopt.h
index 1f9763f8c9..273a371ac3 100644
--- a/include/parseopt.h
+++ b/include/parseopt.h
@@ -1,5 +1,7 @@
 #ifndef __PARSEOPT_H__
 #define __PARSEOPT_H__
+void parseopt_llu_suffix(const char *options, const char *opt,
+			 unsigned long long *val);
 
 void parseopt_b(const char *options, const char *opt, bool *val);
 void parseopt_hu(const char *options, const char *opt, unsigned short *val);
diff --git a/lib/parseopt.c b/lib/parseopt.c
index 8211733e3b..70983066d9 100644
--- a/lib/parseopt.c
+++ b/lib/parseopt.c
@@ -122,3 +122,33 @@ again:
 
 	*val = xstrndup(parsed, endp - parsed);
 }
+
+void parseopt_llu_suffix(const char *options, const char *opt,
+			 unsigned long long *val)
+{
+	const char *start;
+	size_t optlen = strlen(opt);
+	unsigned long long v;
+	char *endp;
+
+again:
+	start = strstr(options, opt);
+
+	if (!start)
+		return;
+
+	if (start > options && start[-1] != ',') {
+		options = start;
+		goto again;
+	}
+
+	if (start[optlen] != '=') {
+		options = start;
+		goto again;
+	}
+
+	v = strtoull_suffix(start + optlen + 1, &endp, 0);
+
+	if (*endp == ',' || *endp == '\0')
+		*val = v;
+}
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
