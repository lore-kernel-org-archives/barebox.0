Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPTDl-0002PG-Ba
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 08:16:19 +0000
Date: Fri, 27 Sep 2013 10:15:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130927081555.GL30088@pengutronix.de>
References: <1380174356-6399-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1380174356-6399-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] command: add read command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 26, 2013 at 07:45:56AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> +static int do_read(int argc, char *argv[])
> +{
> +	int opt;
> +	int cont = 0;
> +	int ret = -EINVAL;
> +	char *var;
> +	char *buf = xzalloc(2049);
> +	char *filename = NULL;
> +
> +	if (!argc)
> +		return COMMAND_ERROR_USAGE;
> +
> +	while((opt = getopt(argc, argv, "cf:")) > 0) {
> +		switch(opt) {
> +		case 'c':
> +			cont = 1;
> +			break;

Do you really need this continue mode? It makes this stuff look rather
flawy. For example one must know that this command is not reentrant. Not
that it's likely that someone parses a file while parsing another file,
but doing so would lead to strange results and is hard to fix.

BTW I had to do very similar stuff recently, see attached what I came up
with.

Sascha


From 5d513270e46c5705262d79c66cc630e20d1a66d9 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 22 Sep 2013 23:40:04 +0200
Subject: [PATCH] add function to read single line files

Often small files are used to store the value of a variable. This
adds a function to easily read such a variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libbb.h |  2 ++
 lib/libbb.c     | 42 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/include/libbb.h b/include/libbb.h
index 47b2e08..2fe710c 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -35,4 +35,6 @@ char *simple_itoa(unsigned int i);
 int write_full(int fd, void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
 
+char *read_file_line(const char *fmt, ...);
+
 #endif /* __LIBBB_H */
diff --git a/lib/libbb.c b/lib/libbb.c
index e0d7481..200629e 100644
--- a/lib/libbb.c
+++ b/lib/libbb.c
@@ -176,3 +176,45 @@ int read_full(int fd, void *buf, size_t size)
 	return insize;
 }
 EXPORT_SYMBOL(read_full);
+
+/*
+ * read_file_line - read a line from a file
+ *
+ * Used to compose a filename from a printf format and to read a line from this
+ * file. All leading and trailing whitespaces (including line endings) are
+ * removed. The returned buffer must be freed with free(). This function is
+ * supposed for reading variable like content into a buffer, so files > 1024
+ * bytes are ignored.
+ */
+char *read_file_line(const char *fmt, ...)
+{
+	va_list args;
+	char *filename;
+	char *buf, *line = NULL;
+	int size, ret;
+	struct stat s;
+
+	va_start(args, fmt);
+	filename = asprintf(fmt, args);
+	va_end(args);
+
+	ret = stat(filename, &s);
+	if (ret)
+		goto out;
+
+	if (s.st_size > 1024)
+		goto out;
+
+	buf = read_file(filename, &size);
+	if (!buf)
+		goto out;
+
+	line = strim(buf);
+
+	line = xstrdup(line);
+	free(buf);
+out:
+	free(filename);
+	return line;
+}
+EXPORT_SYMBOL_GPL(read_file_line);
-- 
1.8.4.rc3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
