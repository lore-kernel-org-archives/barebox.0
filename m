Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rvojo-0002BG-Bh
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 11:34:02 +0000
Date: Fri, 10 Feb 2012 12:33:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120210113344.GF3852@pengutronix.de>
References: <CAHjoi4eBPAL=R-E132z3ZsOWVw+VBFtQWUcMAYvmvx5hEkn+4A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHjoi4eBPAL=R-E132z3ZsOWVw+VBFtQWUcMAYvmvx5hEkn+4A@mail.gmail.com>
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
Subject: Re: [PATCH] Fix Mac OS cross compile failed.
To: Keith Mok <ek9852@gmail.com>
Cc: barebox@lists.infradead.org

Hi Keith,

On Tue, Feb 07, 2012 at 10:45:27PM +0800, Keith Mok wrote:
> Fix to avoid using GNU extension on varies areas.

The patch is corrupted by your mailer. I see some additional linebreaks
and also for some other reason patch reports a malformed patch.

> 
> Signed-off-by: Keith Mok <ek9852@gmail.com>
> ---
>  common/Makefile       |    4 +-
>  crypto/crc32.c        |   10 ++--
>  include/envfs.h       |   12 ++++
>  include/image.h       |    3 +-
>  scripts/genenv        |    4 +-
>  scripts/omap_signGP.c |  143 +++++++++++++++++++++++++-----------------------
>  6 files changed, 97 insertions(+), 79 deletions(-)
> 
> diff --git a/common/Makefile b/common/Makefile
> index d1132c3..ded742b 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -47,7 +47,7 @@ ifneq ($(CONFIG_DEFAULT_ENVIRONMENT_PATH),"")
>  DEFAULT_ENVIRONMENT_PATH += $(CONFIG_DEFAULT_ENVIRONMENT_PATH)
>  endif
> 
> -ENV_FILES := $(shell cd $(srctree); for i in
> $(DEFAULT_ENVIRONMENT_PATH); do find $${i} -type f -exec readlink -f
> '{}' \;; done)
> +ENV_FILES := $(shell for i in $(srctree)/$(DEFAULT_ENVIRONMENT_PATH);
> do find $${i} -type f; done)
> 
>  endif # ifdef CONFIG_DEFAULT_ENVIRONMENT
> 
> @@ -76,7 +76,7 @@ barebox_default_env.lzo: barebox_default_env
> 
>  include/generated/barebox_default_env.h:
> barebox_default_env$(barebox_default_env_comp)
>  	$(Q)cat $< | $(objtree)/scripts/bin2c default_environment > $@
> -	$(Q)echo "const int default_environment_uncompress_size=`stat -c%s
> barebox_default_env`;" >> $@
> +	$(Q)echo "const int default_environment_uncompress_size=`wc -c
> barebox_default_env | awk '{print $$1}'`;" >> $@
> 
>  CLEAN_FILES += include/generated/barebox_default_env.h barebox_default_env
>  CLEAN_FILES += barebox_default_env.gz barebox_default_env.bz2
> diff --git a/crypto/crc32.c b/crypto/crc32.c
> index 275edb4..a62a410 100644
> --- a/crypto/crc32.c
> +++ b/crypto/crc32.c
> @@ -15,7 +15,7 @@
>  #ifdef CONFIG_DYNAMIC_CRC_TABLE
> 
>  static int crc_table_empty = 1;
> -static ulong crc_table[256];
> +static u_long crc_table[256];

Please use a standard unsigned long instead.

>  static void make_crc_table(void);
> 
>  /*
> @@ -44,9 +44,9 @@ static void make_crc_table(void);
>  */
>  static void make_crc_table(void)
>  {
> -  ulong c;
> +  u_long c;
>    int n, k;
> -  ulong poly;            /* polynomial exclusive-or pattern */
> +  u_long poly;            /* polynomial exclusive-or pattern */
>    /* terms of polynomial defining this crc (except x^32): */
>    static const char p[] = {0,1,2,4,5,7,8,10,11,12,16,22,23,26};
> 
> @@ -57,7 +57,7 @@ static void make_crc_table(void)
> 
>    for (n = 0; n < 256; n++)
>    {
> -    c = (ulong)n;
> +    c = (u_long)n;
>      for (k = 0; k < 8; k++)
>        c = c & 1 ? poly ^ (c >> 1) : c >> 1;
>      crc_table[n] = c;
> @@ -68,7 +68,7 @@ static void make_crc_table(void)
>  /* ========================================================================
>   * Table of CRC-32's of all single-byte values (made by make_crc_table)
>   */
> -static const ulong crc_table[256] = {
> +static const u_long crc_table[256] = {
>    0x00000000L, 0x77073096L, 0xee0e612cL, 0x990951baL, 0x076dc419L,
>    0x706af48fL, 0xe963a535L, 0x9e6495a3L, 0x0edb8832L, 0x79dcb8a4L,
>    0xe0d5e91eL, 0x97d2d988L, 0x09b64c2bL, 0x7eb17cbdL, 0xe7b82d07L,
> diff --git a/include/envfs.h b/include/envfs.h
> index b5849d9..b6e9110 100644
> --- a/include/envfs.h
> +++ b/include/envfs.h
> @@ -1,7 +1,9 @@
>  #ifndef _ENVFS_H
>  #define _ENVFS_H
> 
> +#ifndef __APPLE__
>  #include <asm/byteorder.h>
> +#endif

I *think* this should be

#ifdef __BAREBOX__
#include <asm/byteorder.h>
#endif

instead. I assume that compilation on apple fails on

HOSTCC  scripts/bareboxenv

right?


> 
>  #define ENVFS_MAGIC		    0x798fba79	/* some random number */
>  #define ENVFS_INODE_MAGIC	0x67a8c78d
> @@ -33,8 +35,18 @@ struct envfs_super {
>  };
> 
>  #ifndef __BYTE_ORDER
> +#ifdef __APPLE__
> +#ifdef __LITTLE_ENDIAN__
> +#define __BYTE_ORDER __LITTLE_ENDIAN
> +#elif defined(__BIG_ENDIAN__)
> +#define __BYTE_ORDER __BIG_ENDIAN
> +#else
> +#error "No byte order defined (either __LITTLE_ENDIAN__ or __BIG_ENDIAN__"
> +#endif
> +#else
>  #error "No byte order defined in __BYTE_ORDER"
>  #endif
> +#endif

Do we need the #ifdef __APPLE__? Something like this is a bit easier
to read:

#ifndef __BYTE_ORDER
#ifdef __LITTLE_ENDIAN__ /* Apple defines this */
#define __BYTE_ORDER __LITTLE_ENDIAN
#elif defined(__BIG_ENDIAN__)
#define __BYTE_ORDER __BIG_ENDIAN
#endif
#endif

#ifndef __BYTE_ORDER
#error "No byte order defined in __BYTE_ORDER"
#endif


> @@ -121,7 +121,7 @@ struct ch_chsettings_chram {
>  	struct ch_toc toc_terminator;
>  	struct chsettings section_chsettings;
>  	struct chram section_chram;
> -	__u8 padding1[512 -
> +	uint8_t padding1[512 -
>  		    (sizeof(struct ch_toc) * 3 +
>  		     sizeof(struct chsettings) + sizeof(struct chram))];
>  	/* struct gp_header gpheader; */
> @@ -131,7 +131,7 @@ struct ch_chsettings_nochram {
>  	struct ch_toc toc_chsettings;
>  	struct ch_toc toc_terminator;
>  	struct chsettings section_chsettings;
> -	__u8 padding1[512 -
> +	uint8_t padding1[512 -
>  		    (sizeof(struct ch_toc) * 2 +
>  		     sizeof(struct chsettings))];
>  	/* struct gp_header gpheader; */
> @@ -210,7 +210,12 @@ static const struct ch_chsettings_chram config_header = {
>  };
>  #else
>  static struct ch_chsettings_nochram config_header
> +#ifdef __APPLE__
> +	__attribute__((section("__DATA, .config_header"))) = {
> +#else
>  	__attribute__((section(".config_header"))) = {
> +#endif

I wonder why there's a seperate section for this config_header anyway.
Maybe we can drop this completely?

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
