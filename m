Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x236.google.com ([2a00:1450:4010:c07::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zo4U8-0007D6-4U
 for barebox@lists.infradead.org; Mon, 19 Oct 2015 07:03:58 +0000
Received: by lfaz124 with SMTP id z124so101709086lfa.1
 for <barebox@lists.infradead.org>; Mon, 19 Oct 2015 00:03:32 -0700 (PDT)
Date: Mon, 19 Oct 2015 10:26:26 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151019102626.9d840af3e7f91508b1aaf45a@gmail.com>
In-Reply-To: <1445232837-22317-1-git-send-email-andrew.smirnov@gmail.com>
References: <1445232837-22317-1-git-send-email-andrew.smirnov@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: Add support for semihosting
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, 18 Oct 2015 22:33:57 -0700
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> Add semihosting API implementation and implement a filesystem driver
> to access debugging host filesystem using it.
> =

> Tested on Freescale SabreSD board (i.MX6Q) using OpenOCD
> =

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  Documentation/filesystems/smhfs.rst |  20 ++++
>  arch/arm/Kconfig                    |   9 ++
>  arch/arm/include/asm/semihosting.h  |  19 +++
>  arch/arm/lib/Makefile               |   1 +
>  arch/arm/lib/semihosting-trap.S     |  28 +++++
>  arch/arm/lib/semihosting.c          | 227 ++++++++++++++++++++++++++++++=
++++++
>  fs/Kconfig                          |   9 ++
>  fs/Makefile                         |   1 +
>  fs/smhfs.c                          | 177 ++++++++++++++++++++++++++++
>  9 files changed, 491 insertions(+)
>  create mode 100644 Documentation/filesystems/smhfs.rst
>  create mode 100644 arch/arm/include/asm/semihosting.h
>  create mode 100644 arch/arm/lib/semihosting-trap.S
>  create mode 100644 arch/arm/lib/semihosting.c
>  create mode 100644 fs/smhfs.c
> =

> diff --git a/Documentation/filesystems/smhfs.rst b/Documentation/filesyst=
ems/smhfs.rst
> new file mode 100644
> index 0000000..06b24b7
> --- /dev/null
> +++ b/Documentation/filesystems/smhfs.rst
> @@ -0,0 +1,20 @@
> +.. index:: smhfs (filesystem)
> +
> +.. _filesystems_smhfs:
> +
> +File I/O over ARM semihosting support
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +barebox can communicate with debug programms attached via SWD/JTAG by
                                      ^^^^^^^^^ programs?


> +means of ARM semihosting protocol.
> +
> +Not all of the I/O primitives neccessary to implement a full
> +filesystem are exposed in ARM semihosting API and because of that some
> +aspects of filesystem funcionality are missing. Implementation does
> +not have support for listing directories. This means a
> +:ref:`command_ls` to a SMHFS-mounted path will show an empty
> +directory. Nevertheless, the files are there.
> +
> +Example::
> +
> +  mount -t smhfs /dev/null /mnt/smhfs
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 304b6e6..1bccca3 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -326,6 +326,15 @@ config ARM_UNWIND
>  	  the performance is not affected. Currently, this feature
>  	  only works with EABI compilers. If unsure say Y.
> =

> +config ARM_SEMIHOSTING
> +	bool "enable ARM semihosting support"
> +	help
> +	  This option enables ARM semihosting support in barebox. ARM
> +	  semihosting is a communication discipline that allows code
> +	  running on target ARM cpu perform system calls and access
> +	  the data on the host computer connected to the target via
> +	  debugging channel (JTAG, SWD). If unsure say N
> +
>  endmenu
> =

>  source common/Kconfig
> diff --git a/arch/arm/include/asm/semihosting.h b/arch/arm/include/asm/se=
mihosting.h
> new file mode 100644
> index 0000000..b478dad
> --- /dev/null
> +++ b/arch/arm/include/asm/semihosting.h
> @@ -0,0 +1,19 @@
> +#ifndef __ASM_ARM_SEMIHOSTING_H
> +#define __ASM_ARM_SEMIHOSTING_H
> +
> +int semihosting_open(const char *fname, int flags);
> +int semihosting_close(int fd);
> +int semihosting_writec(char c);
> +int semihosting_write0(const char *str);
> +ssize_t semihosting_write(int fd, const void *buf, size_t count);
> +ssize_t semihosting_read(int fd, void *buf, size_t count);
> +int semihosting_readc(void);
> +int semihosting_isatty(int fd);
> +int semihosting_seek(int fd, loff_t pos);
> +int semihosting_flen(int fd);
> +int semihosting_remove(const char *fname);
> +int semihosting_rename(const char *fname1, const char *fname2);
> +int semihosting_errno(void);
> +int semihosting_system(const char *command);
> +
> +#endif
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index a328795..e1c6f5b 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -20,6 +20,7 @@ pbl-y	+=3D runtime-offset.o
>  obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+=3D memcpy.o
>  obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+=3D memset.o
>  obj-$(CONFIG_ARM_UNWIND) +=3D unwind.o
> +obj-$(CONFIG_ARM_SEMIHOSTING) +=3D semihosting-trap.o semihosting.o
>  obj-$(CONFIG_MODULES) +=3D module.o
>  extra-y +=3D barebox.lds
> =

> diff --git a/arch/arm/lib/semihosting-trap.S b/arch/arm/lib/semihosting-t=
rap.S
> new file mode 100644
> index 0000000..9e40ebf
> --- /dev/null
> +++ b/arch/arm/lib/semihosting-trap.S
> @@ -0,0 +1,28 @@
> +/*
> + * semihosting-trap.S -- Assembly code needed to make a semihosting call
> + *
> + * Copyright (c) 2015 Zodiac Inflight Innovations
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> + *
> + * This software is licensed under the terms of the GNU General Public
> + * License version 2, as published by the Free Software Foundation, and
> + * may be copied, distributed, and modified under those terms.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <linux/linkage.h>
> +#include <asm/unified.h>
> +
> +.section .text.semihosting_trap
> +ENTRY(semihosting_trap)
> +	@ In supervisor mode SVC would clobber LR
> +	push	{lr}
> +	ARM(	svc	#0x123456	)
> +	THUMB(	svc	#0xAB		)
> +	pop	{pc}
> +ENDPROC(semihosting_trap)
> diff --git a/arch/arm/lib/semihosting.c b/arch/arm/lib/semihosting.c
> new file mode 100644
> index 0000000..a735196
> --- /dev/null
> +++ b/arch/arm/lib/semihosting.c
> @@ -0,0 +1,227 @@
> +/*
> + * semihosting.c -- ARM Semihoting API implementation
> + *
> + * Copyright (c) 2015 Zodiac Inflight Innovations
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> + *
> + * based on a smiliar code from U-Boot
> + * Copyright (c) 2014 Broadcom Corporation
> + *
> + * This software is licensed under the terms of the GNU General Public
> + * License version 2, as published by the Free Software Foundation, and
> + * may be copied, distributed, and modified under those terms.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <fcntl.h>
> +
> +#ifndef O_BINARY
> +#define O_BINARY	0
> +#endif
> +
> +
> +enum {
> +	SEMIHOSTING_SYS_OPEN	=3D 0x01,
> +	SEMIHOSTING_SYS_CLOSE	=3D 0x02,
> +	SEMIHOSTING_SYS_WRITEC	=3D 0x03,
> +	SEMIHOSTING_SYS_WRITE0	=3D 0x04,
> +	SEMIHOSTING_SYS_WRITE	=3D 0x05,
> +	SEMIHOSTING_SYS_READ	=3D 0x06,
> +	SEMIHOSTING_SYS_READC	=3D 0x07,
> +	/* SYS_ISERROR is not implemented  */
> +	SEMIHOSTING_SYS_ISATTY	=3D 0x09,
> +	SEMIHOSTING_SYS_SEEK	=3D 0x0a,
> +	SEMIHOSTING_SYS_FLEN	=3D 0x0c,
> +	SEMIHOSTING_SYS_REMOVE	=3D 0x0e,
> +	SEMIHOSTING_SYS_RENAME	=3D 0x0f,
> +	SEMIHOSTING_SYS_TIME	=3D 0x11,
> +	SEMIHOSTING_SYS_ERRNO	=3D 0x13,
> +	/* SYS_GET_CMDLINE is not implemented */
> +	/* SYS_HEAPINFO is not implemented */
> +	/* angel_SWIreason_ReportException is not implemented */
> +	SEMIHOSTING_SYS_SYSTEM	=3D 0x12,
> +};
> +
> +uint32_t semihosting_trap(uint32_t sysnum, void *addr);
> +
> +static uint32_t semihosting_flags_to_mode(int flags)
> +{
> +	static const int semihosting_open_modeflags[12] =3D {
> +		O_RDONLY,
> +		O_RDONLY | O_BINARY,
> +		O_RDWR,
> +		O_RDWR | O_BINARY,
> +		O_WRONLY | O_CREAT | O_TRUNC,
> +		O_WRONLY | O_CREAT | O_TRUNC | O_BINARY,
> +		O_RDWR | O_CREAT | O_TRUNC,
> +		O_RDWR | O_CREAT | O_TRUNC | O_BINARY,
> +		O_WRONLY | O_CREAT | O_APPEND,
> +		O_WRONLY | O_CREAT | O_APPEND | O_BINARY,
> +		O_RDWR | O_CREAT | O_APPEND,
> +		O_RDWR | O_CREAT | O_APPEND | O_BINARY
> +	};
> +
> +	int i;
> +	for (i =3D 0; i < ARRAY_SIZE(semihosting_open_modeflags); i++) {
> +		if (semihosting_open_modeflags[i] =3D=3D flags)
> +			return i;
> +	}
> +
> +	return 0;
> +}
> +
> +int semihosting_open(const char *fname, int flags)
> +{
> +	struct __packed {
> +		uint32_t fname;
> +		uint32_t mode;
> +		uint32_t len;
> +	} open =3D {
> +		.fname =3D (uint32_t)fname,
> +		.len =3D strlen(fname),
> +		.mode =3D semihosting_flags_to_mode(flags),
> +	};
> +
> +	return semihosting_trap(SEMIHOSTING_SYS_OPEN, &open);
> +}
> +EXPORT_SYMBOL(semihosting_open);
> +
> +int semihosting_close(int fd)
> +{
> +	return semihosting_trap(SEMIHOSTING_SYS_CLOSE, &fd);
> +}
> +EXPORT_SYMBOL(semihosting_close);
> +
> +int semihosting_writec(char c)
> +{
> +	return semihosting_trap(SEMIHOSTING_SYS_WRITEC, &c);
> +}
> +EXPORT_SYMBOL(semihosting_writec);
> +
> +int semihosting_write0(const char *str)
> +{
> +	return semihosting_trap(SEMIHOSTING_SYS_WRITE0, (void *)str);
> +}
> +EXPORT_SYMBOL(semihosting_write0);
> +
> +struct __packed semihosting_file_io {
> +	uint32_t fd;
> +	uint32_t memp;
> +	uint32_t len;
> +};
> +
> +ssize_t semihosting_write(int fd, const void *buf, size_t count)
> +{
> +	struct semihosting_file_io write =3D {
> +		.fd =3D fd,
> +		.memp =3D (uint32_t)buf,
> +		.len =3D count,
> +	};
> +
> +	return semihosting_trap(SEMIHOSTING_SYS_WRITE, &write);
> +}
> +EXPORT_SYMBOL(semihosting_write);
> +
> +ssize_t semihosting_read(int fd, void *buf, size_t count)
> +{
> +	struct semihosting_file_io read =3D {
> +		.fd =3D fd,
> +		.memp =3D (uint32_t)buf,
> +		.len =3D count,
> +	};
> +
> +	return semihosting_trap(SEMIHOSTING_SYS_READ, &read);
> +}
> +EXPORT_SYMBOL(semihosting_read);
> +
> +int semihosting_readc(void)
> +{
> +	return semihosting_trap(SEMIHOSTING_SYS_READC, NULL);
> +}
> +EXPORT_SYMBOL(semihosting_readc);
> +
> +int semihosting_isatty(int fd)
> +{
> +	return semihosting_trap(SEMIHOSTING_SYS_ISATTY, &fd);
> +}
> +EXPORT_SYMBOL(semihosting_isatty);
> +
> +int semihosting_seek(int fd, off_t pos)
> +{
> +	struct __packed {
> +		uint32_t fd;
> +		uint32_t pos;
> +	} seek =3D {
> +		.fd =3D fd,
> +		.pos =3D pos,
> +	};
> +
> +	return semihosting_trap(SEMIHOSTING_SYS_SEEK, &seek);
> +}
> +EXPORT_SYMBOL(semihosting_seek);
> +
> +int semihosting_flen(int fd)
> +{
> +	return semihosting_trap(SEMIHOSTING_SYS_FLEN, &fd);
> +}
> +EXPORT_SYMBOL(semihosting_flen);
> +
> +int semihosting_remove(const char *fname)
> +{
> +	struct __packed {
> +		uint32_t fname;
> +		uint32_t fname_length;
> +	} remove =3D {
> +		.fname =3D (uint32_t)fname,
> +		.fname_length =3D strlen(fname),
> +	};
> +
> +	return semihosting_trap(SEMIHOSTING_SYS_REMOVE, &remove);
> +}
> +EXPORT_SYMBOL(semihosting_remove);
> +
> +int semihosting_rename(const char *fname1, const char *fname2)
> +{
> +	struct __packed {
> +		uint32_t fname1;
> +		uint32_t fname1_length;
> +		uint32_t fname2;
> +		uint32_t fname2_length;
> +	} rename =3D {
> +		.fname1 =3D (uint32_t)fname1,
> +		.fname1_length =3D strlen(fname1),
> +		.fname2 =3D (uint32_t)fname2,
> +		.fname2_length =3D strlen(fname2),
> +	};
> +
> +	return semihosting_trap(SEMIHOSTING_SYS_RENAME, &rename);
> +}
> +EXPORT_SYMBOL(semihosting_rename);
> +
> +int semihosting_errno(void)
> +{
> +	return semihosting_trap(SEMIHOSTING_SYS_ERRNO, NULL);
> +}
> +EXPORT_SYMBOL(semihosting_errno);
> +
> +
> +int semihosting_system(const char *command)
> +{
> +	struct __packed {
> +		uint32_t cmd;
> +		uint32_t cmd_len;
> +	} system =3D {
> +		.cmd =3D (uint32_t)command,
> +		.cmd_len =3D strlen(command),
> +	};
> +
> +	return semihosting_trap(SEMIHOSTING_SYS_SYSTEM, &system);
> +}
> +EXPORT_SYMBOL(semihosting_system);
> diff --git a/fs/Kconfig b/fs/Kconfig
> index feab537..9217bc8 100644
> --- a/fs/Kconfig
> +++ b/fs/Kconfig
> @@ -80,4 +80,13 @@ config FS_UIMAGEFS
>  	select CRC32
>  	prompt "uImage FS support"
> =

> +config FS_SMHFS
> +	depends on ARM_SEMIHOSTING
> +	bool
> +	prompt "Semihosting FS support"
> +	help
> +	  If enabled this filesystem provides access to the files
> +	  located on a debugging host connected to the target running
> +	  Barebox
> +
>  endmenu
> diff --git a/fs/Makefile b/fs/Makefile
> index f5aae91..4693205 100644
> --- a/fs/Makefile
> +++ b/fs/Makefile
> @@ -13,3 +13,4 @@ obj-$(CONFIG_FS_BPKFS) +=3D bpkfs.o
>  obj-$(CONFIG_FS_UIMAGEFS)	+=3D uimagefs.o
>  obj-$(CONFIG_FS_EFI)	 +=3D efi.o
>  obj-$(CONFIG_FS_EFIVARFS) +=3D efivarfs.o
> +obj-$(CONFIG_FS_SMHFS) +=3D smhfs.o
> diff --git a/fs/smhfs.c b/fs/smhfs.c
> new file mode 100644
> index 0000000..d38afe6
> --- /dev/null
> +++ b/fs/smhfs.c
> @@ -0,0 +1,177 @@
> +/*
> + * smhfs.c -- Driver implementing pseudo FS interface on top of ARM
> + *            semihosting
> + *
> + * Copyright (c) 2015 Zodiac Inflight Innovations
> + * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
> + *
> + * This software is licensed under the terms of the GNU General Public
> + * License version 2, as published by the Free Software Foundation, and
> + * may be copied, distributed, and modified under those terms.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <init.h>
> +#include <fs.h>
> +#include <errno.h>
> +#include <linux/stat.h>
> +#include <asm/semihosting.h>
> +
> +static int file_to_fd(const FILE *f)
> +{
> +	return (int)f->priv;
> +}
> +
> +static int smhfs_create(struct device_d __always_unused *dev,
> +			const char __always_unused *pathname,
> +			mode_t __always_unused mode)
> +{
> +	return 0;
> +}
> +
> +static int smhfs_mkdir(struct device_d __always_unused *dev,
> +		       const char __always_unused *pathname)
> +{
> +	return -ENOSYS;
> +}
> +
> +static int smhfs_remove(struct device_d __always_unused *dev,
> +			const char *pathname)
> +{
> +	/* Get rid of leading '/' */
> +	pathname =3D &pathname[1];
> +
> +	if (semihosting_remove(pathname) !=3D 0)
> +		return semihosting_errno();
> +	else
> +		return 0
> +}
> +
> +static int smhfs_truncate(struct device_d __always_unused *dev,
> +			  FILE __always_unused *f,
> +			  ulong __always_unused size)
> +{
> +	return -ENOSYS;
> +}
> +
> +static int smhfs_open(struct device_d __always_unused *dev,
> +		      FILE *file, const char *filename)
> +{
> +	/* Get rid of leading '/' */
> +	filename =3D &filename[1];
> +
> +	const int fd =3D semihosting_open(filename, file->flags);
> +	if (fd < 0)
> +		goto error;
> +
> +	file->priv =3D (void *)fd;
> +	file->size =3D semihosting_flen(fd);
> +	if (file->size < 0)
> +		goto error;
> +
> +	return 0;
> +error:
> +	return semihosting_errno();
> +}
> +
> +static int smhfs_close(struct device_d __always_unused *dev,
> +		       FILE *f)
> +{
> +	if (semihosting_close(file_to_fd(f)))
> +		return semihosting_errno();
> +	else
> +		return 0;
> +}
> +
> +static int smhfs_write(struct device_d __always_unused *dev,
> +		       FILE *f, const void *inbuf, size_t insize)
> +{
> +	if (semihosting_write(file_to_fd(f), inbuf, insize))
> +		return semihosting_errno();
> +	else
> +		return insize;
> +}
> +
> +static int smhfs_read(struct device_d __always_unused *dev,
> +		      FILE *f, void *buf, size_t insize)
> +{
> +	if (!semihosting_read(file_to_fd(f), buf, insize))
> +		return insize;
> +	else
> +		return semihosting_errno();
> +}
> +
> +static loff_t smhfs_lseek(struct device_d __always_unused *dev,
> +			  FILE *f, loff_t pos)
> +{
> +	if (semihosting_seek(file_to_fd(f), pos)) {
> +		return semihosting_errno();
> +	} else {
> +		file->pos =3D pos;
> +		return file->pos;
> +	}
> +}
> +
> +static DIR* smhfs_opendir(struct device_d __always_unused *dev,
> +			  const char __always_unused *pathname)
> +{
> +	return NULL;
> +}
> +
> +static int smhfs_stat(struct device_d __always_unused *dev,
> +		      const char *filename, struct stat *s)
> +{
> +	FILE file;
> +
> +	if (smhfs_open(NULL, &file, filename) =3D=3D 0) {
> +		s->st_mode =3D S_IFREG | S_IRWXU | S_IRWXG | S_IRWXO;
> +		s->st_size =3D file.size;
> +	}
> +	smhfs_close(NULL, &file);
> +
> +	return 0;
> +}
> +
> +static int smhfs_probe(struct device_d __always_unused *dev)
> +{
> +	/* TODO: Add provisions to detect if debugger is connected */
> +	return 0;
> +}
> +
> +static void smhfs_remove(struct device_d __always_unused *dev)
> +{
> +}
> +
> +static struct fs_driver_d smhfs_driver =3D {
> +	.open      =3D smhfs_open,
> +	.close     =3D smhfs_close,
> +	.read      =3D smhfs_read,
> +	.lseek     =3D smhfs_lseek,
> +	.opendir   =3D smhfs_opendir,
> +	.stat      =3D smhfs_stat,
> +	.create    =3D smhfs_create,
> +	.unlink    =3D smhfs_remove,
> +	.mkdir     =3D smhfs_mkdir,
> +	.rmdir     =3D smhfs_remove,
> +	.write     =3D smhfs_write,
> +	.truncate  =3D smhfs_truncate,
> +	.flags     =3D FS_DRIVER_NO_DEV,
> +	.drv =3D {
> +		.probe  =3D smhfs_probe,
> +		.remove =3D smhfs_remove,
> +		.name =3D "smhfs",
> +	}
> +};
> +
> +static int smhfs_init(void)
> +{
> +	return register_fs_driver(&smhfs_driver);
> +}
> +coredevice_initcall(smhfs_init);
> --
> 2.1.4
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
