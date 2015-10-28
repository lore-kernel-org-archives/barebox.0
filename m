Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x231.google.com ([2607:f8b0:4001:c05::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZrVZ6-0005XF-Pp
 for barebox@lists.infradead.org; Wed, 28 Oct 2015 18:35:19 +0000
Received: by igpw7 with SMTP id w7so10475047igp.0
 for <barebox@lists.infradead.org>; Wed, 28 Oct 2015 11:34:54 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 28 Oct 2015 11:34:36 -0700
Message-Id: <1446057278-20538-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2] ARM: Add support for semihosting
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add semihosting API implementation and implement a filesystem driver
to access debugging host filesystem using it.

Tested on Freescale SabreSD board (i.MX6Q) using OpenOCD

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

New in version 2:

 - Added documntation for host side setup needed (including no MMU limitation for OpenOCD)
 - Fixed a small bug, where errno values were not negated
 - Fixed compilation errors of the previous patch


 Documentation/filesystems/smhfs.rst |  57 +++++++++
 arch/arm/Kconfig                    |   9 ++
 arch/arm/include/asm/semihosting.h  |  19 +++
 arch/arm/lib/Makefile               |   1 +
 arch/arm/lib/semihosting-trap.S     |  28 +++++
 arch/arm/lib/semihosting.c          | 227 ++++++++++++++++++++++++++++++++++++
 fs/Kconfig                          |   9 ++
 fs/Makefile                         |   1 +
 fs/smhfs.c                          | 178 ++++++++++++++++++++++++++++
 9 files changed, 529 insertions(+)
 create mode 100644 Documentation/filesystems/smhfs.rst
 create mode 100644 arch/arm/include/asm/semihosting.h
 create mode 100644 arch/arm/lib/semihosting-trap.S
 create mode 100644 arch/arm/lib/semihosting.c
 create mode 100644 fs/smhfs.c

diff --git a/Documentation/filesystems/smhfs.rst b/Documentation/filesystems/smhfs.rst
new file mode 100644
index 0000000..28de146
--- /dev/null
+++ b/Documentation/filesystems/smhfs.rst
@@ -0,0 +1,57 @@
+.. index:: smhfs (filesystem)
+
+.. _filesystems_smhfs:
+
+File I/O over ARM semihosting support
+=====================================
+
+Target Side Setup
+-----------------
+
+barebox can communicate with debug programms attached via SWD/JTAG by
+means of ARM semihosting protocol.
+
+Not all of the I/O primitives neccessary to implement a full
+filesystem are exposed in ARM semihosting API and because of that some
+aspects of filesystem funcionality are missing. Implementation does
+not have support for listing directories. This means a
+:ref:`command_ls` to a SMHFS-mounted path will show an empty
+directory. Nevertheless, the files are there.
+
+Example::
+
+  mount -t smhfs /dev/null /mnt/smhfs
+
+
+Host Side Setup
+---------------
+
+FIXME: Currently OpenOCD does not work correctly if Barebox is built
+with MMU enabled, so before using this featrue, please make sure that
+MMU is disabled in your particular configuration
+
+To make semihosting work host machine connected to the target via
+JTAG/SWD must have semihosting capable debug software running. One
+such tool would be OpenOCD. For ARM9 and ARM11 CPUs most recent
+release of OpenOCD should suffice, however for ARMv7A based devices
+patched version from here http://openocd.zylin.com/#/c/2908/ has to be
+used.
+
+The following steps are required to set up a operational semihosting
+channel:
+
+      1. In a terminal start OpenOCD and specify your particular board
+         and debug adapter used.
+
+      2. In a separate terminal connect to OpenOCD via telnet
+
+	   telnet localhost 4444
+
+      3. In resulting telnet session execute the following commands:
+
+           halt
+	   arm semihosting on
+	   resume
+
+After that is done all of the semihosting related functions should be
+ready to use.
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 304b6e6..1bccca3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -326,6 +326,15 @@ config ARM_UNWIND
 	  the performance is not affected. Currently, this feature
 	  only works with EABI compilers. If unsure say Y.

+config ARM_SEMIHOSTING
+	bool "enable ARM semihosting support"
+	help
+	  This option enables ARM semihosting support in barebox. ARM
+	  semihosting is a communication discipline that allows code
+	  running on target ARM cpu perform system calls and access
+	  the data on the host computer connected to the target via
+	  debugging channel (JTAG, SWD). If unsure say N
+
 endmenu

 source common/Kconfig
diff --git a/arch/arm/include/asm/semihosting.h b/arch/arm/include/asm/semihosting.h
new file mode 100644
index 0000000..b478dad
--- /dev/null
+++ b/arch/arm/include/asm/semihosting.h
@@ -0,0 +1,19 @@
+#ifndef __ASM_ARM_SEMIHOSTING_H
+#define __ASM_ARM_SEMIHOSTING_H
+
+int semihosting_open(const char *fname, int flags);
+int semihosting_close(int fd);
+int semihosting_writec(char c);
+int semihosting_write0(const char *str);
+ssize_t semihosting_write(int fd, const void *buf, size_t count);
+ssize_t semihosting_read(int fd, void *buf, size_t count);
+int semihosting_readc(void);
+int semihosting_isatty(int fd);
+int semihosting_seek(int fd, loff_t pos);
+int semihosting_flen(int fd);
+int semihosting_remove(const char *fname);
+int semihosting_rename(const char *fname1, const char *fname2);
+int semihosting_errno(void);
+int semihosting_system(const char *command);
+
+#endif
diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
index a328795..e1c6f5b 100644
--- a/arch/arm/lib/Makefile
+++ b/arch/arm/lib/Makefile
@@ -20,6 +20,7 @@ pbl-y	+= runtime-offset.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 obj-$(CONFIG_ARM_UNWIND) += unwind.o
+obj-$(CONFIG_ARM_SEMIHOSTING) += semihosting-trap.o semihosting.o
 obj-$(CONFIG_MODULES) += module.o
 extra-y += barebox.lds

diff --git a/arch/arm/lib/semihosting-trap.S b/arch/arm/lib/semihosting-trap.S
new file mode 100644
index 0000000..9e40ebf
--- /dev/null
+++ b/arch/arm/lib/semihosting-trap.S
@@ -0,0 +1,28 @@
+/*
+ * semihosting-trap.S -- Assembly code needed to make a semihosting call
+ *
+ * Copyright (c) 2015 Zodiac Inflight Innovations
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <linux/linkage.h>
+#include <asm/unified.h>
+
+.section .text.semihosting_trap
+ENTRY(semihosting_trap)
+	@ In supervisor mode SVC would clobber LR
+	push	{lr}
+	ARM(	svc	#0x123456	)
+	THUMB(	svc	#0xAB		)
+	pop	{pc}
+ENDPROC(semihosting_trap)
diff --git a/arch/arm/lib/semihosting.c b/arch/arm/lib/semihosting.c
new file mode 100644
index 0000000..a735196
--- /dev/null
+++ b/arch/arm/lib/semihosting.c
@@ -0,0 +1,227 @@
+/*
+ * semihosting.c -- ARM Semihoting API implementation
+ *
+ * Copyright (c) 2015 Zodiac Inflight Innovations
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * based on a smiliar code from U-Boot
+ * Copyright (c) 2014 Broadcom Corporation
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <command.h>
+#include <fcntl.h>
+
+#ifndef O_BINARY
+#define O_BINARY	0
+#endif
+
+
+enum {
+	SEMIHOSTING_SYS_OPEN	= 0x01,
+	SEMIHOSTING_SYS_CLOSE	= 0x02,
+	SEMIHOSTING_SYS_WRITEC	= 0x03,
+	SEMIHOSTING_SYS_WRITE0	= 0x04,
+	SEMIHOSTING_SYS_WRITE	= 0x05,
+	SEMIHOSTING_SYS_READ	= 0x06,
+	SEMIHOSTING_SYS_READC	= 0x07,
+	/* SYS_ISERROR is not implemented  */
+	SEMIHOSTING_SYS_ISATTY	= 0x09,
+	SEMIHOSTING_SYS_SEEK	= 0x0a,
+	SEMIHOSTING_SYS_FLEN	= 0x0c,
+	SEMIHOSTING_SYS_REMOVE	= 0x0e,
+	SEMIHOSTING_SYS_RENAME	= 0x0f,
+	SEMIHOSTING_SYS_TIME	= 0x11,
+	SEMIHOSTING_SYS_ERRNO	= 0x13,
+	/* SYS_GET_CMDLINE is not implemented */
+	/* SYS_HEAPINFO is not implemented */
+	/* angel_SWIreason_ReportException is not implemented */
+	SEMIHOSTING_SYS_SYSTEM	= 0x12,
+};
+
+uint32_t semihosting_trap(uint32_t sysnum, void *addr);
+
+static uint32_t semihosting_flags_to_mode(int flags)
+{
+	static const int semihosting_open_modeflags[12] = {
+		O_RDONLY,
+		O_RDONLY | O_BINARY,
+		O_RDWR,
+		O_RDWR | O_BINARY,
+		O_WRONLY | O_CREAT | O_TRUNC,
+		O_WRONLY | O_CREAT | O_TRUNC | O_BINARY,
+		O_RDWR | O_CREAT | O_TRUNC,
+		O_RDWR | O_CREAT | O_TRUNC | O_BINARY,
+		O_WRONLY | O_CREAT | O_APPEND,
+		O_WRONLY | O_CREAT | O_APPEND | O_BINARY,
+		O_RDWR | O_CREAT | O_APPEND,
+		O_RDWR | O_CREAT | O_APPEND | O_BINARY
+	};
+
+	int i;
+	for (i = 0; i < ARRAY_SIZE(semihosting_open_modeflags); i++) {
+		if (semihosting_open_modeflags[i] == flags)
+			return i;
+	}
+
+	return 0;
+}
+
+int semihosting_open(const char *fname, int flags)
+{
+	struct __packed {
+		uint32_t fname;
+		uint32_t mode;
+		uint32_t len;
+	} open = {
+		.fname = (uint32_t)fname,
+		.len = strlen(fname),
+		.mode = semihosting_flags_to_mode(flags),
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_OPEN, &open);
+}
+EXPORT_SYMBOL(semihosting_open);
+
+int semihosting_close(int fd)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_CLOSE, &fd);
+}
+EXPORT_SYMBOL(semihosting_close);
+
+int semihosting_writec(char c)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_WRITEC, &c);
+}
+EXPORT_SYMBOL(semihosting_writec);
+
+int semihosting_write0(const char *str)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_WRITE0, (void *)str);
+}
+EXPORT_SYMBOL(semihosting_write0);
+
+struct __packed semihosting_file_io {
+	uint32_t fd;
+	uint32_t memp;
+	uint32_t len;
+};
+
+ssize_t semihosting_write(int fd, const void *buf, size_t count)
+{
+	struct semihosting_file_io write = {
+		.fd = fd,
+		.memp = (uint32_t)buf,
+		.len = count,
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_WRITE, &write);
+}
+EXPORT_SYMBOL(semihosting_write);
+
+ssize_t semihosting_read(int fd, void *buf, size_t count)
+{
+	struct semihosting_file_io read = {
+		.fd = fd,
+		.memp = (uint32_t)buf,
+		.len = count,
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_READ, &read);
+}
+EXPORT_SYMBOL(semihosting_read);
+
+int semihosting_readc(void)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_READC, NULL);
+}
+EXPORT_SYMBOL(semihosting_readc);
+
+int semihosting_isatty(int fd)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_ISATTY, &fd);
+}
+EXPORT_SYMBOL(semihosting_isatty);
+
+int semihosting_seek(int fd, off_t pos)
+{
+	struct __packed {
+		uint32_t fd;
+		uint32_t pos;
+	} seek = {
+		.fd = fd,
+		.pos = pos,
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_SEEK, &seek);
+}
+EXPORT_SYMBOL(semihosting_seek);
+
+int semihosting_flen(int fd)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_FLEN, &fd);
+}
+EXPORT_SYMBOL(semihosting_flen);
+
+int semihosting_remove(const char *fname)
+{
+	struct __packed {
+		uint32_t fname;
+		uint32_t fname_length;
+	} remove = {
+		.fname = (uint32_t)fname,
+		.fname_length = strlen(fname),
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_REMOVE, &remove);
+}
+EXPORT_SYMBOL(semihosting_remove);
+
+int semihosting_rename(const char *fname1, const char *fname2)
+{
+	struct __packed {
+		uint32_t fname1;
+		uint32_t fname1_length;
+		uint32_t fname2;
+		uint32_t fname2_length;
+	} rename = {
+		.fname1 = (uint32_t)fname1,
+		.fname1_length = strlen(fname1),
+		.fname2 = (uint32_t)fname2,
+		.fname2_length = strlen(fname2),
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_RENAME, &rename);
+}
+EXPORT_SYMBOL(semihosting_rename);
+
+int semihosting_errno(void)
+{
+	return semihosting_trap(SEMIHOSTING_SYS_ERRNO, NULL);
+}
+EXPORT_SYMBOL(semihosting_errno);
+
+
+int semihosting_system(const char *command)
+{
+	struct __packed {
+		uint32_t cmd;
+		uint32_t cmd_len;
+	} system = {
+		.cmd = (uint32_t)command,
+		.cmd_len = strlen(command),
+	};
+
+	return semihosting_trap(SEMIHOSTING_SYS_SYSTEM, &system);
+}
+EXPORT_SYMBOL(semihosting_system);
diff --git a/fs/Kconfig b/fs/Kconfig
index feab537..9217bc8 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -80,4 +80,13 @@ config FS_UIMAGEFS
 	select CRC32
 	prompt "uImage FS support"

+config FS_SMHFS
+	depends on ARM_SEMIHOSTING
+	bool
+	prompt "Semihosting FS support"
+	help
+	  If enabled this filesystem provides access to the files
+	  located on a debugging host connected to the target running
+	  Barebox
+
 endmenu
diff --git a/fs/Makefile b/fs/Makefile
index f5aae91..4693205 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -13,3 +13,4 @@ obj-$(CONFIG_FS_BPKFS) += bpkfs.o
 obj-$(CONFIG_FS_UIMAGEFS)	+= uimagefs.o
 obj-$(CONFIG_FS_EFI)	 += efi.o
 obj-$(CONFIG_FS_EFIVARFS) += efivarfs.o
+obj-$(CONFIG_FS_SMHFS) += smhfs.o
diff --git a/fs/smhfs.c b/fs/smhfs.c
new file mode 100644
index 0000000..a0df06c
--- /dev/null
+++ b/fs/smhfs.c
@@ -0,0 +1,178 @@
+/*
+ * smhfs.c -- Driver implementing pseudo FS interface on top of ARM
+ *            semihosting
+ *
+ * Copyright (c) 2015 Zodiac Inflight Innovations
+ * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
+ *
+ * This software is licensed under the terms of the GNU General Public
+ * License version 2, as published by the Free Software Foundation, and
+ * may be copied, distributed, and modified under those terms.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <command.h>
+#include <init.h>
+#include <fs.h>
+#include <errno.h>
+#include <linux/stat.h>
+#include <asm/semihosting.h>
+
+static int file_to_fd(const FILE *f)
+{
+	return (int)f->priv;
+}
+
+static int smhfs_create(struct device_d __always_unused *dev,
+			const char __always_unused *pathname,
+			mode_t __always_unused mode)
+{
+	return 0;
+}
+
+static int smhfs_mkdir(struct device_d __always_unused *dev,
+		       const char __always_unused *pathname)
+{
+	return -ENOSYS;
+}
+
+static int smhfs_rm(struct device_d __always_unused *dev,
+		    const char *pathname)
+{
+	/* Get rid of leading '/' */
+	pathname = &pathname[1];
+
+	if (semihosting_remove(pathname) != 0)
+		return -semihosting_errno();
+	else
+		return 0;
+}
+
+static int smhfs_truncate(struct device_d __always_unused *dev,
+			  FILE __always_unused *f,
+			  ulong __always_unused size)
+{
+	return -ENOSYS;
+}
+
+static int smhfs_open(struct device_d __always_unused *dev,
+		      FILE *file, const char *filename)
+{
+	int fd;
+	/* Get rid of leading '/' */
+	filename = &filename[1];
+
+	fd = semihosting_open(filename, file->flags);
+	if (fd < 0)
+		goto error;
+
+	file->priv = (void *)fd;
+	file->size = semihosting_flen(fd);
+	if (file->size < 0)
+		goto error;
+
+	return 0;
+error:
+	return -semihosting_errno();
+}
+
+static int smhfs_close(struct device_d __always_unused *dev,
+		       FILE *f)
+{
+	if (semihosting_close(file_to_fd(f)))
+		return -semihosting_errno();
+	else
+		return 0;
+}
+
+static int smhfs_write(struct device_d __always_unused *dev,
+		       FILE *f, const void *inbuf, size_t insize)
+{
+	if (semihosting_write(file_to_fd(f), inbuf, insize))
+		return -semihosting_errno();
+	else
+		return insize;
+}
+
+static int smhfs_read(struct device_d __always_unused *dev,
+		      FILE *f, void *buf, size_t insize)
+{
+	if (!semihosting_read(file_to_fd(f), buf, insize))
+		return insize;
+	else
+		return -semihosting_errno();
+}
+
+static loff_t smhfs_lseek(struct device_d __always_unused *dev,
+			  FILE *f, loff_t pos)
+{
+	if (semihosting_seek(file_to_fd(f), pos)) {
+		return -semihosting_errno();
+	} else {
+		f->pos = pos;
+		return f->pos;
+	}
+}
+
+static DIR* smhfs_opendir(struct device_d __always_unused *dev,
+			  const char __always_unused *pathname)
+{
+	return NULL;
+}
+
+static int smhfs_stat(struct device_d __always_unused *dev,
+		      const char *filename, struct stat *s)
+{
+	FILE file;
+
+	if (smhfs_open(NULL, &file, filename) == 0) {
+		s->st_mode = S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
+		s->st_size = file.size;
+	}
+	smhfs_close(NULL, &file);
+
+	return 0;
+}
+
+static int smhfs_probe(struct device_d __always_unused *dev)
+{
+	/* TODO: Add provisions to detect if debugger is connected */
+	return 0;
+}
+
+static void smhfs_remove(struct device_d __always_unused *dev)
+{
+}
+
+static struct fs_driver_d smhfs_driver = {
+	.open      = smhfs_open,
+	.close     = smhfs_close,
+	.read      = smhfs_read,
+	.lseek     = smhfs_lseek,
+	.opendir   = smhfs_opendir,
+	.stat      = smhfs_stat,
+	.create    = smhfs_create,
+	.unlink    = smhfs_rm,
+	.mkdir     = smhfs_mkdir,
+	.rmdir     = smhfs_rm,
+	.write     = smhfs_write,
+	.truncate  = smhfs_truncate,
+	.flags     = FS_DRIVER_NO_DEV,
+	.drv = {
+		.probe  = smhfs_probe,
+		.remove = smhfs_remove,
+		.name = "smhfs",
+	}
+};
+
+static int smhfs_init(void)
+{
+	return register_fs_driver(&smhfs_driver);
+}
+coredevice_initcall(smhfs_init);
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
