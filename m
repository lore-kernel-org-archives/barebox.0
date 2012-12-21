Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlxMW-0006eC-ON
 for barebox@lists.infradead.org; Fri, 21 Dec 2012 07:49:45 +0000
Date: Fri, 21 Dec 2012 08:49:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121221074939.GL26326@pengutronix.de>
References: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
 <1355952595-1432-3-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355952595-1432-3-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 2/5] bootm: add very basic ELF support (stolen from kexec)
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 20, 2012 at 01:29:52AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/Kconfig           |    7 +
>  common/Kconfig             |    3 +
>  common/filetype.c          |    5 +
>  include/filetype.h         |    1 +
>  lib/Makefile               |    1 +
>  lib/kexec/Makefile         |    1 +
>  lib/kexec/kexec-elf-exec.c |   85 ++++
>  lib/kexec/kexec-elf.c      |  927 ++++++++++++++++++++++++++++++++++++++++++++
>  lib/kexec/kexec-elf.h      |  110 ++++++
>  lib/kexec/kexec.c          |  251 ++++++++++++
>  lib/kexec/kexec.h          |  117 ++++++
>  11 files changed, 1508 insertions(+)
>  create mode 100644 lib/kexec/Makefile
>  create mode 100644 lib/kexec/kexec-elf-exec.c
>  create mode 100644 lib/kexec/kexec-elf.c
>  create mode 100644 lib/kexec/kexec-elf.h
>  create mode 100644 lib/kexec/kexec.c
>  create mode 100644 lib/kexec/kexec.h
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 75ebfb8..aef4ecb 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -403,6 +403,13 @@ config CMD_BOOTM_AIMAGE
>  	help
>  	  Support using Android Images.
>  
> +config KEXEC
> +	bool
> +	prompt "bootm ELF image support"
> +	depends on CMD_BOOTM && HAS_KEXEC
> +	help
> +	  Support using ELF Images.
> +
>  config CMD_UIMAGE
>  	select UIMAGE
>  	tristate
> diff --git a/common/Kconfig b/common/Kconfig
> index b60b78b..84cfc70 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -674,3 +674,6 @@ endmenu
>  
>  config HAS_DEBUG_LL
>  	bool
> +
> +config HAS_KEXEC
> +	bool
> diff --git a/common/filetype.c b/common/filetype.c
> index 748e364..1bb9cac 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -23,6 +23,7 @@
>  #include <fs.h>
>  #include <malloc.h>
>  #include <errno.h>
> +#include <elf.h>
>  
>  struct filetype_str {
>  	const char *name;	/* human readable filetype */
> @@ -48,6 +49,7 @@ static const struct filetype_str filetype_str[] = {
>  	[filetype_bmp] = { "BMP image", "bmp" },
>  	[filetype_png] = { "PNG image", "png" },
>  	[filetype_ext] = { "ext filesystem", "ext" },
> +	[filetype_elf] = { "ELF", "elf" },
>  };
>  
>  const char *file_type_to_string(enum filetype f)
> @@ -169,6 +171,9 @@ enum filetype file_detect_type(void *_buf, size_t bufsize)
>  	if (buf16[512 + 28] == le16_to_cpu(0xef53))
>  		return filetype_ext;
>  
> +	if (strncmp(buf8, ELFMAG, 4) == 0)
> +		return filetype_elf;
> +

The filetypes are sorted by size in this function. I think this should
go some positions up.

> +/*
> + *	Load the new kernel
> + */
> +static int my_load(char *kernel, unsigned long kexec_flags)
> +{
> +	char *kernel_buf;
> +	off_t kernel_size;
> +	int i = 0;
> +	int result;
> +	struct kexec_info info;
> +	long native_arch;
> +
> +	memset(&info, 0, sizeof(info));
> +	info.segment = NULL;
> +	info.nr_segments = 0;
> +	info.entry = NULL;
> +	info.kexec_flags = kexec_flags;
> +
> +	result = 0;
> +	/* slurp in the input kernel */
> +	/* FIXME: add a decompresion routines insted of read_file() */
> +	kernel_buf = read_file(kernel, &kernel_size);
> +
> +	for (i = 0; i < kexec_file_types; i++) {
> +		if (kexec_file_type[i].probe(kernel_buf, kernel_size) >= 0)
> +			break;
> +	}
> +
> +	if (i == kexec_file_types) {
> +		printf("Cannot determine the file type "
> +				"of %s\n", kernel);
> +		return -1;
> +	}
> +
> +	/* Figure out our native architecture before load */
> +#if 0
> +	native_arch = physical_arch();
> +	if (native_arch < 0) {
> +		return -1;
> +	}
> +#endif
> +	native_arch = 0;
> +	info.kexec_flags |= native_arch;
> +
> +	result = kexec_file_type[i].load(kernel_buf, kernel_size, &info);
> +	if (result < 0) {
> +		switch (result) {
> +		case EFAILED:
> +		default:
> +			printf("Cannot load %s\n", kernel);
> +			break;
> +		}
> +		return result;
> +	}
> +
> +	/* Verify all of the segments load to a valid location in memory */
> +
> +	/* Sort the segments and verify we don't have overlaps */
> +	if (sort_segments(&info) < 0) {
> +		return -1;
> +	}
> +
> +	result = kexec_load(info.entry,
> +		info.nr_segments, info.segment, info.kexec_flags);
> +
> +	if (result != 0) {
> +		/* The load failed, print some debugging information */
> +		printf("kexec_load failed: %s\n",
> +			strerror(errno));
> +		printf("entry       = %p flags = %lx\n",
> +			info.entry, info.kexec_flags);
> +		print_segments(&info);
> +	}
> +
> +	return result;
> +}
> +
> +#include <boot.h>
> +#include <init.h>
> +#include <binfmt.h>
> +
> +static int do_bootm_elf(struct image_data *data)
> +{
> +	my_load(data->os_file, 0);
> +
> +	/* unreachable(); */

This is not unreachable. my_load can return errors. Unfortunately they
are all -1 (which would be nice to have fixed)

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
