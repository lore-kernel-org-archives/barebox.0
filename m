Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YWJzS-0006hD-HT
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 07:26:39 +0000
Date: Fri, 13 Mar 2015 08:26:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150313072616.GK24885@pengutronix.de>
References: <20150312141938.GS30554@ns203013.ovh.net>
 <1426170146-31302-1-git-send-email-plagnioj@jcrosoft.com>
 <1426170146-31302-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1426170146-31302-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 7/7] command: add generic digest command
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 12, 2015 at 03:22:26PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> That can be used for digest calculation and verify
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/Kconfig    |  12 +++-
>  commands/Makefile   |   1 +
>  commands/digest.c   | 195 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  commands/hashsum.c  |  68 ++++--------------
>  commands/internal.h |   3 +
>  common/password.c   |  43 +-----------
>  crypto/digest.c     |  92 +++++++++++++++++++++++--
>  include/digest.h    |  13 +++-
>  8 files changed, 322 insertions(+), 105 deletions(-)
>  create mode 100644 commands/digest.c
>  create mode 100644 commands/internal.h
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 7e3e8b7..847ff76 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -14,7 +14,7 @@ if COMMAND_SUPPORT
>  
>  config COMPILE_HASH
>  	tristate
> -	select DIGEST
> +	select CMD_DIGEST
>  	help
>  	  Turns on compilation of digest.c
>  
> @@ -842,6 +842,16 @@ config CMD_CMP
>  
>  	  Returns successfully if the two files are the same, return with an error if not
>  
> +config CMD_DIGEST
> +	tristate
> +	select DIGEST
> +	prompt "digest"
> +	help
> +	  Usage: digest -a <algo> [-k <key> | -K <file>] [-s <sig> | -S <file>] FILE|AREA
> +
> +	  Calculate a digest over a FILE or a memory area with the possibility
> +	  to checkit.
> +
>  config CMD_DIRNAME
>  	tristate
>  	prompt "dirname"
> diff --git a/commands/Makefile b/commands/Makefile
> index e42662f..b902f58 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -1,4 +1,5 @@
>  obj-$(CONFIG_STDDEV)		+= stddev.o
> +obj-$(CONFIG_CMD_DIGEST)	+= digest.o
>  obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
>  obj-$(CONFIG_COMPILE_MEMORY)	+= mem.o
>  obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
> diff --git a/commands/digest.c b/commands/digest.c
> new file mode 100644
> index 0000000..e9b4e66
> --- /dev/null
> +++ b/commands/digest.c
> @@ -0,0 +1,195 @@
> +/*
> + * Copyright (c) 2015 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * GPLv2 ONLY
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <fs.h>
> +#include <fcntl.h>
> +#include <errno.h>
> +#include <xfuncs.h>
> +#include <malloc.h>
> +#include <digest.h>
> +#include <getopt.h>
> +#include <libfile.h>
> +
> +#include "internal.h"
> +
> +int __do_digest(struct digest *d, unsigned char *key, int keylen,
> +		       unsigned char *sig,
> +		       int argc, char *argv[])
> +{
> +	int ret = 0;
> +	int i;
> +	unsigned char *hash;
> +
> +	if (argc < 1)
> +		return COMMAND_ERROR_USAGE;
> +
> +	hash = calloc(digest_length(d), sizeof(unsigned char));
> +	if (!hash) {
> +		perror("calloc");
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	while (*argv) {
> +		char *filename = "/dev/mem";
> +		loff_t start = 0, size = ~0;
> +
> +		/* arguments are either file, file+area or area */
> +		if (parse_area_spec(*argv, &start, &size)) {
> +			filename = *argv;
> +			if (argv[1] && !parse_area_spec(argv[1], &start, &size))
> +				argv++;
> +		}
> +
> +		ret = digest_file_window(d, filename,
> +					 key, keylen,
> +					 hash, sig, start, size);
> +		if (ret < 0) {
> +			ret = 1;
> +		} else {
> +			if (!sig) {
> +				for (i = 0; i < digest_length(d); i++)
> +					printf("%02x", hash[i]);
> +
> +				printf("  %s\t0x%08llx ... 0x%08llx\n",
> +					filename, start, start + size);
> +			}
> +		}
> +
> +		argv++;
> +	}
> +
> +	free(hash);
> +	digest_free(d);
> +
> +	return ret;
> +}
> +
> +static void __prints_algo(void)
> +{
> +	puts("available algo:\n\n");
> +	digest_algo_prints("\t");
> +}
> +
> +static int do_digest(int argc, char *argv[])
> +{
> +	struct digest *d;
> +	unsigned char *tmp_key = NULL;
> +	unsigned char *tmp_sig = NULL;
> +	char *sig = NULL;
> +	char *sigfile = NULL;
> +	size_t siglen = 0;
> +	char *key = NULL;
> +	char *keyfile = NULL;
> +	size_t keylen = 0;
> +	size_t digestlen = 0;
> +	char *algo = NULL;
> +	int opt, ret;
> +
> +	if (argc < 2) {
> +		__prints_algo();
> +		return 0;
> +	}

This is an untuitive trigger to print the available algos. Can we add an
explicit option here?

> +
> +	while((opt = getopt(argc, argv, "a:k:K:s:S:")) > 0) {
> +		switch(opt) {
> +		case 'k':
> +			key = optarg;
> +			keylen = strlen(key);
> +			break;
> +		case 'K':
> +			keyfile = optarg;
> +			break;
> +		case 'a':
> +			algo = optarg;
> +			break;
> +		case 's':
> +			sig = optarg;
> +			siglen = strlen(sig);
> +			break;
> +		case 'S':
> +			sigfile = optarg;
> +			break;
> +		}
> +	}
> +
> +	if (!algo)
> +		return COMMAND_ERROR_USAGE;
> +
> +	d = digest_alloc(algo);
> +	if (!d) {
> +		eprintf("algo '%s' not found\n", algo);
> +		__prints_algo();
> +		return COMMAND_ERROR_USAGE;
> +	}
> +
> +	argc -= optind;
> +	argv += optind;
> +
> +	if (keyfile) {
> +		tmp_key = key = read_file(keyfile, &keylen);

Why two variables? Both tmp_key and key are never changed.

> +		if (!key) {
> +			eprintf("file '%s' not found\n", keyfile);
> +			goto err;
> +		}
> +	}
> +
> +	digest_set_key(d, key, keylen);

This can fail. You should check the error code.

> +unsigned char to_digit(unsigned char c)
> +{
> +	if (c >= '0' && c <= '9')
> +		c -= '0';
> +	else
> +		c -= 'a' - 10;
> +
> +	return c;
> +}
> +
> +unsigned char to_hexa(unsigned char c)
> +{
> +	if (c < 10)
> +		c += '0';
> +	else
> +		c += 'a' - 10;
> +
> +	return c;
> +}
> +
> +int base64_to_hex(const unsigned char *sum, unsigned char *buf, size_t length)
> +{

The ASCII input here contains hex digits, base64 is something different.
Also these functions are useful enough to be always available, not only
when digest is enabled.

I just sent a patch containing the kernels implementation of bin2hex and
hex2bin. Please base on this one.

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
