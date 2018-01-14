Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eapkK-0005tg-G2
 for barebox@lists.infradead.org; Sun, 14 Jan 2018 21:23:18 +0000
Received: by mail-lf0-x244.google.com with SMTP id h140so11184521lfg.1
 for <barebox@lists.infradead.org>; Sun, 14 Jan 2018 13:23:10 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 15 Jan 2018 00:22:51 +0300
Message-Id: <20180114212252.29682-7-antonynpavlov@gmail.com>
In-Reply-To: <20180114212252.29682-1-antonynpavlov@gmail.com>
References: <20180114212252.29682-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 6/7] parseopt: introduce parseopt_u16() and parseopt_str()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/parseopt.h |  2 ++
 lib/parseopt.c     | 64 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 66 insertions(+)

diff --git a/include/parseopt.h b/include/parseopt.h
index becc734c2b..1f9763f8c9 100644
--- a/include/parseopt.h
+++ b/include/parseopt.h
@@ -3,5 +3,7 @@
 
 void parseopt_b(const char *options, const char *opt, bool *val);
 void parseopt_hu(const char *options, const char *opt, unsigned short *val);
+void parseopt_u16(const char *options, const char *opt, uint16_t *val);
+void parseopt_str(const char *options, const char *opt, char **val);
 
 #endif /* __PARSEOPT_H__ */
diff --git a/lib/parseopt.c b/lib/parseopt.c
index 8ff83019a7..8211733e3b 100644
--- a/lib/parseopt.c
+++ b/lib/parseopt.c
@@ -58,3 +58,67 @@ again:
 	if (*endp == ',' || *endp == '\0')
 		*val = v;
 }
+
+void parseopt_u16(const char *options, const char *opt, uint16_t *val)
+{
+	const char *start;
+	size_t optlen = strlen(opt);
+	ulong v;
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
+	v = simple_strtoul(start + optlen + 1, &endp, 0);
+	if (v > U16_MAX)
+		return;
+
+	if (*endp == ',' || *endp == '\0')
+		*val = v;
+}
+
+void parseopt_str(const char *options, const char *opt, char **val)
+{
+	const char *start;
+	size_t optlen = strlen(opt);
+	char *endp;
+	char *parsed;
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
+	parsed = (char *)start + optlen + 1;
+	endp = parsed;
+	while (*endp != '\0' && *endp != ',') {
+
+		endp++;
+	}
+
+	*val = xstrndup(parsed, endp - parsed);
+}
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
