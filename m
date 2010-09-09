Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OthgF-0003of-Qj
	for barebox@lists.infradead.org; Thu, 09 Sep 2010 14:00:51 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Sep 2010 15:59:51 +0200
Message-Id: <1284040793-32145-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100909135543.GF9112@game.jcrosoft.org>
References: <20100909135543.GF9112@game.jcrosoft.org>
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
Subject: [PATCH 5/7] add password framework
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig     |   28 +++++
 common/Makefile    |    1 +
 common/password.c  |  286 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/password.h |   41 ++++++++
 4 files changed, 356 insertions(+), 0 deletions(-)
 create mode 100644 common/password.c
 create mode 100644 include/password.h

diff --git a/common/Kconfig b/common/Kconfig
index 6556c62..ad70cde 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -264,6 +264,34 @@ config MENU
 	   a menu framework that allow us to create list menu to simplify
 	   barebox and make it more user-frendly
 
+config PASSWORD
+	bool
+	prompt "Password Framework"
+	select DIGEST
+	help
+	  allow you to have password protection framework
+
+if PASSWORD
+
+choice
+	prompt "passwd checksum"
+
+config PASSWD_SUM_MD5
+	bool "MD5"
+	select MD5
+
+config PASSWD_SUM_SHA1
+	bool "SHA1"
+	select SHA1
+
+config PASSWD_SUM_SHA256
+	bool "SHA256"
+	select SHA256
+
+endchoice
+
+endif
+
 config DYNAMIC_CRC_TABLE
 	bool
 	depends on CRC32
diff --git a/common/Makefile b/common/Makefile
index b087e3d..6e1c4c2 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -17,6 +17,7 @@ obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
 obj-$(CONFIG_MENU) += menu.o
+obj-$(CONFIG_PASSWORD) += password.o
 obj-$(CONFIG_MODULES) += module.o
 extra-$(CONFIG_MODULES) += module.lds
 
diff --git a/common/password.c b/common/password.c
new file mode 100644
index 0000000..cf36970
--- /dev/null
+++ b/common/password.c
@@ -0,0 +1,286 @@
+/*
+ * Copyright (c) 2008-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#include <common.h>
+#include <password.h>
+#include <errno.h>
+#include <readkey.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <digest.h>
+#include <malloc.h>
+#include <xfuncs.h>
+
+#if defined(CONFIG_PASSWD_SUM_MD5)
+#define PASSWD_SUM "md5"
+#elif defined(CONFIG_PASSWD_SUM_SHA1)
+#define PASSWD_SUM "sha1"
+#elif defined(CONFIG_PASSWD_SUM_SHA256)
+#define PASSWD_SUM "sha256"
+#endif
+
+int password(unsigned char *passwd, size_t length, int flags)
+{
+	unsigned char *buf = passwd;
+	int pos = 0;
+	unsigned char ch;
+
+	if (!passwd)
+		return -EINVAL;
+
+	do {
+		ch = getc();
+
+		switch (ch) {
+		case '\r':
+		case '\n':
+			*buf = '\0';
+			puts("\r\n");
+			return pos;
+		case '\0':
+		case '\t':
+			continue;
+		case CTL_CH('c'):
+			passwd[0] = '\0';
+			puts("\r\n");
+			return 0;
+		case CTL_CH('h'):
+		case KEY_DEL7:
+		case KEY_DEL:
+			if (flags & STAR && pos > 0)
+				puts("\b \b");
+			*buf = '\0';
+			buf--;
+			pos--;
+			continue;
+		default:
+			if (pos < length - 1) {
+				if (flags & STAR)
+					putchar('*');
+				else if (flags & CLEAR)
+					putchar(ch);
+
+				*buf = ch;
+				buf++;
+				pos++;
+			} else {
+				if (flags & STAR)
+					putchar('\a');
+			}
+		}
+	} while(1);
+}
+
+int is_passwd_enable(void)
+{
+	int fd;
+
+	fd = open(PASSWD_FILE, O_RDONLY);
+
+	if (fd < 0)
+		return 0;
+
+	close(fd);
+
+	return 1;
+}
+
+int passwd_disable(void)
+{
+	return unlink(PASSWD_FILE);
+}
+
+static unsigned char to_digit(unsigned char c)
+{
+	if (c >= '0' && c <= '9')
+		c -= '0';
+	else
+		c -= 'a' - 10;
+
+	return c;
+}
+
+static unsigned char to_hexa(unsigned char c)
+{
+	if (c < 10)
+		c += '0';
+	else
+		c += 'a' - 10;
+
+	return c;
+}
+
+int read_passwd(unsigned char *sum, size_t length)
+{
+	int fd;
+	int ret = 0;
+	unsigned char c;
+
+	if (!sum && length < 1)
+		return -EINVAL;
+
+	fd = open(PASSWD_FILE, O_RDONLY);
+
+	if (fd < 0)
+		return fd;
+
+	do {
+		ret = read(fd, &c, sizeof(char));
+
+		if (ret < 0)
+			goto exit;
+
+		*sum = to_digit(c) << 4;
+
+		ret = read(fd, &c, sizeof(char));
+
+		if (ret < 0)
+			goto exit;
+
+		*sum |= to_digit(c);
+		sum++;
+		length--;
+	} while(length > 0);
+
+exit:
+
+	ret = 0;
+
+	close(fd);
+
+	return ret;
+}
+
+int write_passwd(unsigned char *sum, size_t length)
+{
+	int fd;
+	unsigned char c;
+	int ret = 0;
+
+	if (!sum && length < 1)
+		return -EINVAL;
+
+	fd = open(PASSWD_DIR, O_RDONLY);
+
+	if (fd < 0)
+		mkdir(PASSWD_DIR, 644);
+
+	close(fd);
+
+	fd = open(PASSWD_FILE, O_WRONLY | O_CREAT, 600);
+
+	if (fd < 0)
+		return fd;
+
+	do {
+		c = to_hexa(*sum >> 4 & 0xf);
+
+		ret = write(fd, &c, sizeof(unsigned char));
+
+		if (ret < 0)
+			goto exit;
+
+		c = to_hexa(*sum & 0xf);
+
+		ret = write(fd, &c, sizeof(unsigned char));
+
+		if (ret < 0)
+			goto exit;
+
+		sum++;
+		length--;
+	} while(length > 0);
+
+	ret = 0;
+
+exit:
+	close(fd);
+
+	return ret;
+}
+
+int check_passwd(unsigned char* passwd, size_t length)
+{
+	struct digest *d;
+	unsigned char *passwd1_sum;
+	unsigned char *passwd2_sum;
+	int ret = 0;
+
+	d = digest_get_by_name(PASSWD_SUM);
+
+	passwd1_sum = calloc(d->length, sizeof(unsigned char));
+
+	if (!passwd1_sum)
+		return -ENOMEM;
+
+	passwd2_sum = calloc(d->length, sizeof(unsigned char));
+
+	if (!passwd2_sum) {
+		ret = -ENOMEM;
+		goto err1;
+	}
+
+	d->init(d);
+
+	d->update(d, passwd, length);
+
+	d->final(d, passwd1_sum);
+
+	ret = read_passwd(passwd2_sum, d->length);
+
+	if (ret < 0)
+		goto err2;
+
+	if (strncmp(passwd1_sum, passwd2_sum, d->length) == 0)
+		ret = 1;
+
+err2:
+	free(passwd2_sum);
+err1:
+	free(passwd1_sum);
+
+	return ret;
+}
+
+int set_passwd(unsigned char* passwd, size_t length)
+{
+	struct digest *d;
+	unsigned char *passwd_sum;
+	int ret;
+
+	d = digest_get_by_name(PASSWD_SUM);
+
+	passwd_sum = calloc(d->length, sizeof(unsigned char));
+
+	if (!passwd_sum)
+		return -ENOMEM;
+
+	d->init(d);
+
+	d->update(d, passwd, length);
+
+	d->final(d, passwd_sum);
+
+	ret = write_passwd(passwd_sum, d->length);
+
+	free(passwd_sum);
+
+	return ret;
+}
diff --git a/include/password.h b/include/password.h
new file mode 100644
index 0000000..32301eb
--- /dev/null
+++ b/include/password.h
@@ -0,0 +1,41 @@
+/*
+ * Copyright (c) 2008-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+
+#ifndef __PASSWORD_H__
+#define __PASSWORD_H__
+
+#define PASSWD_FILE		"/env/etc/passwd"
+#define PASSWD_DIR		"/env/etc/"
+
+#define HIDE	(0 << 0)
+#define STAR	(1 << 1)
+#define CLEAR	(1 << 2)
+
+int password(unsigned char *passwd, size_t length, int flags);
+
+int read_passwd(unsigned char *sum, size_t length);
+int write_passwd(unsigned char *sum, size_t length);
+
+int is_passwd_enable(void);
+int passwd_disable(void);
+int check_passwd(unsigned char* passwd, size_t length);
+int set_passwd(unsigned char* passwd, size_t length);
+
+#endif /* __PASSWORD_H__ */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
