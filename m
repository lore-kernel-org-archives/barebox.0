Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHlN5-000419-FX
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 10:06:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 12:05:49 +0200
Message-Id: <20200914100553.24808-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200914100553.24808-1-a.fatoum@pengutronix.de>
References: <20200914100553.24808-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 3/7] sandbox: support escaping commas in --image
 filenames
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Some tools like afl-fuzz generate file names containing commas.
Allow escaping the commas in the file names, so they can be passed
to barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/os/common.c | 10 ++++++----
 include/linux/string.h   |  1 +
 lib/string.c             | 43 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 50 insertions(+), 4 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 9f26f8fa6e9a..437fe3ecdff8 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -212,6 +212,8 @@ int linux_execve(const char * filename, char *const argv[], char *const envp[])
 extern void start_barebox(void);
 extern void mem_malloc_init(void *start, void *end);
 
+extern char * strsep_unescaped(char **s, const char *ct);
+
 static int add_image(char *str, char *devname_template, int *devname_number)
 {
 	struct hf_info *hf = malloc(sizeof(struct hf_info));
@@ -225,15 +227,15 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 	if (!hf)
 		return -1;
 
-	filename = strtok(str, ",");
-	while ((opt = strtok(NULL, ","))) {
+	filename = strsep_unescaped(&str, ",");
+	while ((opt = strsep_unescaped(&str, ","))) {
 		if (!strcmp(opt, "ro"))
 			readonly = 1;
 	}
 
 	/* parses: "devname=filename" */
-	devname = strtok(filename, "=");
-	filename = strtok(NULL, "=");
+	devname = strsep_unescaped(&filename, "=");
+	filename = strsep_unescaped(&filename, "=");
 	if (!filename) {
 		filename = devname;
 		snprintf(tmp, sizeof(tmp),
diff --git a/include/linux/string.h b/include/linux/string.h
index fd42f5020a07..763ef500e574 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -12,6 +12,7 @@ extern char * ___strtok;
 extern char * strpbrk(const char *,const char *);
 extern char * strtok(char *,const char *);
 extern char * strsep(char **,const char *);
+extern char * strsep_unescaped(char **,const char *);
 extern __kernel_size_t strspn(const char *,const char *);
 
 
diff --git a/lib/string.c b/lib/string.c
index 7548fd35810b..50f8e2f87c9f 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -455,6 +455,49 @@ char * strsep(char **s, const char *ct)
 #endif
 EXPORT_SYMBOL(strsep);
 
+/**
+ * strsep_unescaped - Split a string into tokens, while ignoring escaped delimiters
+ * @s: The string to be searched
+ * @ct: The delimiter characters to search for
+ *
+ * strsep_unescaped() behaves like strsep unless it meets an escaped delimiter.
+ * In that case, it shifts the string back in memory to overwrite the escape's
+ * backslash then continues the search until an unescaped delimiter is found.
+ */
+char *strsep_unescaped(char **s, const char *ct)
+{
+        char *sbegin = *s, *hay;
+        const char *needle;
+        size_t shift = 0;
+
+        if (sbegin == NULL)
+                return NULL;
+
+        for (hay = sbegin; *hay != '\0'; ++hay) {
+                *hay = hay[shift];
+
+                if (*hay == '\\') {
+                        *hay = hay[++shift];
+                        if (*hay != '\\')
+                                continue;
+                }
+
+                for (needle = ct; *needle != '\0'; ++needle) {
+                        if (*hay == *needle)
+                                goto match;
+                }
+        }
+
+        *s = NULL;
+        return sbegin;
+
+match:
+        *hay = '\0';
+        *s = &hay[shift + 1];
+
+        return sbegin;
+}
+
 #ifndef __HAVE_ARCH_STRSWAB
 /**
  * strswab - swap adjacent even and odd bytes in %NUL-terminated string
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
