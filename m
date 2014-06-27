Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0OiS-0002l0-SB
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 05:28:56 +0000
Received: by mail-la0-f45.google.com with SMTP id hr17so2578950lab.18
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 22:28:29 -0700 (PDT)
Date: Fri, 27 Jun 2014 09:40:27 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140627094027.18fb57c4feb214bf671a49b4@gmail.com>
In-Reply-To: <53AC8C84.6030907@exegin.com>
References: <53AC8C84.6030907@exegin.com>
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
Subject: Re: [PATCH] Support for booting ELF images.
To: Owen Kirby <osk@exegin.com>
Cc: barebox@lists.infradead.org

On Thu, 26 Jun 2014 14:11:32 -0700
Owen Kirby <osk@exegin.com> wrote:

Here are some ELF-unrelated comments on your patch:

1. please use 'git send-email' for sending patches;

2. please use scripts/checkpatch.pl on your patches before sending them to =
maillist;

   My checkpatch.pl reports about errors:

       total: 28 errors, 28 warnings, 399 lines checked

> From 1edc77c7b960d5b42ac3c03000ac5063018195f9 Mon Sep 17 00:00:00 2001
> From: Owen Kirby <osk@exegin.com>
> Date: Thu, 26 Jun 2014 13:40:06 -0700
> Subject: [PATCH] Support for booting ELF images.
> =

> This patch adds a bootelf command to load and execute OS kernels from the=
 ELF format.
> =

> Signed-off-by: Owen Kirby <osk@exegin.com>
> ---
>  commands/Kconfig   |    7 ++
>  commands/Makefile  |    1 +
>  commands/bootelf.c |  112 ++++++++++++++++++++++++++
>  common/Kconfig     |    3 +
>  common/Makefile    |    1 +
>  common/elf.c       |  222 ++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  common/filetype.c  |    3 +
>  include/elf.h      |    4 +
>  include/filetype.h |    1 +
>  9 files changed, 354 insertions(+)
>  create mode 100644 commands/bootelf.c
>  create mode 100644 common/elf.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index cc014f3..c4e4649 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -507,6 +507,13 @@ config CMD_BOOTU
>  	  compile in the 'bootu' command to start raw (uncompressed)
>  	  Linux images
>  =

> +config CMD_BOOTELF
> +	select ELF
> +	tristate
> +	prompt "elf"
> +	help
> +	  compile the 'bootelf' command to start ELF images
> +
>  config FLEXIBLE_BOOTARGS
>  	bool
>  	prompt "flexible Linux bootargs generation"
> diff --git a/commands/Makefile b/commands/Makefile
> index e463031..fd57811 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -1,5 +1,6 @@
>  obj-$(CONFIG_STDDEV)		+=3D stddev.o
>  obj-$(CONFIG_CMD_BOOTM)		+=3D bootm.o
> +obj-$(CONFIG_CMD_BOOTELF)	+=3D bootelf.o
>  obj-$(CONFIG_CMD_UIMAGE)	+=3D uimage.o
>  obj-$(CONFIG_CMD_LINUX16)	+=3D linux16.o
>  obj-$(CONFIG_CMD_LOADB)		+=3D loadb.o
> diff --git a/commands/bootelf.c b/commands/bootelf.c
> new file mode 100644
> index 0000000..dc38b9e
> --- /dev/null
> +++ b/commands/bootelf.c
> @@ -0,0 +1,112 @@
> +/*
> + * bootelf.c - ELF booting code
> + *
> + * Copyright (c) 2014 Owen Kirby <osk@exegin.com>, Exegin Technologies L=
imited
> + *
> + * partly based on U-Boot ELF code.
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +#include <common.h>
> +#include <command.h>
> +#include <malloc.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <elf.h>
> +
> +static int do_readelf(int argc, char *argv[])
> +{
> +	void *hdr;
> +	int fd;
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +
> +	fd =3D open(argv[1], O_RDONLY);
> +	if (fd < 0) {
> +		printf("could not open: %s\n", errno_str());
> +		return 1;
> +	}
> +	hdr =3D elf_load_header(fd);
> +	if (!hdr) {
> +		close(fd);
> +		return 1;
> +	}
> +	elf_print_header(hdr);
> +	free(hdr);
> +	close(fd);
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(readelf)
> +	.cmd		=3D do_readelf,
> +	.usage		=3D "Read an ELF image header",
> +BAREBOX_CMD_END
> +
> +static int do_bootelf(int argc, char *argv[])
> +{
> +	void 	*hdr;
> +	void 	*addr;
> +	int	(*func)(int argc, char *argv[]);
> +	int	fd;
> +
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +    =

> +	fd =3D open(argv[1], O_RDONLY);
> +	if (fd < 0) {
> +		printf("could not open: %s\n", errno_str());
> +		return 1;
> +	}
> +    =

> +	/* Print the ELF header for the user. */
> +	hdr =3D elf_load_header(fd);
> +	if (!hdr) {
> +		close(fd);
> +		return 1;
> +	}
> +	elf_print_header(hdr);
> +	free(hdr);
> +
> +	/* Load the ELF sections. */
> +	addr =3D elf_load_sections(fd);
> +	if (!addr) {
> +		close(fd);
> +		return 1;
> +	}
> +
> +	/* Launch the application */
> +	printf("## Starting application at 0x%p ...\n", addr);
> +	console_flush();
> +	func =3D addr;
> +	shutdown_barebox();
> +
> +	if (do_execute)
> +		do_execute(func, argc - 1, &argv[1]);
> +	else
> +		func(argc - 1, &argv[1]);
> +
> +	/*
> +	 * The application returned. Since we have shutdown barebox and
> +	 * we know nothing about the state of the cpu/memory we can't
> +	 * do anything here.
> +	 */
> +	while (1);
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(bootelf)
> +	.cmd		=3D do_bootelf,
> +	.usage		=3D "Boot an ELF image",
> +BAREBOX_CMD_END
> +
> diff --git a/common/Kconfig b/common/Kconfig
> index 0031cc8..0d22a58 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -53,6 +53,9 @@ config UIMAGE
>  	select CRC32
>  	bool
>  =

> +config ELF
> +	bool
> +
>  config GLOBALVAR
>  	bool
>  =

> diff --git a/common/Makefile b/common/Makefile
> index 204241c..9decc96 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -21,6 +21,7 @@ obj-$(CONFIG_CONSOLE_FULL)	+=3D console.o
>  obj-$(CONFIG_CONSOLE_SIMPLE)	+=3D console_simple.o
>  obj-$(CONFIG_DIGEST)		+=3D digest.o
>  obj-$(CONFIG_DDR_SPD)		+=3D ddr_spd.o
> +obj-$(CONFIG_ELF)		+=3D elf.o
>  obj-$(CONFIG_ENV_HANDLING)	+=3D environment.o
>  obj-$(CONFIG_ENVIRONMENT_VARIABLES) +=3D env.o
>  obj-$(CONFIG_FILETYPE)		+=3D filetype.o
> diff --git a/common/elf.c b/common/elf.c
> new file mode 100644
> index 0000000..1383ccc
> --- /dev/null
> +++ b/common/elf.c
> @@ -0,0 +1,222 @@
> +/*
> + * elf.c - ELF handling code
> + *
> + * Copyright (c) 2014 Owen Kirby <osk@exegin.com>, Exegin Technologies L=
imited
> + *
> + * partly based on U-Boot ELF code.
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +#include <common.h>
> +#include <malloc.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <elf.h>
> +
> +const char *elf_types[] =3D {
> +	[ET_NONE] =3D "None",
> +	[ET_REL] =3D "Relocatable",
> +	[ET_EXEC] =3D "Executable",
> +	[ET_DYN] =3D "Dynamic",
> +	[ET_CORE] =3D "Core Dump",
> +};
> +
> +void *elf_load_header(int fd)
> +{
> +	unsigned char ident[EI_NIDENT];
> +
> +	if ((lseek(fd, 0, SEEK_SET) < 0) || (read(fd, ident, sizeof(ident)) < 0=
)) {
> +		printf("could not read ident header: %s\n", errno_str());
> +		return NULL;
> +	}
> +	/* Ensure we find the ELF magic number. */
> +	if (strncmp(ident, ELFMAG, SELFMAG)) {
> +		printf("Bad Magic Number\n");
> +		return NULL;
> +	}
> +
> +	/* Read the ELF32 header. */
> +	if (ident[EI_CLASS] =3D=3D ELFCLASS32) {
> +		Elf32_Ehdr *hdr =3D xzalloc(sizeof(Elf32_Ehdr));
> +		memcpy(hdr->e_ident, ident, EI_NIDENT);
> +		if (read(fd, &hdr->e_type, sizeof(*hdr) - EI_NIDENT) >=3D 0) return hd=
r;
> +		printf("could not read ELF header: %s\n", errno_str());
> +		free(hdr);
> +		return NULL;
> +	}
> +	if (ident[EI_CLASS] =3D=3D ELFCLASS64) {
> +		Elf64_Ehdr *hdr =3D xzalloc(sizeof(Elf64_Ehdr));
> +		memcpy(hdr->e_ident, ident, EI_NIDENT);
> +		if (read(fd, &hdr->e_type, sizeof(*hdr) - EI_NIDENT) >=3D 0) return hd=
r;
> +		printf("could not read ELF header: %s\n", errno_str());
> +		free(hdr);
> +		return NULL;
> +	}
> +	printf("Unknown ELF image class\n");
> +	return NULL;
> +} /* elf_load_header */
> +EXPORT_SYMBOL(elf_load_header);
> +
> +#define ELF_FMT "  %-16s"
> +
> +/* A rough clone of readelf for debugging and stuff. */
> +void elf_print_header(const void *hdr)
> +{
> +	const unsigned char *ident =3D hdr;
> +	int i;
> +
> +	/* Ensure we find the ELF magic number. */
> +	if (strncmp(ident, ELFMAG, SELFMAG)) {
> +		printf("Bad Magic Number\n");
> +		return;
> +	}
> +	printf("  Magic:");
> +	for (i=3D0; i<EI_NIDENT; i++) printf(" %02x", ident[i]);
> +	printf("\n");
> +
> +	/* Print the rest of the ident string. */
> +	switch (ident[EI_CLASS]) {
> +		case ELFCLASSNONE: printf(ELF_FMT "%s\n", "Class:", "None"); break;
> +		case ELFCLASS32: printf(ELF_FMT "%s\n", "Class:", "ELF32"); break;
> +		case ELFCLASS64: printf(ELF_FMT "%s\n", "Class:", "ELF64"); break;
> +		default: printf(ELF_FMT "%s\n", "Class:", "Invalid"); break;
> +	} /* switch */
> +	switch (ident[EI_DATA]) {
> +		case ELFDATANONE: printf(ELF_FMT "%s\n", "Data:", "None"); break;
> +		case ELFDATA2LSB: printf(ELF_FMT "%s\n", "Data:", "2's compliment, lit=
te endian"); break;
> +		case ELFDATA2MSB: printf(ELF_FMT "%s\n", "Data:", "2's compliment, big=
 endian"); break;
> +		default: printf(ELF_FMT "%s\n", "Data:", "Invalid"); break;
> +	} /* switch */
> +	printf(ELF_FMT "0x%x\n", "Version:", ident[EI_VERSION]);
> +	/* TODO: OS/ABI */
> +
> +	if (ident[EI_CLASS] =3D=3D ELFCLASS32) {
> +		const Elf32_Ehdr *elf32 =3D (const Elf32_Ehdr *)hdr;
> +		if (elf32->e_type <=3D ARRAY_SIZE(elf_types)) =

> +			printf(ELF_FMT "%s\n", "Type:", elf_types[elf32->e_type]);
> +		else
> +			printf(ELF_FMT "0x%x\n", "Type:", elf32->e_type);
> +		printf(ELF_FMT "0x%x\n", "Machine:", elf32->e_machine);
> +		printf(ELF_FMT "0x%x\n", "Version:", elf32->e_version);
> +		printf(ELF_FMT "0x%lx\n", "Entry point:", (unsigned long)elf32->e_entr=
y);
> +		printf(ELF_FMT "0x%08x\n", "Flags:", elf32->e_flags);
> +	}
> +	else if (ident[EI_CLASS] =3D=3D ELFCLASS64) {
> +		const Elf64_Ehdr *elf64 =3D (const Elf64_Ehdr *)hdr;
> +		if (elf64->e_type <=3D ARRAY_SIZE(elf_types)) =

> +			printf(ELF_FMT "%s\n", "Type:", elf_types[elf64->e_type]);
> +		else
> +			printf(ELF_FMT "0x%x\n", "Type:", elf64->e_type);
> +		printf(ELF_FMT "0x%x\n", "Machine:", elf64->e_machine);
> +		printf(ELF_FMT "0x%x\n", "Version:", elf64->e_version);
> +		printf(ELF_FMT "0x%llx\n", "Entry point:", (unsigned long long)elf64->=
e_entry);
> +		printf(ELF_FMT "0x%08x\n", "Flags:", elf64->e_flags);
> +	}
> +	/* TODO: Print the section/program header offsets. */
> +} /* elf_print_header */
> +EXPORT_SYMBOL(elf_print_header);
> +
> +static void *elf32_load_sections(int fd, Elf32_Ehdr *hdr)
> +{
> +	unsigned long off;
> +	unsigned char *strtab =3D NULL;
> +	size_t strtabsz =3D 0;
> +	Elf32_Shdr shdr;
> +	int i;
> +
> +	/* We can only load executable images. */
> +	if (hdr->e_type !=3D ET_EXEC) {
> +		printf("ELF image is not executable\n");
> +		return NULL;
> +	}
> +
> +	/* Find the string table from among the section headers. */
> +	off =3D hdr->e_shoff + (hdr->e_shstrndx * sizeof(shdr));
> +	if ((lseek(fd, off, SEEK_SET) < 0) || (read(fd, &shdr, sizeof(shdr)) < =
0)) {
> +		printf("could not read string section header: %s\n", errno_str());
> +		return NULL;
> +	}
> +	if ((shdr.sh_type =3D=3D SHT_STRTAB) && (shdr.sh_size)) {
> +		strtabsz =3D shdr.sh_size;
> +		strtab =3D xzalloc(shdr.sh_size);
> +		if (!strtab) {
> +			printf("could not allocate memory for string table\n");
> +			return NULL;
> +		}
> +		if ((lseek(fd, shdr.sh_offset, SEEK_SET) < 0) || (read(fd, strtab, shd=
r.sh_size) < 0)) {
> +			printf("could not read string table section: %s\n", errno_str());
> +			free(strtab);
> +			return NULL;
> +		}
> +	}
> +    =

> +	/* Load the program sections. */
> +	for (i =3D 0; i < hdr->e_shnum; i++) {
> +		/* Read the next section header */
> +		off =3D hdr->e_shoff + (i * sizeof(shdr));
> +		if ((lseek(fd, off, SEEK_SET) < 0) || (read(fd, &shdr, sizeof(shdr)) <=
 0)) {
> +			printf("could not read section header: %s\n", errno_str());
> +			free(strtab);
> +			return NULL;
> +		}
> +		/* Ignore unallocated or empty sections. */
> +		if (!(shdr.sh_flags & SHF_ALLOC)) continue;
> +		if (!shdr.sh_addr || !shdr.sh_size) continue;
> +
> +		/* Inform the user. */
> +		if (strtab) {
> +			printf("%sing %s @ 0x%08lx (%ld bytes)\n",
> +				(shdr.sh_type =3D=3D SHT_NOBITS) ? "Clear" : "Load",
> +				&strtab[shdr.sh_name],
> +				(unsigned long) shdr.sh_addr,
> +				(long) shdr.sh_size);
> +		}
> +        =

> +		/* Program the section. */
> +		if (shdr.sh_type =3D=3D SHT_NOBITS) {
> +			memset((void *)shdr.sh_addr, 0, shdr.sh_size);
> +		} else {
> +			if ((lseek(fd, shdr.sh_offset, SEEK_SET) < 0) ||
> +				(read(fd, (void *)shdr.sh_addr, shdr.sh_size) < 0)) {
> +				printf("could not read section data: %s\n", errno_str());
> +				free(strtab);
> +				return NULL;
> +			}
> +		}
> +	} /* for */
> +
> +	/* Success. */
> +	free(strtab);
> +	return (void *)hdr->e_entry;
> +} /* elf32_load_sections */
> +
> +void *elf_load_sections(int fd)
> +{
> +	unsigned char *hdr;
> +	void *entry;
> +
> +	/* Load the ELF header. */
> +	hdr =3D elf_load_header(fd);
> +	if (!hdr) return NULL;
> +	if (hdr[EI_CLASS] =3D=3D ELFCLASS32) {
> +		entry =3D elf32_load_sections(fd, (Elf32_Ehdr *)hdr);
> +	}
> +	else {
> +		printf("Unsupported ELF image class\n");
> +		entry =3D NULL;
> +	}
> +	free(hdr);
> +	return entry;
> +} /* elf_load_sections */
> +EXPORT_SYMBOL(elf_load_sections);
> +
> diff --git a/common/filetype.c b/common/filetype.c
> index 0b5da30..0f46fda 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -52,6 +52,7 @@ static const struct filetype_str filetype_str[] =3D {
>  	[filetype_ext] =3D { "ext filesystem", "ext" },
>  	[filetype_gpt] =3D { "GUID Partition Table", "gpt" },
>  	[filetype_bpk] =3D { "Binary PacKage", "bpk" },
> +	[filetype_elf] =3D { "executable and linkable file", "elf" },
>  	[filetype_barebox_env] =3D { "barebox environment file", "bbenv" },
>  };
>  =

> @@ -227,6 +228,8 @@ enum filetype file_detect_type(const void *_buf, size=
_t bufsize)
>  		return filetype_mips_barebox;
>  	if (buf[0] =3D=3D be32_to_cpu(0x534F4659))
>  		return filetype_bpk;
> +	if (strncmp(buf8, "\177ELF", 4) =3D=3D 0)
> +		return filetype_elf;
>  =

>  	if (bufsize < 64)
>  		return filetype_unknown;
> diff --git a/include/elf.h b/include/elf.h
> index 6d4addf..357814f 100644
> --- a/include/elf.h
> +++ b/include/elf.h
> @@ -397,4 +397,8 @@ static inline void arch_write_notes(struct file *file=
) { }
>  #define ELF_CORE_WRITE_EXTRA_NOTES arch_write_notes(file)
>  #endif /* ARCH_HAVE_EXTRA_ELF_NOTES */
>  =

> +void *elf_load_header(int fd);
> +void elf_print_header(const void *hdr);
> +void *elf_load_sections(int fd);
> +
>  #endif /* _LINUX_ELF_H */
> diff --git a/include/filetype.h b/include/filetype.h
> index c20a4f9..c4f776f 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -30,6 +30,7 @@ enum filetype {
>  	filetype_ubifs,
>  	filetype_bpk,
>  	filetype_barebox_env,
> +	filetype_elf,
>  	filetype_max,
>  };
>  =

> -- =

> 1.7.9.5
> =

> =

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
