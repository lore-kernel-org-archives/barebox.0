Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDAjl-0000WI-JZ
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 09:34:31 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 4F43B104E05F
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 10:45:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  6 Mar 2013 10:29:33 +0100
Message-Id: <1362562189-17783-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/20] Introduce application (app) support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile                    |   47 ++++-
 apps/Kconfig                |   21 +++
 apps/Makefile               |   19 ++
 apps/include/appinfo.h      |   58 ++++++
 arch/arm/Kconfig            |    1 +
 commands/Kconfig            |    7 +
 commands/Makefile           |    1 +
 commands/appinfo.c          |  119 +++++++++++++
 common/Kconfig              |    3 +
 include/apps/syscall_init.h |   23 +++
 include/apps/syscalls.h     |   76 ++++++++
 include/apps/types.h        |   24 +++
 include/linux/license.h     |   14 ++
 lib/Makefile                |    1 +
 lib/apps/Makefile           |    1 +
 lib/apps/syscalls.c         |  413 +++++++++++++++++++++++++++++++++++++++++++
 16 files changed, 825 insertions(+), 3 deletions(-)
 create mode 100644 apps/Kconfig
 create mode 100644 apps/Makefile
 create mode 100644 apps/include/appinfo.h
 create mode 100644 commands/appinfo.c
 create mode 100644 include/apps/syscall_init.h
 create mode 100644 include/apps/syscalls.h
 create mode 100644 include/apps/types.h
 create mode 100644 include/linux/license.h
 create mode 100644 lib/apps/Makefile
 create mode 100644 lib/apps/syscalls.c

diff --git a/Makefile b/Makefile
index 110f7aa..706a1d4 100644
--- a/Makefile
+++ b/Makefile
@@ -297,6 +297,18 @@ LINUXINCLUDE    := -Iinclude \
                    -include include/generated/autoconf.h \
                    -include $(srctree)/include/linux/kconfig.h
 
+# Use APPINCLUDE when you must reference the include/ directory.
+# Needed to be compatible with the O= option
+APPINCLUDE    := -Iapps/include \
+                   $(if $(KBUILD_SRC), -I$(srctree)/apps/include) \
+                   $(if $(KBUILD_SRC), -I$(objtree)/include) \
+		   -I$(srctree)/arch/$(ARCH)/include \
+		   -I$(objtree)/arch/$(ARCH)/include \
+		   -I$(srctree)/arch/$(ARCH)/apps/include \
+		   -I$(objtree)/apps/include \
+                   -include include/generated/autoconf.h \
+                   -include $(srctree)/include/linux/kconfig.h
+
 CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ -fno-builtin -ffreestanding
 
 CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
@@ -315,9 +327,10 @@ export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL UTS_MACHINE
 export HOSTCXX HOSTCXXFLAGS LDFLAGS_MODULE CHECK CHECKFLAGS
 
 export CPPFLAGS NOSTDINC_FLAGS LINUXINCLUDE OBJCOPYFLAGS LDFLAGS
-export AFLAGS_LINUXINCLUDE
+export APPINCLUDE AFLAGS_LINUXINCLUDE
 export CFLAGS CFLAGS_KERNEL
 export AFLAGS AFLAGS_KERNEL
+export APP_LDFLAGS
 
 # Files to ignore in find ... statements
 
@@ -482,7 +495,18 @@ export KBUILD_BINARY ?= barebox.bin
 barebox-flash-image: $(KBUILD_IMAGE) FORCE
 	$(call if_changed,ln)
 
-all: barebox-flash-image
+ifdef CONFIG_APPLICATIONS
+apps-lds    := $(apps-lds-y)
+export apps-lds
+
+apps := apps
+application: barebox-flash-image
+	$(Q)$(MAKE) $(build)=$(apps) $(apps)/$@
+
+APPS-y += application
+endif
+
+all: barebox-flash-image $(APPS-y)
 
 common-$(CONFIG_PBL_IMAGE)	+= pbl/
 
@@ -493,7 +517,7 @@ barebox-alldirs	:= $(sort $(barebox-dirs) $(patsubst %/,%,$(filter %/, \
 		     $(core-n) $(core-) $(drivers-n) $(drivers-) \
 		     $(net-n)  $(net-)  $(libs-n)    $(libs-))))
 
-app-common-y	:= $(patsubst %/, %/built-in-app.o, $(common-y))
+app-common-y	:= $(patsubst %/, %/built-in-app.o, $(common-y) apps/)
 pbl-common-y	:= $(patsubst %/, %/built-in-pbl.o, $(common-y))
 common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
 
@@ -840,6 +864,23 @@ ifneq ($(KBUILD_SRC),)
 		/bin/false; \
 	fi;
 	$(Q)if [ ! -d include2 ]; then mkdir -p include2; fi;
+	$(Q)if [ ! -d apps/include ]; then mkdir -p apps/include; fi;
+	$(Q)if [ ! -d apps/include/barebox ]; then mkdir -p apps/include/barebox; fi;
+	$(Q)if [ ! -h apps/include/linux ]; then  \
+	    ln -fsn $(srctree)/include/linux apps/include/linux;     \
+	    fi;
+	$(Q)if [ ! -h apps/include/asm-generic ]; then  \
+	    ln -fsn $(srctree)/include/asm-generic apps/include/asm-generic;     \
+	    fi;
+	$(Q)if [ ! -h apps/include/generated ]; then  \
+	    ln -fsn $(objtree)/include/generated apps/include/generated;     \
+	    fi;
+	$(Q)if [ ! -e apps/include/barebox/fcntl.h ]; then  \
+	    ln -fsn $(srctree)/include/fcntl.h apps/include/barebox/fcntl.h;     \
+	    fi;
+	$(Q)if [ ! -e apps/include/barebox/types.h ]; then  \
+	    ln -fsn $(srctree)/include/apps/types.h apps/include/barebox/types.h;     \
+	    fi;
 	$(Q)if [ -e $(srctree)/include/asm-$(SRCARCH)/barebox.h ]; then  \
 	    ln -fsn $(srctree)/include/asm-$(SRCARCH) include2/asm;     \
 	    fi
diff --git a/apps/Kconfig b/apps/Kconfig
new file mode 100644
index 0000000..92899b5
--- /dev/null
+++ b/apps/Kconfig
@@ -0,0 +1,21 @@
+menuconfig APPLICATIONS
+	bool "Applications"
+	depends on HAS_APPLICATIONS
+	depends on EXPERIMENTAL
+	help
+	  This option enables support for running applications.
+
+if APPLICATIONS
+
+menu "memory layout"
+
+source "arch/$SRCARCH/apps/Kconfig"
+
+config APP_MALLOC_SIZE
+	hex
+	default 0x400000
+	prompt "malloc area size"
+
+endmenu
+
+endif
diff --git a/apps/Makefile b/apps/Makefile
new file mode 100644
index 0000000..65adfdc
--- /dev/null
+++ b/apps/Makefile
@@ -0,0 +1,19 @@
+
+CPPFLAGS += -I$(srctree)/apps/include
+
+$(obj)/application: $(apps-lds) $(apps-y)
+
+APP_CPPFLAGS		+= -fdata-sections -ffunction-sections
+
+$(obj)/include/types.h: $(srctree)/include/types.h
+	$(call cmd,shipped)
+
+$(obj)/include/barebox/syscalls.h: $(srctree)/include/apps/syscalls.h
+	$(call cmd,shipped)
+
+$(obj)/include/errno.h: $(srctree)/include/asm-generic/errno.h
+	$(call cmd,shipped)
+
+barebox-app-header += $(obj)/include/types.h
+barebox-app-header += $(obj)/include/errno.h
+barebox-app-header += $(obj)/include/barebox/syscalls.h
diff --git a/apps/include/appinfo.h b/apps/include/appinfo.h
new file mode 100644
index 0000000..94409d7
--- /dev/null
+++ b/apps/include/appinfo.h
@@ -0,0 +1,58 @@
+#ifndef __APPINFO_H__
+#define __APPINFO_H__
+
+/* Indirect macros required for expanded argument pasting, eg. __LINE__. */
+#define ___PASTE(a,b) a##b
+#define __PASTE(a,b) ___PASTE(a,b)
+
+# define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), __LINE__)
+
+#define __APP_INFO(tag, name, info)	\
+ static const char __UNIQUE_ID(name)[] \
+ __attribute__((__used__))\
+ __attribute__((section(".appinfo"), unused, aligned(1))) = \
+ #tag "=" info;
+
+/* Generic info of form tag = "info" */
+#define APP_INFO(tag, info)	__APP_INFO(tag, tag, info)
+
+/*
+ * The following license idents are currently accepted as indicating free
+ * software applications
+*
+ *      "GPL"                           [GNU Public License v2 or later]
+ *      "GPL v2"                        [GNU Public License v2]
+ *      "GPL and additional rights"     [GNU Public License v2 rights and more]
+ *      "Dual BSD/GPL"                  [GNU Public License v2
+ *                                       or BSD license choice]
+ *      "Dual MIT/GPL"                  [GNU Public License v2
+ *                                       or MIT license choice]
+ *      "Dual MPL/GPL"                  [GNU Public License v2
+ *                                       or Mozilla license choice]
+ *
+ * The following other idents are available
+ *
+ *      "Proprietary"                   [Non free products]
+ *
+ * There are dual licensed components, but when running with Linux it is
+ * GPL that is relevant so this is a non issue. Similarly LGPL linked with GPL
+ * is a GPL combined work.
+ *
+ * This exists for several reasons
+ * 1.   So appinfo can show license info for users wanting to vet their setup 
+ *      is free
+ * 2.   So the community can ignore bug reports including proprietary applications
+ * 3.   So vendors can do likewise based on their own policies
+ */
+
+#define APP_LICENSE(_license)	APP_INFO(license, _license)
+/*
+ * Author(s), use "Name <email>" or just "Name", for multiple
+ * authors use multiple MODULE_AUTHOR() statements/lines.
+ */
+#define APP_AUTHOR(_author)	APP_INFO(author, _author)
+
+/* What your application does. */
+#define APP_DESCRIPTION(_description) APP_INFO(description, _description)
+
+#endif /* __APPINFO_H__ */
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 7ac134e..f25dcf7 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -236,3 +236,4 @@ source drivers/Kconfig
 source fs/Kconfig
 source lib/Kconfig
 source crypto/Kconfig
+source apps/Kconfig
diff --git a/commands/Kconfig b/commands/Kconfig
index c1454c7..b10a8c1 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -242,6 +242,13 @@ config CMD_FILETYPE
 	select FILETYPE
 	prompt "filetype"
 
+config CMD_APPINFO
+	tristate
+	depends on APPLICATIONS
+	prompt "appinfo"
+	help
+	  dump barebox applicaion info
+
 endmenu
 
 menu "console"
diff --git a/commands/Makefile b/commands/Makefile
index 0ae6b95..b9280eb 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,3 +1,4 @@
+obj-$(CONFIG_CMD_APPINFO)	+= appinfo.o
 obj-$(CONFIG_STDDEV)		+= stddev.o
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
diff --git a/commands/appinfo.c b/commands/appinfo.c
new file mode 100644
index 0000000..9736fce
--- /dev/null
+++ b/commands/appinfo.c
@@ -0,0 +1,119 @@
+/*
+ *
+ * Copyright (c) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <malloc.h>
+#include <errno.h>
+
+/*
+ * first search for #info and then we get the section size
+ * the #info is within the first 512 bytes of the file if present
+ */
+
+#define FILE_APP_BUF 512
+
+static int dump_apping(int fd, int offset, int size)
+{
+	char *buf, *tmp;
+	int ret;
+
+	tmp = buf = xzalloc(size);
+
+	ret = lseek(fd, offset, SEEK_SET);
+	if (ret < 0) {
+		perror("lseek");
+		goto err_out;
+	}
+
+	ret = read(fd, buf, size);
+	if (ret < 0) {
+		perror("read");
+		goto err_out;
+	}
+
+	for (; tmp < buf + size || !strcmp(tmp, "appinf#");
+			tmp += strlen(tmp) + 1) {
+		if (tstc())
+			break;
+		if (strlen(tmp) == 0)
+			break;
+		printf("%s\n", tmp);
+	}
+
+	ret = 0;
+
+err_out:
+	free(buf);
+
+	return ret;
+}
+
+static int do_appinfo(int argc, char *argv[])
+{
+	int fd;
+	char *buf, *tmp;
+	int ret = 1;
+
+	if (argc == 1)
+		return COMMAND_ERROR_USAGE;
+
+	fd = open(argv[1], O_RDONLY);
+
+	if (fd < 0) {
+		perror("open");
+		return fd;
+	}
+
+	tmp = buf = xzalloc(FILE_APP_BUF);
+
+	ret = read(fd, buf, FILE_APP_BUF);
+	if (ret < 0) {
+		perror("read");
+		goto err_out;
+	}
+
+	for (; ret-- ; ++tmp) {
+		if (*tmp != '#')
+			continue;
+
+		if (ret < 8)
+			goto no_app_info;
+
+		if (!strcmp(tmp, "#appinf")) {
+			int size = *((uint32_t*)(tmp + 8));
+			int offset = tmp - buf;
+
+			free(buf);
+			ret = dump_apping(fd, offset + 12, size);
+			goto out;
+		}
+	}
+
+no_app_info:
+	printf("no appinfo found\n");
+
+	ret = 0;
+err_out:
+	free(buf);
+out:
+	close(fd);
+
+	return ret;
+}
+
+BAREBOX_CMD_HELP_START(appinfo)
+BAREBOX_CMD_HELP_USAGE("appinfo <file>\n")
+BAREBOX_CMD_HELP_SHORT("display the barebox application information\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(appinfo)
+	.cmd		= do_appinfo,
+	.usage		= "display the barebox application informatio",
+	BAREBOX_CMD_HELP(cmd_appinfo_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index 3a55e01..6defdbe 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -21,6 +21,9 @@ config HAS_KALLSYMS
 config HAS_MODULES
 	bool
 
+config HAS_APPLICATIONS
+	bool
+
 config CMD_MEMORY
 	bool
 
diff --git a/include/apps/syscall_init.h b/include/apps/syscall_init.h
new file mode 100644
index 0000000..4c496ef
--- /dev/null
+++ b/include/apps/syscall_init.h
@@ -0,0 +1,23 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#ifndef __APPS_SYSCALL_INIT_H__
+#define __APPS_SYSCALL_INIT_H__
+
+#include <types.h>
+
+struct syscall_trace {
+	struct list_head dirs;
+	struct list_head fds;
+	void *dest;
+	uint64_t malloc_base;
+	uint32_t malloc_size;
+};
+
+void syscalls_init(struct syscall_trace *t);
+void syscalls_exit(struct syscall_trace *t);
+
+#endif /* __APPS_SYSCALL_INIT_H__ */
diff --git a/include/apps/syscalls.h b/include/apps/syscalls.h
new file mode 100644
index 0000000..e3b10a8
--- /dev/null
+++ b/include/apps/syscalls.h
@@ -0,0 +1,76 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#ifndef __APPS_SYSCALLS_H__
+#define __APPS_SYSCALLS_H__
+
+#include <types.h>
+#include <stdarg.h>
+
+#define SYSCALLS_MAGIC "bsyscall"
+
+#define SYS_putchar		0
+#define SYS_getchar		1
+#define SYS_eputc		2
+#define SYS_tstc		3
+
+/* file */
+#define SYS_open		4
+#define SYS_close		5
+#define SYS_read		6
+#define SYS_write		7
+#define SYS_unlink		8
+#define SYS_stat		9
+#define SYS_lstat		10
+#define SYS_lseek		11
+
+/* dir */
+#define SYS_mkdir		12
+#define SYS_rmdir		13
+#define SYS_getcwd		14
+#define SYS_chdir		15
+#define SYS_opendir		16
+#define SYS_readdir		17
+#define SYS_closedir		18
+
+/* symlink */
+#define SYS_symlink		19
+#define SYS_readlink		20
+
+/* mount */
+#define SYS_mount		21
+#define SYS_umount		22
+
+/* device */
+#define SYS_ioctl		23
+
+/* env */
+#define SYS_getenv		24
+#define SYS_setenv		25
+
+/* time */
+#define SYS_ndelay		26
+
+/* exec */
+#define SYS_system		27
+
+/* barebox */
+#define SYS_memmap		100
+
+#ifndef __ASSEMBLY__
+
+struct syscalls_header {
+	char			magic[8];
+	uint32_t		major;
+	uint32_t		minor;
+	uint64_t		malloc_base;
+	uint32_t		malloc_size;
+	uint32_t		nb_syscalls;
+	void			*syscalls;
+};
+#endif
+
+#endif /* __APPS_SYSCALLS_H__ */
diff --git a/include/apps/types.h b/include/apps/types.h
new file mode 100644
index 0000000..2bb6ee6
--- /dev/null
+++ b/include/apps/types.h
@@ -0,0 +1,24 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#ifndef __APPS_TYPES_H__
+#define __APPS_TYPES_H__
+
+#ifndef __APP__
+#define APP_TYPE_(x) APP_##x
+#else
+#define APP_TYPE_(x) x
+#endif
+
+struct APP_TYPE_(dirent) {
+	char d_name[256];
+};
+
+typedef struct APP_TYPE_(dir) {
+	struct APP_TYPE_(dirent) d;
+} APP_TYPE_(DIR);
+
+#endif /* __APPS_TYPES_H__ */
diff --git a/include/linux/license.h b/include/linux/license.h
new file mode 100644
index 0000000..decdbf4
--- /dev/null
+++ b/include/linux/license.h
@@ -0,0 +1,14 @@
+#ifndef __LICENSE_H
+#define __LICENSE_H
+
+static inline int license_is_gpl_compatible(const char *license)
+{
+	return (strcmp(license, "GPL") == 0
+		|| strcmp(license, "GPL v2") == 0
+		|| strcmp(license, "GPL and additional rights") == 0
+		|| strcmp(license, "Dual BSD/GPL") == 0
+		|| strcmp(license, "Dual MIT/GPL") == 0
+		|| strcmp(license, "Dual MPL/GPL") == 0);
+}
+
+#endif
diff --git a/lib/Makefile b/lib/Makefile
index 3c94542..731bc5b 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -42,3 +42,4 @@ obj-$(CONFIG_LIBMTD)	+= libmtd.o
 obj-y			+= gui/
 obj-$(CONFIG_XYMODEM)	+= xymodem.o
 obj-y			+= unlink-recursive.o
+obj-$(CONFIG_APPLICATIONS)	+= apps/
diff --git a/lib/apps/Makefile b/lib/apps/Makefile
new file mode 100644
index 0000000..86e7071
--- /dev/null
+++ b/lib/apps/Makefile
@@ -0,0 +1 @@
+obj-y += syscalls.o
diff --git a/lib/apps/syscalls.c b/lib/apps/syscalls.c
new file mode 100644
index 0000000..832ba02
--- /dev/null
+++ b/lib/apps/syscalls.c
@@ -0,0 +1,413 @@
+/*
+ * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPLv2 only
+*/
+
+#include <common.h>
+#include <fs.h>
+#include <apps/syscalls.h>
+#include <apps/syscall_init.h>
+#include <apps/types.h>
+#include <linux/stat.h>
+#include <environment.h>
+#include <malloc.h>
+#include <clock.h>
+
+static struct syscall_trace *st_current;
+/* 
+ * keep traking of what is open to close it
+ * when returning
+ */
+struct app_dir_opendir {
+	DIR *d;
+	APP_TYPE_(DIR) *app_d;
+	struct list_head list;
+};
+
+struct app_fd_open {
+	int fd;
+	struct list_head list;
+};
+
+static long sys_putchar(char c)
+{
+	putchar(c);
+
+	return 0;
+}
+
+static long sys_getchar(void)
+{
+	return getc();
+}
+
+static long sys_eputc(char c)
+{
+	eputc(c);
+
+	return 0;
+}
+
+static long sys_tstc(void)
+{
+	return tstc();
+}
+
+static struct app_fd_open *sys_get_file(int fd)
+{
+	struct app_fd_open *af;
+
+	list_for_each_entry(af, &(st_current->fds), list) {
+		if (af->fd == fd)
+			return af;
+	}
+
+	return NULL;
+}
+
+/* barebox does not handle the last optionnal arg */
+static long sys_open(const char *filename, int flags, mode_t mode)
+{
+	struct app_fd_open *af;
+	int fd;
+
+	af = calloc(1, sizeof(*af));
+	if (!af)
+		return -ENOMEM;
+
+	fd = open(filename, flags, mode);
+	if (fd < 3) {
+		free(af);
+	} else {
+		af->fd = fd;
+		list_add_tail(&af->list, &st_current->fds);
+	}
+
+	return fd;
+}
+
+static long sys_close(unsigned int fd)
+{
+	struct app_fd_open *af;
+
+	if (fd > 2) {
+		af = sys_get_file(fd);
+		if (!af)
+			return -EINVAL;
+
+		list_del(&af->list);
+	}
+
+	return close(fd);
+}
+
+static long sys_read(unsigned int fd, char *buf, size_t count)
+{
+	return read(fd, buf, count);
+}
+
+static long sys_write(unsigned int fd, char *buf, size_t count)
+{
+	return write(fd, buf, count);
+}
+
+static long sys_unlink(const char *name)
+{
+	return unlink(name);
+}
+
+static long sys_stat(const char *name, struct stat *s)
+{
+	return lstat(name, s);
+}
+
+static long sys_lstat(const char *name, struct stat *s)
+{
+	return lstat(name, s);
+}
+
+static loff_t sys_lseek(int fd, loff_t offset, int whence)
+{
+	return lseek(fd, offset, whence);
+}
+
+static long sys_mkdir(char *name, mode_t mode)
+{
+	return mkdir(name, mode);
+}
+
+static long sys_rmdir(char *name)
+{
+	return rmdir(name);
+}
+
+/* int getcwd(char* buf, size_t size) */
+static long sys_getcwd(char* buf, size_t size)
+{
+	const char *path;
+	int len;
+
+	if (!buf)
+		return -ENOMEM;
+
+	path = getcwd();
+	len = strlen(path);
+
+	strncpy(buf, path, min(len, (int)size));
+
+	return 0;
+}
+
+static long sys_chdir(char *name)
+{
+	return chdir(name);
+}
+
+static struct app_dir_opendir *sys_get_dir(APP_TYPE_(DIR) *d)
+{
+	struct app_dir_opendir *ad;
+
+	list_for_each_entry(ad, &st_current->dirs, list) {
+		if (ad->app_d == d)
+			return ad;
+	}
+
+	return NULL;
+}
+
+/*
+ * int opendir(DIR *, char *name)
+ *
+ * Do not expose barebox internal struct
+ */
+static long sys_opendir(APP_TYPE_(DIR) *dir, const char *name)
+{
+	DIR *d;
+	struct app_dir_opendir *ad;
+	int ret;
+
+	ad = calloc(1, sizeof(*ad));
+	if (!ad)
+		return -ENOMEM;
+
+
+	d = opendir(name);
+	if (!d) {
+		ret = -ENOENT;
+		goto err;
+	}
+
+	strcpy(dir->d.d_name, d->d.d_name);
+
+	ad->app_d = dir;
+	ad->d = d;
+
+	list_add_tail(&ad->list, &st_current->dirs);
+
+	return 0;
+
+err:
+	free(ad);
+	return ret;
+}
+
+static long sys_readdir(APP_TYPE_(DIR) *app_dir, struct APP_TYPE_(dirent) *app_d)
+{
+	struct app_dir_opendir *ad;
+	struct dirent *d;
+
+	ad = sys_get_dir(app_dir);
+	if (!ad) {
+		app_d = NULL;
+		return -EINVAL;
+	}
+
+	d = readdir(ad->d);
+
+	if (!d || !d->d_name) {
+		app_d = NULL;
+		return -ENOENT;
+	}
+
+	strcpy(app_d->d_name, d->d_name);
+
+	return 0;
+}
+
+static long sys_closedir(APP_TYPE_(DIR) *app_dir)
+{
+	struct app_dir_opendir *ad;
+	int ret;
+
+	ad = sys_get_dir(app_dir);
+	if (!ad)
+		return -EINVAL;
+
+	ret = closedir(ad->d);
+
+	list_del(&ad->list);
+
+	return ret;
+}
+
+static long sys_symlink(const char *src, const char *dest)
+{
+	return symlink(src, dest);
+}
+
+static long sys_readlink(const char * path, char * buf, u32 bufsiz)
+{
+	return readlink(path, buf, bufsiz);
+}
+
+/*
+ * libc mount
+ * int mount(const char *source, const char *target,
+ *           const char *fstype, unsigned long mountflags,
+ *	     const void *data);
+ * barebox
+ * int mount(const char *device, const char *fsname, const char *_path)
+ */
+static long sys_mount(char *dev_name, char *dir_name,
+		char *type, unsigned long flags,
+		void *data)
+{
+	return mount(dev_name, type, dir_name);
+}
+
+static long sys_umount(char *name, int flags)
+{
+	return umount(name);
+}
+
+static long sys_ioctl(unsigned int fd, unsigned int cmd,
+				unsigned long arg)
+{
+	return ioctl(fd, cmd, (void*)arg);
+}
+
+static long sys_getenv(char *value, const char *name)
+{
+	strcpy(value, getenv(name));
+
+	return 0;
+}
+
+static long sys_setenv(const char *name, const char *value)
+{
+	return setenv(name, value);
+}
+
+static long sys_ndelay(unsigned long nsecs)
+{
+	uint64_t start = get_time_ns();
+
+	while(!is_timeout(start, nsecs));
+
+	return 0;
+}
+
+static long sys_nil(unsigned long arg0, unsigned long arg1, unsigned long arg2)
+{
+	pr_err("%s(0x%lx, 0x%lx, 0x%lx)\n", __func__, arg0, arg1, arg2);
+	return -ENOSYS;
+}
+
+#define __SYSCALL(name) [SYS_##name] = sys_##name
+
+static void *sys_funcs[] = {
+	__SYSCALL(putchar),
+	__SYSCALL(getchar),
+	__SYSCALL(eputc),
+	__SYSCALL(tstc),
+	/* file */
+	__SYSCALL(open),
+	__SYSCALL(close),
+	__SYSCALL(read),
+	__SYSCALL(write),
+	__SYSCALL(unlink),
+	__SYSCALL(stat),
+	__SYSCALL(lstat),
+	__SYSCALL(lseek),
+	/* dir */
+	__SYSCALL(mkdir),
+	__SYSCALL(rmdir),
+	__SYSCALL(getcwd),
+	__SYSCALL(chdir),
+	__SYSCALL(opendir),
+	__SYSCALL(readdir),
+	__SYSCALL(closedir),
+	/* symlink */
+	__SYSCALL(symlink),
+	__SYSCALL(readlink),
+	/* mount */
+	__SYSCALL(mount),
+	__SYSCALL(umount),
+	/* device */
+	__SYSCALL(ioctl),
+	/* env */
+	__SYSCALL(getenv),
+	__SYSCALL(setenv),
+	/* env */
+	__SYSCALL(ndelay),
+};
+
+struct syscalls_header syscalls = {
+	.magic = SYSCALLS_MAGIC,
+	.major = 1,
+	.minor = 0,
+	.nb_syscalls = ARRAY_SIZE(sys_funcs),
+	.syscalls = sys_funcs,
+};
+
+void syscalls_init(struct syscall_trace *t)
+{
+	struct syscalls_header *app_syscalls = t->dest;
+	int size = sizeof(syscalls);
+	void **dest;
+	int i;
+
+	pr_debug("t->dest = 0x%p\n", t->dest);
+
+	pr_debug("sizeof = %d\n", size);
+	memcpy(t->dest, &syscalls, sizeof(syscalls));
+
+	app_syscalls->malloc_base = t->malloc_base;
+	app_syscalls->malloc_size = t->malloc_size;
+	dest = t->dest + size;
+
+	size = sizeof(void*) * syscalls.nb_syscalls;
+	pr_debug("dest = 0x%p\n", dest);
+	pr_debug("size = %d\n", size);
+
+	app_syscalls->syscalls = dest;
+	memcpy(dest, sys_funcs, size);
+
+	for (i = 0; i < syscalls.nb_syscalls; i++) {
+		if (!dest[i]) {
+			pr_debug("syscall %d not implemented\n", i);
+			dest[i] = sys_nil;
+		}
+	}
+
+	INIT_LIST_HEAD(&t->dirs);
+	INIT_LIST_HEAD(&t->fds);
+}
+
+void syscalls_exit(struct syscall_trace *t)
+{
+	struct app_dir_opendir *ad, *tmpd;
+	struct app_fd_open *af, *tmpf;
+
+	list_for_each_entry_safe(ad, tmpd, &t->dirs, list) {
+		closedir(ad->d);
+		list_del(&ad->list);
+	}
+
+	list_for_each_entry_safe(af, tmpf, &t->fds, list) {
+		close(af->fd);
+		list_del(&af->list);
+	}
+}
+
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
