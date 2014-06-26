Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f41.google.com ([209.85.160.41])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0Inq-0005QV-Jc
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 23:10:03 +0000
Received: by mail-pb0-f41.google.com with SMTP id ma3so3744583pbc.14
 for <barebox@lists.infradead.org>; Thu, 26 Jun 2014 16:09:40 -0700 (PDT)
Message-ID: <53ACA82F.8090206@exegin.com>
Date: Thu, 26 Jun 2014 16:09:35 -0700
From: Owen Kirby <osk@exegin.com>
MIME-Version: 1.0
References: <53AC8C84.6030907@exegin.com>
 <20140627020641.1b899265639de0dc4c6c88f0@gmail.com>
In-Reply-To: <20140627020641.1b899265639de0dc4c6c88f0@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Support for booting ELF images.
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

I had not seen that patch series. It doesn't seem to have been checked 
in, are you still working on it? kexec seems like a really fancy method 
of loading  the images, but it seems like quite a large patch set just 
to support another image format. I guess this means that kexec would 
need to be added for any other architectures that want to boot from an 
ELF image.

I'm afraid I am guilty as charged of following the U-boot practice, 
that's where I got the initial idea from, I'll look at reworking my 
changes to use bootm instead.

Thanks,
Owen

On 14-06-26 03:06 PM, Antony Pavlov wrote:
> On Thu, 26 Jun 2014 14:11:32 -0700
> Owen Kirby <osk@exegin.com> wrote:
>
> Have you seen the '[RFC 00/10] MIPS: use kexec to load ELF linux images' series?
>     http://lists.infradead.org/pipermail/barebox/2014-April/018651.html
>
> This series is kexec-based so it has relocator.
> The relocator make it possible to load ELF files that overlap current barebox adresses.
>
> Also there is no need to add new 'bootelf' command for new file format support.
> Adding new command for every new file format or new hardware interface is vicious U-boot practice.
> In barebox we already have the 'filetype' mechanism for supporting new file formats, so
> we can load ELF files using conventional 'bootm' command.
>
>>  From 1edc77c7b960d5b42ac3c03000ac5063018195f9 Mon Sep 17 00:00:00 2001
>> From: Owen Kirby <osk@exegin.com>
>> Date: Thu, 26 Jun 2014 13:40:06 -0700
>> Subject: [PATCH] Support for booting ELF images.
>>
>> This patch adds a bootelf command to load and execute OS kernels from the ELF format.
>>
>> Signed-off-by: Owen Kirby <osk@exegin.com>
>> ---
>>   commands/Kconfig   |    7 ++
>>   commands/Makefile  |    1 +
>>   commands/bootelf.c |  112 ++++++++++++++++++++++++++
>>   common/Kconfig     |    3 +
>>   common/Makefile    |    1 +
>>   common/elf.c       |  222 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>>   common/filetype.c  |    3 +
>>   include/elf.h      |    4 +
>>   include/filetype.h |    1 +
>>   9 files changed, 354 insertions(+)
>>   create mode 100644 commands/bootelf.c
>>   create mode 100644 common/elf.c
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index cc014f3..c4e4649 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -507,6 +507,13 @@ config CMD_BOOTU
>>   	  compile in the 'bootu' command to start raw (uncompressed)
>>   	  Linux images
>>   
>> +config CMD_BOOTELF
>> +	select ELF
>> +	tristate
>> +	prompt "elf"
>> +	help
>> +	  compile the 'bootelf' command to start ELF images
>> +
>>   config FLEXIBLE_BOOTARGS
>>   	bool
>>   	prompt "flexible Linux bootargs generation"
>> diff --git a/commands/Makefile b/commands/Makefile
>> index e463031..fd57811 100644
>> --- a/commands/Makefile
>> +++ b/commands/Makefile
>> @@ -1,5 +1,6 @@
>>   obj-$(CONFIG_STDDEV)		+= stddev.o
>>   obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
>> +obj-$(CONFIG_CMD_BOOTELF)	+= bootelf.o
>>   obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
>>   obj-$(CONFIG_CMD_LINUX16)	+= linux16.o
>>   obj-$(CONFIG_CMD_LOADB)		+= loadb.o
>> diff --git a/commands/bootelf.c b/commands/bootelf.c
>> new file mode 100644
>> index 0000000..dc38b9e
>> --- /dev/null
>> +++ b/commands/bootelf.c
>> @@ -0,0 +1,112 @@
>> +/*
>> + * bootelf.c - ELF booting code
>> + *
>> + * Copyright (c) 2014 Owen Kirby <osk@exegin.com>, Exegin Technologies Limited
>> + *
>> + * partly based on U-Boot ELF code.
>> + *
>> + * See file CREDITS for list of people who contributed to this
>> + * project.
>> + *
>> + * This program is free software; you can redistribute it and/or modify
>> + * it under the terms of the GNU General Public License version 2
>> + * as published by the Free Software Foundation.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + */
>> +#include <common.h>
>> +#include <command.h>
>> +#include <malloc.h>
>> +#include <fcntl.h>
>> +#include <fs.h>
>> +#include <elf.h>
>> +
>> +static int do_readelf(int argc, char *argv[])
>> +{
>> +	void *hdr;
>> +	int fd;
>> +
>> +	if (argc < 2)
>> +		return COMMAND_ERROR_USAGE;
>> +
>> +	fd = open(argv[1], O_RDONLY);
>> +	if (fd < 0) {
>> +		printf("could not open: %s\n", errno_str());
>> +		return 1;
>> +	}
>> +	hdr = elf_load_header(fd);
>> +	if (!hdr) {
>> +		close(fd);
>> +		return 1;
>> +	}
>> +	elf_print_header(hdr);
>> +	free(hdr);
>> +	close(fd);
>> +	return 0;
>> +}
>> +
>> +BAREBOX_CMD_START(readelf)
>> +	.cmd		= do_readelf,
>> +	.usage		= "Read an ELF image header",
>> +BAREBOX_CMD_END
>> +
>> +static int do_bootelf(int argc, char *argv[])
>> +{
>> +	void 	*hdr;
>> +	void 	*addr;
>> +	int	(*func)(int argc, char *argv[]);
>> +	int	fd;
>> +
>> +	if (argc < 2)
>> +		return COMMAND_ERROR_USAGE;
>> +
>> +	fd = open(argv[1], O_RDONLY);
>> +	if (fd < 0) {
>> +		printf("could not open: %s\n", errno_str());
>> +		return 1;
>> +	}
>> +
>> +	/* Print the ELF header for the user. */
>> +	hdr = elf_load_header(fd);
>> +	if (!hdr) {
>> +		close(fd);
>> +		return 1;
>> +	}
>> +	elf_print_header(hdr);
>> +	free(hdr);
>> +
>> +	/* Load the ELF sections. */
>> +	addr = elf_load_sections(fd);
>> +	if (!addr) {
>> +		close(fd);
>> +		return 1;
>> +	}
>> +
>> +	/* Launch the application */
>> +	printf("## Starting application at 0x%p ...\n", addr);
>> +	console_flush();
>> +	func = addr;
>> +	shutdown_barebox();
>> +
>> +	if (do_execute)
>> +		do_execute(func, argc - 1, &argv[1]);
>> +	else
>> +		func(argc - 1, &argv[1]);
>> +
>> +	/*
>> +	 * The application returned. Since we have shutdown barebox and
>> +	 * we know nothing about the state of the cpu/memory we can't
>> +	 * do anything here.
>> +	 */
>> +	while (1);
>> +	return 0;
>> +}
>> +
>> +BAREBOX_CMD_START(bootelf)
>> +	.cmd		= do_bootelf,
>> +	.usage		= "Boot an ELF image",
>> +BAREBOX_CMD_END
>> +
>> diff --git a/common/Kconfig b/common/Kconfig
>> index 0031cc8..0d22a58 100644
>> --- a/common/Kconfig
>> +++ b/common/Kconfig
>> @@ -53,6 +53,9 @@ config UIMAGE
>>   	select CRC32
>>   	bool
>>   
>> +config ELF
>> +	bool
>> +
>>   config GLOBALVAR
>>   	bool
>>   
>> diff --git a/common/Makefile b/common/Makefile
>> index 204241c..9decc96 100644
>> --- a/common/Makefile
>> +++ b/common/Makefile
>> @@ -21,6 +21,7 @@ obj-$(CONFIG_CONSOLE_FULL)	+= console.o
>>   obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
>>   obj-$(CONFIG_DIGEST)		+= digest.o
>>   obj-$(CONFIG_DDR_SPD)		+= ddr_spd.o
>> +obj-$(CONFIG_ELF)		+= elf.o
>>   obj-$(CONFIG_ENV_HANDLING)	+= environment.o
>>   obj-$(CONFIG_ENVIRONMENT_VARIABLES) += env.o
>>   obj-$(CONFIG_FILETYPE)		+= filetype.o
>> diff --git a/common/elf.c b/common/elf.c
>> new file mode 100644
>> index 0000000..1383ccc
>> --- /dev/null
>> +++ b/common/elf.c
>> @@ -0,0 +1,222 @@
>> +/*
>> + * elf.c - ELF handling code
>> + *
>> + * Copyright (c) 2014 Owen Kirby <osk@exegin.com>, Exegin Technologies Limited
>> + *
>> + * partly based on U-Boot ELF code.
>> + *
>> + * See file CREDITS for list of people who contributed to this
>> + * project.
>> + *
>> + * This program is free software; you can redistribute it and/or modify
>> + * it under the terms of the GNU General Public License version 2
>> + * as published by the Free Software Foundation.
>> + *
>> + * This program is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> + * GNU General Public License for more details.
>> + */
>> +#include <common.h>
>> +#include <malloc.h>
>> +#include <fcntl.h>
>> +#include <fs.h>
>> +#include <elf.h>
>> +
>> +const char *elf_types[] = {
>> +	[ET_NONE] = "None",
>> +	[ET_REL] = "Relocatable",
>> +	[ET_EXEC] = "Executable",
>> +	[ET_DYN] = "Dynamic",
>> +	[ET_CORE] = "Core Dump",
>> +};
>> +
>> +void *elf_load_header(int fd)
>> +{
>> +	unsigned char ident[EI_NIDENT];
>> +
>> +	if ((lseek(fd, 0, SEEK_SET) < 0) || (read(fd, ident, sizeof(ident)) < 0)) {
>> +		printf("could not read ident header: %s\n", errno_str());
>> +		return NULL;
>> +	}
>> +	/* Ensure we find the ELF magic number. */
>> +	if (strncmp(ident, ELFMAG, SELFMAG)) {
>> +		printf("Bad Magic Number\n");
>> +		return NULL;
>> +	}
>> +
>> +	/* Read the ELF32 header. */
>> +	if (ident[EI_CLASS] == ELFCLASS32) {
>> +		Elf32_Ehdr *hdr = xzalloc(sizeof(Elf32_Ehdr));
>> +		memcpy(hdr->e_ident, ident, EI_NIDENT);
>> +		if (read(fd, &hdr->e_type, sizeof(*hdr) - EI_NIDENT) >= 0) return hdr;
>> +		printf("could not read ELF header: %s\n", errno_str());
>> +		free(hdr);
>> +		return NULL;
>> +	}
>> +	if (ident[EI_CLASS] == ELFCLASS64) {
>> +		Elf64_Ehdr *hdr = xzalloc(sizeof(Elf64_Ehdr));
>> +		memcpy(hdr->e_ident, ident, EI_NIDENT);
>> +		if (read(fd, &hdr->e_type, sizeof(*hdr) - EI_NIDENT) >= 0) return hdr;
>> +		printf("could not read ELF header: %s\n", errno_str());
>> +		free(hdr);
>> +		return NULL;
>> +	}
>> +	printf("Unknown ELF image class\n");
>> +	return NULL;
>> +} /* elf_load_header */
>> +EXPORT_SYMBOL(elf_load_header);
>> +
>> +#define ELF_FMT "  %-16s"
>> +
>> +/* A rough clone of readelf for debugging and stuff. */
>> +void elf_print_header(const void *hdr)
>> +{
>> +	const unsigned char *ident = hdr;
>> +	int i;
>> +
>> +	/* Ensure we find the ELF magic number. */
>> +	if (strncmp(ident, ELFMAG, SELFMAG)) {
>> +		printf("Bad Magic Number\n");
>> +		return;
>> +	}
>> +	printf("  Magic:");
>> +	for (i=0; i<EI_NIDENT; i++) printf(" %02x", ident[i]);
>> +	printf("\n");
>> +
>> +	/* Print the rest of the ident string. */
>> +	switch (ident[EI_CLASS]) {
>> +		case ELFCLASSNONE: printf(ELF_FMT "%s\n", "Class:", "None"); break;
>> +		case ELFCLASS32: printf(ELF_FMT "%s\n", "Class:", "ELF32"); break;
>> +		case ELFCLASS64: printf(ELF_FMT "%s\n", "Class:", "ELF64"); break;
>> +		default: printf(ELF_FMT "%s\n", "Class:", "Invalid"); break;
>> +	} /* switch */
>> +	switch (ident[EI_DATA]) {
>> +		case ELFDATANONE: printf(ELF_FMT "%s\n", "Data:", "None"); break;
>> +		case ELFDATA2LSB: printf(ELF_FMT "%s\n", "Data:", "2's compliment, litte endian"); break;
>> +		case ELFDATA2MSB: printf(ELF_FMT "%s\n", "Data:", "2's compliment, big endian"); break;
>> +		default: printf(ELF_FMT "%s\n", "Data:", "Invalid"); break;
>> +	} /* switch */
>> +	printf(ELF_FMT "0x%x\n", "Version:", ident[EI_VERSION]);
>> +	/* TODO: OS/ABI */
>> +
>> +	if (ident[EI_CLASS] == ELFCLASS32) {
>> +		const Elf32_Ehdr *elf32 = (const Elf32_Ehdr *)hdr;
>> +		if (elf32->e_type <= ARRAY_SIZE(elf_types))
>> +			printf(ELF_FMT "%s\n", "Type:", elf_types[elf32->e_type]);
>> +		else
>> +			printf(ELF_FMT "0x%x\n", "Type:", elf32->e_type);
>> +		printf(ELF_FMT "0x%x\n", "Machine:", elf32->e_machine);
>> +		printf(ELF_FMT "0x%x\n", "Version:", elf32->e_version);
>> +		printf(ELF_FMT "0x%lx\n", "Entry point:", (unsigned long)elf32->e_entry);
>> +		printf(ELF_FMT "0x%08x\n", "Flags:", elf32->e_flags);
>> +	}
>> +	else if (ident[EI_CLASS] == ELFCLASS64) {
>> +		const Elf64_Ehdr *elf64 = (const Elf64_Ehdr *)hdr;
>> +		if (elf64->e_type <= ARRAY_SIZE(elf_types))
>> +			printf(ELF_FMT "%s\n", "Type:", elf_types[elf64->e_type]);
>> +		else
>> +			printf(ELF_FMT "0x%x\n", "Type:", elf64->e_type);
>> +		printf(ELF_FMT "0x%x\n", "Machine:", elf64->e_machine);
>> +		printf(ELF_FMT "0x%x\n", "Version:", elf64->e_version);
>> +		printf(ELF_FMT "0x%llx\n", "Entry point:", (unsigned long long)elf64->e_entry);
>> +		printf(ELF_FMT "0x%08x\n", "Flags:", elf64->e_flags);
>> +	}
>> +	/* TODO: Print the section/program header offsets. */
>> +} /* elf_print_header */
>> +EXPORT_SYMBOL(elf_print_header);
>> +
>> +static void *elf32_load_sections(int fd, Elf32_Ehdr *hdr)
>> +{
>> +	unsigned long off;
>> +	unsigned char *strtab = NULL;
>> +	size_t strtabsz = 0;
>> +	Elf32_Shdr shdr;
>> +	int i;
>> +
>> +	/* We can only load executable images. */
>> +	if (hdr->e_type != ET_EXEC) {
>> +		printf("ELF image is not executable\n");
>> +		return NULL;
>> +	}
>> +
>> +	/* Find the string table from among the section headers. */
>> +	off = hdr->e_shoff + (hdr->e_shstrndx * sizeof(shdr));
>> +	if ((lseek(fd, off, SEEK_SET) < 0) || (read(fd, &shdr, sizeof(shdr)) < 0)) {
>> +		printf("could not read string section header: %s\n", errno_str());
>> +		return NULL;
>> +	}
>> +	if ((shdr.sh_type == SHT_STRTAB) && (shdr.sh_size)) {
>> +		strtabsz = shdr.sh_size;
>> +		strtab = xzalloc(shdr.sh_size);
>> +		if (!strtab) {
>> +			printf("could not allocate memory for string table\n");
>> +			return NULL;
>> +		}
>> +		if ((lseek(fd, shdr.sh_offset, SEEK_SET) < 0) || (read(fd, strtab, shdr.sh_size) < 0)) {
>> +			printf("could not read string table section: %s\n", errno_str());
>> +			free(strtab);
>> +			return NULL;
>> +		}
>> +	}
>> +
>> +	/* Load the program sections. */
>> +	for (i = 0; i < hdr->e_shnum; i++) {
>> +		/* Read the next section header */
>> +		off = hdr->e_shoff + (i * sizeof(shdr));
>> +		if ((lseek(fd, off, SEEK_SET) < 0) || (read(fd, &shdr, sizeof(shdr)) < 0)) {
>> +			printf("could not read section header: %s\n", errno_str());
>> +			free(strtab);
>> +			return NULL;
>> +		}
>> +		/* Ignore unallocated or empty sections. */
>> +		if (!(shdr.sh_flags & SHF_ALLOC)) continue;
>> +		if (!shdr.sh_addr || !shdr.sh_size) continue;
>> +
>> +		/* Inform the user. */
>> +		if (strtab) {
>> +			printf("%sing %s @ 0x%08lx (%ld bytes)\n",
>> +				(shdr.sh_type == SHT_NOBITS) ? "Clear" : "Load",
>> +				&strtab[shdr.sh_name],
>> +				(unsigned long) shdr.sh_addr,
>> +				(long) shdr.sh_size);
>> +		}
>> +
>> +		/* Program the section. */
>> +		if (shdr.sh_type == SHT_NOBITS) {
>> +			memset((void *)shdr.sh_addr, 0, shdr.sh_size);
>> +		} else {
>> +			if ((lseek(fd, shdr.sh_offset, SEEK_SET) < 0) ||
>> +				(read(fd, (void *)shdr.sh_addr, shdr.sh_size) < 0)) {
>> +				printf("could not read section data: %s\n", errno_str());
>> +				free(strtab);
>> +				return NULL;
>> +			}
>> +		}
>> +	} /* for */
>> +
>> +	/* Success. */
>> +	free(strtab);
>> +	return (void *)hdr->e_entry;
>> +} /* elf32_load_sections */
>> +
>> +void *elf_load_sections(int fd)
>> +{
>> +	unsigned char *hdr;
>> +	void *entry;
>> +
>> +	/* Load the ELF header. */
>> +	hdr = elf_load_header(fd);
>> +	if (!hdr) return NULL;
>> +	if (hdr[EI_CLASS] == ELFCLASS32) {
>> +		entry = elf32_load_sections(fd, (Elf32_Ehdr *)hdr);
>> +	}
>> +	else {
>> +		printf("Unsupported ELF image class\n");
>> +		entry = NULL;
>> +	}
>> +	free(hdr);
>> +	return entry;
>> +} /* elf_load_sections */
>> +EXPORT_SYMBOL(elf_load_sections);
>> +
>> diff --git a/common/filetype.c b/common/filetype.c
>> index 0b5da30..0f46fda 100644
>> --- a/common/filetype.c
>> +++ b/common/filetype.c
>> @@ -52,6 +52,7 @@ static const struct filetype_str filetype_str[] = {
>>   	[filetype_ext] = { "ext filesystem", "ext" },
>>   	[filetype_gpt] = { "GUID Partition Table", "gpt" },
>>   	[filetype_bpk] = { "Binary PacKage", "bpk" },
>> +	[filetype_elf] = { "executable and linkable file", "elf" },
>>   	[filetype_barebox_env] = { "barebox environment file", "bbenv" },
>>   };
>>   
>> @@ -227,6 +228,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
>>   		return filetype_mips_barebox;
>>   	if (buf[0] == be32_to_cpu(0x534F4659))
>>   		return filetype_bpk;
>> +	if (strncmp(buf8, "\177ELF", 4) == 0)
>> +		return filetype_elf;
>>   
>>   	if (bufsize < 64)
>>   		return filetype_unknown;
>> diff --git a/include/elf.h b/include/elf.h
>> index 6d4addf..357814f 100644
>> --- a/include/elf.h
>> +++ b/include/elf.h
>> @@ -397,4 +397,8 @@ static inline void arch_write_notes(struct file *file) { }
>>   #define ELF_CORE_WRITE_EXTRA_NOTES arch_write_notes(file)
>>   #endif /* ARCH_HAVE_EXTRA_ELF_NOTES */
>>   
>> +void *elf_load_header(int fd);
>> +void elf_print_header(const void *hdr);
>> +void *elf_load_sections(int fd);
>> +
>>   #endif /* _LINUX_ELF_H */
>> diff --git a/include/filetype.h b/include/filetype.h
>> index c20a4f9..c4f776f 100644
>> --- a/include/filetype.h
>> +++ b/include/filetype.h
>> @@ -30,6 +30,7 @@ enum filetype {
>>   	filetype_ubifs,
>>   	filetype_bpk,
>>   	filetype_barebox_env,
>> +	filetype_elf,
>>   	filetype_max,
>>   };
>>   
>> -- 
>> 1.7.9.5
>>
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
