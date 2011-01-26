Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pi8XE-0002m5-99
	for barebox@lists.infradead.org; Wed, 26 Jan 2011 16:47:57 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Jan 2011 17:46:02 +0100
Message-Id: <1296060364-23113-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110126164348.GF1441@game.jcrosoft.org>
References: <20110126164348.GF1441@game.jcrosoft.org>
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
Subject: [PATCH 1/3] string: add skip_spaces support
To: barebox@lists.infradead.org

need by parse_args for the command line parsing

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/string.h |    1 +
 lib/string.c           |   14 ++++++++++++++
 2 files changed, 15 insertions(+), 0 deletions(-)

diff --git a/include/linux/string.h b/include/linux/string.h
index 62d743e..b4b48fb 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -59,6 +59,7 @@ extern char * _strchr(const char *,int);
 #ifndef __HAVE_ARCH_STRRCHR
 extern char * _strrchr(const char *,int);
 #endif
+extern char * skip_spaces(const char *);
 #ifndef __HAVE_ARCH_STRSTR
 extern char * _strstr(const char *,const char *);
 #endif
diff --git a/lib/string.c b/lib/string.c
index 77435aa..5ffb861 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -214,6 +214,20 @@ char * _strrchr(const char * s, int c)
 #endif
 EXPORT_SYMBOL(_strrchr);
 
+/**
+ * skip_spaces - Removes leading whitespace from @str.
+ * @str: The string to be stripped.
+ *
+ * Returns a pointer to the first non-whitespace character in @str.
+ */
+char *skip_spaces(const char *str)
+{
+	while (isspace(*str))
+		++str;
+	return (char *)str;
+}
+EXPORT_SYMBOL(skip_spaces);
+
 #ifndef __HAVE_ARCH_STRLEN
 /**
  * strlen - Find the length of a string
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
