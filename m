Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuBf7-0008W3-V7
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 08:46:59 +0000
Date: Wed, 22 Jan 2020 09:46:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200122084656.c6p52cpgstrzfna2@pengutronix.de>
References: <20200120145821.22899-1-s.trumtrar@pengutronix.de>
 <20200120145821.22899-2-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120145821.22899-2-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v3 2/3] imd: add support for checksum
 generation/verification
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 20, 2020 at 03:58:20PM +0100, Steffen Trumtrar wrote:
> Add a new imd type "checksum". This type consists of the CRC32 checksum
> of the whole barebox image minus the checksum itself.
> The checksum can be written to the imd field with the bareboximd host-tool.
> It can be verified with said tool or with "imd" on the target.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> Changes in v3:
>   - moved the flags field to the uint32_t tag
> 
>  commands/imd.c           |   1 +
>  common/imd-barebox.c     |   1 +
>  common/imd.c             | 169 ++++++++++++++++++++++++++++++++++++++-
>  include/image-metadata.h |  42 ++++++++++
>  scripts/bareboximd.c     |  32 ++++++++
>  5 files changed, 244 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/imd.c b/commands/imd.c
> index f1a22cef96bd..16ab7290c920 100644
> --- a/commands/imd.c
> +++ b/commands/imd.c
> @@ -46,6 +46,7 @@ BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-t <type>", "only show information of <type>")
>  BAREBOX_CMD_HELP_OPT ("-n <no>", "for tags with multiple strings only show string <no>")
>  BAREBOX_CMD_HELP_OPT ("-s VARNAME",  "set variable VARNAME instead of showing information")
> +BAREBOX_CMD_HELP_OPT ("-V",  "Verify checksum of image")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Without options all information available is printed. Valid types are:")
>  BAREBOX_CMD_HELP_TEXT("release, build, model, of_compatible")
> diff --git a/common/imd-barebox.c b/common/imd-barebox.c
> index e9cd37d83ec8..4aec51bfbdc2 100644
> --- a/common/imd-barebox.c
> +++ b/common/imd-barebox.c
> @@ -23,3 +23,4 @@ __BAREBOX_IMD_SECTION(.barebox_imd_end) = {
>  
>  BAREBOX_IMD_TAG_STRING(imd_build_tag, IMD_TYPE_BUILD, UTS_VERSION, 1);
>  BAREBOX_IMD_TAG_STRING(imd_release_tag, IMD_TYPE_RELEASE, UTS_RELEASE, 1);
> +BAREBOX_IMD_CRC(imd_checksum, 0x0, 1);
> diff --git a/common/imd.c b/common/imd.c
> index e0dab69644c0..b8429184777b 100644
> --- a/common/imd.c
> +++ b/common/imd.c
> @@ -22,6 +22,7 @@
>  #include <getopt.h>
>  #include <malloc.h>
>  #include <fs.h>
> +#include <crc.h>
>  
>  #ifndef CONFIG_CMD_IMD
>  int imd_command_setenv(const char *variable_name, const char *value)
> @@ -167,6 +168,9 @@ static struct imd_type_names imd_types[] = {
>  	}, {
>  		.type = IMD_TYPE_OF_COMPATIBLE,
>  		.name = "of_compatible",
> +	}, {
> +		.type = IMD_TYPE_CHECKSUM,
> +		.name = "checksum",

Given that it's specifically a CRC32 sum it should be named like this.
In the end a sh256sum is also a checksum, so we shouldn't pollute the
namespace like this.

> @@ -299,10 +449,12 @@ int imd_command(int argc, char *argv[])
>  	const char *filename;
>  	const char *variable_name = NULL;
>  	char *str;
> +	uint32_t checksum = 0;
> +	uint32_t verify = 0;
>  
>  	imd_command_verbose = 0;
>  
> -	while ((opt = getopt(argc, argv, "vt:s:n:")) > 0) {
> +	while ((opt = getopt(argc, argv, "vt:s:n:cV")) > 0) {
>  		switch(opt) {
>  		case 't':
>  			type = imd_name_to_type(optarg);
> @@ -320,6 +472,12 @@ int imd_command(int argc, char *argv[])
>  		case 'n':
>  			strno = simple_strtoul(optarg, NULL, 0);
>  			break;
> +		case 'c':
> +			checksum = 1;
> +			break;
> +		case 'V':
> +			verify = 1;
> +			break;

These new options are not documented in commands/imd.c.

The Linux imd command should have a help function as well, but that's a
different topic.

> diff --git a/include/image-metadata.h b/include/image-metadata.h
> index 5904d95acd37..637a611a39a1 100644
> --- a/include/image-metadata.h
> +++ b/include/image-metadata.h
> @@ -25,9 +25,12 @@
>  #define IMD_TYPE_MODEL		0x640c8004 /* The board name this image is for */
>  #define IMD_TYPE_OF_COMPATIBLE	0x640c8005 /* the device tree compatible string */
>  #define IMD_TYPE_PARAMETER	0x640c8006 /* A generic parameter. Use key=value as data */
> +#define IMD_TYPE_CHECKSUM	0x640c1007 /* the checksum of the barebox images */
>  #define IMD_TYPE_END		0x640c7fff
>  #define IMD_TYPE_INVALID	0xffffffff
>  
> +#define IMD_FLAG_TAG_VALID	(1 << 0)

This should be specific to a crc32 tag.

> +
>  /*
>   * The IMD header. All data is stored in little endian format in the image.
>   * The next header starts at the next 4 byte boundary after the data.
> @@ -51,6 +54,25 @@ static inline int imd_is_string(uint32_t type)
>  	return (type & 0x8000) ? 1 : 0;
>  }
>  
> +static inline int imd_is_uint32(uint32_t type)
> +{
> +	return (type & 0x1000) ? 1 : 0;
> +}

Erm, no. Please don't reserve bits in the IMD_TYPE_ defines without
documenting it anywhere.

> +
> +static inline int imd_entry_is_valid(uint32_t flags)
> +{
> +	return (flags & IMD_FLAG_TAG_VALID) ? 1 : 0;
> +}
> +
> +/*
> + * A IMD int.
> + */
> +struct imd_entry_uint32 {
> +	struct imd_header header;
> +	uint32_t data;
> +	uint32_t flags;
> +};

Given that this is not a plain uint32_t but has an additional flags
field this should really be a struct imd_entry_crc32.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
