Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo4.mail-out.ovh.net ([178.32.98.131]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjl-0000WM-Ka
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:34:23 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 13E85104E77B
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:36 +0100
Message-Id: <1362562189-17783-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/20] app: Introduce example application
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 apps/Kconfig           |    3 +
 apps/Makefile          |    5 ++
 apps/example/Makefile  |   14 +++
 apps/example/example.h |    7 ++
 apps/example/list.c    |   98 ++++++++++++++++++++
 apps/example/ls.c      |  127 ++++++++++++++++++++++++++
 apps/example/main.c    |  231 ++++++++++++++++++++++++++++++++++++++++++++++++
 apps/example/setjmp.c  |   24 +++++
 8 files changed, 509 insertions(+)
 create mode 100644 apps/example/Makefile
 create mode 100644 apps/example/example.h
 create mode 100644 apps/example/list.c
 create mode 100644 apps/example/ls.c
 create mode 100644 apps/example/main.c
 create mode 100644 apps/example/setjmp.c

diff --git a/apps/Kconfig b/apps/Kconfig
index 4805c50..324e14d 100644
--- a/apps/Kconfig
+++ b/apps/Kconfig
@@ -37,4 +37,7 @@ config APP_FILE_MAX
 
 endmenu
 
+config APP_EXAMPLE
+	bool "example"
+
 endif
diff --git a/apps/Makefile b/apps/Makefile
index 28efb0d..7f609e7 100644
--- a/apps/Makefile
+++ b/apps/Makefile
@@ -5,6 +5,8 @@ export APP_CPPFLAGS
 
 apps-$(CONFIG_APP_EXAMPLE) += example
 
+apps-$(CONFIG_APP_EXAMPLE) += example
+
 $(obj)/application: $(apps-lds) $(apps-y)
 
 APP_CPPFLAGS		+= -fdata-sections -ffunction-sections
@@ -20,3 +22,6 @@ obj-y += utils/
 
 barebox-app-header += $(obj)/include/types.h
 barebox-app-header += $(obj)/include/barebox/syscalls.h
+
+$(apps-y): $(barebox-app-header) $(barebox-app-common)
+	$(Q)$(MAKE) $(build)=apps/$@ apps/$@/$@.app
diff --git a/apps/example/Makefile b/apps/example/Makefile
new file mode 100644
index 0000000..22f8d68
--- /dev/null
+++ b/apps/example/Makefile
@@ -0,0 +1,14 @@
+targets := example.map
+
+# Make sure files are removed during clean
+extra-y       += example.map
+
+app-y += main.o
+app-y += ls.o
+app-y += list.o
+app-y += setjmp.o
+app-final-y = example
+
+OBJCOPYFLAGS_example.app = -O binary
+LDFLAGS_apps	:= -Map $(obj)/example.map
+LDFLAGS_apps	+= -static --gc-sections
diff --git a/apps/example/example.h b/apps/example/example.h
new file mode 100644
index 0000000..34675b4
--- /dev/null
+++ b/apps/example/example.h
@@ -0,0 +1,7 @@
+
+#define LS_RECURSIVE	1
+#define LS_SHOWARG	2
+#define LS_COLUMN	4
+int ls(const char *path, ulong flags);
+void test_list(void);
+void test_setjmp(void);
diff --git a/apps/example/list.c b/apps/example/list.c
new file mode 100644
index 0000000..fd5662d
--- /dev/null
+++ b/apps/example/list.c
@@ -0,0 +1,98 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#include <stdio.h>
+#include <string.h>
+#include <appinfo.h>
+#include <utils/list.h>
+
+#define ARRAY_SIZE(arr)                (sizeof(arr) / sizeof((arr)[0]))
+
+static LIST_HEAD(test);
+
+struct data {
+	char *name;
+	struct list_entry list;
+};
+
+struct data data[] = {
+	[0] = { .name = "data0", },
+	[1] = { .name = "data1", },
+	[2] = { .name = "data2", },
+	[3] = { .name = "data3", },
+};
+
+static void dump_list(void)
+{
+	struct list_entry *pos;
+	struct data *d;
+	int i;
+
+	i = 0;
+	list_for_each(pos, test) {
+		printf("data[%d].list = %p\n", i, pos);
+		i++;
+	}
+
+	i = 0;
+	list_for_each_entry(d, &test, list) {
+		printf("data[%d].name = %s\n", i, d->name);
+		printf("data[%d].list = %p\n", i, &d->list);
+		i++;
+	}
+}
+
+static void empty_list(void)
+{
+	struct data *d, *tmp;
+	int i;
+
+	i = 0;
+	list_for_each_entry_safe(d, tmp, &test, list) {
+		printf("data[%d].name = %s\n", i, d->name);
+		printf("data[%d].list = %p\n", i, &d->list);
+		list_del(&d->list);
+		i++;
+	}
+}
+
+void test_list(void)
+{
+	int i;
+
+	puts("------ list test ------\n");
+
+	puts("fill list\n");
+
+	for (i = 0; i < ARRAY_SIZE(data); i++) {
+		printf("data[%d].name = %s\n", i, data[i].name);
+		printf("data[%d].list = %p\n", i, &data[i].list);
+		list_add(&data[i].list, &test);
+	}
+
+	puts("dump list\n");
+	dump_list();
+	puts("remove entry 2\n");
+	list_del(&data[2].list);
+	puts("dump list\n");
+	dump_list();
+	puts("empty list\n");
+	empty_list();
+	puts("dump list\n");
+	dump_list();
+	printf("list is %s\n", list_empty(&test) ? "empty" : "filled");
+
+	puts("fill list tail\n");
+	for (i = 0; i < ARRAY_SIZE(data); i++) {
+		printf("data[%d].name = %s\n", i, data[i].name);
+		printf("data[%d].list = %p\n", i, &data[i].list);
+		list_add_tail(&data[i].list, &test);
+	}
+	puts("dump list\n");
+	dump_list();
+
+	puts("------ end ------\n\n");
+}
diff --git a/apps/example/ls.c b/apps/example/ls.c
new file mode 100644
index 0000000..bad0ccb
--- /dev/null
+++ b/apps/example/ls.c
@@ -0,0 +1,127 @@
+/*
+ * Copyright (C) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+ */
+
+#include <sys/stat.h>
+#include <sys/types.h>
+#include <dirent.h>
+#include <errno.h>
+#include <limits.h>
+#include <malloc.h>
+#include <stdio.h>
+#include <string.h>
+#include <unistd.h>
+
+#include "example.h"
+
+static char *mkmodestr(unsigned long mode, char *str)
+{
+	static const char *l = "xwr";
+	int mask = 1, i;
+	char c;
+
+	switch (mode & S_IFMT) {
+		case S_IFDIR:    str[0] = 'd'; break;
+		case S_IFBLK:    str[0] = 'b'; break;
+		case S_IFCHR:    str[0] = 'c'; break;
+		case S_IFIFO:    str[0] = 'f'; break;
+		case S_IFLNK:    str[0] = 'l'; break;
+		case S_IFSOCK:   str[0] = 's'; break;
+		case S_IFREG:    str[0] = '-'; break;
+		default:         str[0] = '?';
+	}
+
+	for(i = 0; i < 9; i++) {
+		c = l[i%3];
+		str[9-i] = (mode & mask)?c:'-';
+		mask = mask<<1;
+	}
+
+	if(mode & S_ISUID) str[3] = (mode & S_IXUSR)?'s':'S';
+	if(mode & S_ISGID) str[6] = (mode & S_IXGRP)?'s':'S';
+	if(mode & S_ISVTX) str[9] = (mode & S_IXOTH)?'t':'T';
+	str[10] = '\0';
+	return str;
+}
+
+static void ls_one(const char *path, const char* fullname, struct stat *s)
+{
+	char modestr[11];
+	unsigned int namelen = strlen(path);
+
+	mkmodestr(s->st_mode, modestr);
+	printf("%s %10llu %*.*s", modestr, s->st_size, namelen, namelen, path);
+
+	if (S_ISLNK(s->st_mode)) {
+		char realname[PATH_MAX];
+
+		memset(realname, 0, PATH_MAX);
+
+		if (readlink(fullname, realname, PATH_MAX - 1) >= 0)
+			printf(" -> %s", realname);
+	}
+
+	puts("\n");
+}
+
+int ls(const char *path, ulong flags)
+{
+	DIR *dir;
+	struct dirent *d;
+	char tmp[PATH_MAX];
+	struct stat s;
+
+	if (lstat(path, &s))
+		return -1;
+
+	if (flags & LS_SHOWARG && s.st_mode & S_IFDIR)
+		printf("%s:\n", path);
+
+	if (!(s.st_mode & S_IFDIR)) {
+		ls_one(path, path, &s);
+		return 0;
+	}
+
+	dir = opendir(path);
+	if (!dir)
+		return -1;
+
+	while ((d = readdir(dir))) {
+		sprintf(tmp, "%s/%s", path, d->d_name);
+		if (!strlen(d->d_name))
+			break;
+		if (lstat(tmp, &s))
+			goto out;
+		ls_one(d->d_name, tmp, &s);
+	}
+
+	closedir(dir);
+
+	if (!(flags & LS_RECURSIVE))
+		return 0;
+
+	dir = opendir(path);
+	if (!dir) 
+		return -ENOENT;
+
+	while ((d = readdir(dir))) {
+
+		if (!strcmp(d->d_name, "."))
+			continue;
+		if (!strcmp(d->d_name, ".."))
+			continue;
+		sprintf(tmp, "%s/%s", path, d->d_name);
+
+		if (lstat(tmp, &s))
+			goto out;
+		if (s.st_mode & S_IFDIR)
+			ls(tmp, flags);
+	}
+out:
+	closedir(dir);
+
+	return 0;
+}
diff --git a/apps/example/main.c b/apps/example/main.c
new file mode 100644
index 0000000..12fb7f0
--- /dev/null
+++ b/apps/example/main.c
@@ -0,0 +1,231 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#include <stdio.h>
+#include <malloc.h>
+#include <appinfo.h>
+#include <unistd.h>
+#include <string.h>
+#include <fcntl.h>
+#include <sections.h>
+#include <sys/stat.h>
+
+#include "example.h"
+
+# define PUTHEX_LL(value)  ({ unsigned long v = (unsigned long) (value); \
+			     int i; unsigned char ch; \
+			     for (i = 8; i--; ) {\
+			     ch = ((v >> (i*4)) & 0xf);\
+			     ch += (ch >= 10) ? 'a' - 10 : '0';\
+			     putchar(ch); }})
+static void test_ls(void)
+{
+	puts(
+		"------ test 1 ------ \n"
+		"coverage:\n"
+		" - opendir/readdir/closedir\n"
+		" - lstat\n"
+		" - readlink\n"
+		"------ start ------ \n");
+
+	puts("ls -l /env/config\n");
+	ls("/env/config", 0);
+	puts("ls -l /dev\n");
+	ls("/dev", 0);
+	puts("ls -l /env\n");
+	ls("/env", 0);
+	puts("------ end ------\n\n");
+}
+
+static void print_ok_failed(int ret)
+{
+	if (ret)
+		printf("failed (%d)\n", ret);
+	else
+		puts(" => OK\n");
+}
+
+static void test_mkdir(void)
+{
+	int fd;
+	int ret;
+	char *test = "/test";
+	char *test_tmp = "/test/tmp";
+	char *readme_txt = "/test/readme.txt";
+	char *readme = "/test/readme";
+	char *txt = "test barebox app\n";
+
+	puts(
+		"------ test 2 ------ \n"
+		"coverage:\n"
+		" - mkdir/rmdir\n"
+		" - open/write\n"
+		" - symlink/unlink\n"
+		"------ start ------ \n");
+
+	printf("mkdir %s ", test);
+	ret = mkdir(test, 0666);
+	print_ok_failed(ret);
+	if (ret)
+		return;
+
+	printf("create %s ", readme_txt);
+	fd = open(readme_txt, O_CREAT | O_WRONLY);
+	if (fd >= 0) {
+		puts(" => OK\n");
+		ret = write(fd, txt, strlen(txt) + 1);
+		if (!ret)
+			printf("fprintf on fd=%d failer (%d)\n", fd, ret);
+		close(fd);
+	} else {
+		printf("failed (%d)\n", fd);
+	}
+
+	printf("ln -s %s %s ", readme_txt, readme);
+	ret = symlink(readme_txt, readme);
+	print_ok_failed(ret);
+
+	printf("mkdir %s ", test_tmp);
+	ret = mkdir(test_tmp, 0666);
+	print_ok_failed(ret);
+
+	printf("ls -l %s\n", test);
+	ls(test, 0);
+
+	if (!ret) {
+		printf("rmdir %s ", test_tmp);
+		ret = rmdir(test_tmp);
+		print_ok_failed(ret);
+	}
+
+	printf("unlink %s ", readme);
+	ret = unlink(readme);
+	print_ok_failed(ret);
+
+	printf("ls -l %s\n", test);
+	ls(test, 0);
+
+	puts("------ end ------\n\n");
+}
+
+static void test_printf(int argc, char **argv)
+{
+	int i;
+	char *test;
+
+	puts("hello world\n");
+	test = malloc(10);
+	puts("mallox of 10 => 0x");
+	PUTHEX_LL(test);
+	puts("\n");
+
+	puts("------ printf test ------\n");
+
+	for (i = 0; i < argc; i++)
+		printf("argv[%d] = %s\n", i, argv[i]);
+
+	printf("mallox of %d => %p\n", 10, test);
+	puts("------ end ------\n\n");
+}
+
+static void test_all(int argc, char **argv)
+{
+	test_printf(argc, argv);
+	test_ls();
+	test_mkdir();
+	test_list();
+	test_setjmp();
+}
+
+void usage(char *name)
+{
+	printf("%s: [-VplmLh]\n"
+	"-V             dump app info\n"
+	"-p             run printf test\n"
+	"-l             run ls test\n"
+	"-m             run mkdir test\n"
+	"-L             run list test\n"
+	"-j             run setjmp test\n"
+	"-h             print help\n", name);
+}
+
+int main(int argc, char** argv)
+{
+	int i;
+	int opt;
+	bool do_test_printf = false;
+	bool do_test_ls = false;
+	bool do_test_mkdir = false;
+	bool do_test_list = false;
+	bool do_test_setjmp = false;
+	bool do_test_all = true;
+
+	for (i = 0; i < argc; i++) {
+		puts("argv[0x");
+		PUTHEX_LL(i);
+		puts("] = ");
+		puts(argv[i]);
+		puts("\n");
+	}
+
+	while ((opt = getopt(argc, argv, "VplmLhj")) > 0) {
+		switch (opt) {
+		case 'V':
+			print_appinfo();
+			break;
+		case 'p':
+			do_test_all = false;
+			do_test_printf = true;
+			break;
+		case 'l':
+			do_test_all = false;
+			do_test_ls = true;
+			break;
+		case 'm':
+			do_test_all = false;
+			do_test_mkdir = true;
+			break;
+		case 'L':
+			do_test_all = false;
+			do_test_list = true;
+			break;
+		case 'j':
+			do_test_all = false;
+			do_test_setjmp = true;
+			break;
+		case 'h':
+			usage(argv[0]);
+			return 0;
+			break;
+		default:
+			break;
+		}
+	}
+
+	puts("------ start ------\n\n");
+	if (do_test_all) {
+		test_all(argc, argv);
+		return 0;
+	}
+
+	if (do_test_printf)
+		test_printf(argc, argv);
+	if (do_test_ls)
+		test_ls();
+	if (do_test_ls)
+		test_mkdir();
+	if (do_test_list)
+		test_list();
+	if (do_test_setjmp)
+		test_setjmp();
+	puts("------ end ------\n\n");
+
+	return 0;
+}
+
+APP_LICENSE("GPL");
+APP_DESCRIPTION("barebox Application example");
+APP_AUTHOR("Jean-Chrristophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>");
diff --git a/apps/example/setjmp.c b/apps/example/setjmp.c
new file mode 100644
index 0000000..4dee83c
--- /dev/null
+++ b/apps/example/setjmp.c
@@ -0,0 +1,24 @@
+#include <stdio.h>
+#include <setjmp.h>
+
+static jmp_buf buf;
+
+void second(void) {
+	printf("second\n");
+	longjmp(buf, 1);
+}
+
+void first(void) {
+	second();
+	printf("first not reach\n");
+}
+
+void test_setjmp(void)
+{
+	puts("------ setjmp/longjmp test ------\n");
+	if (!setjmp(buf))
+		first();
+	else
+		printf("main\n");
+	puts("------ end ------\n\n");
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
