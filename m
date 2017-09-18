Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dtq9w-0003h4-VE
 for barebox@lists.infradead.org; Mon, 18 Sep 2017 07:08:05 +0000
Date: Mon, 18 Sep 2017 09:07:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170918070738.hclyceihtjf6o7dk@pengutronix.de>
References: <1505392181-8024-1-git-send-email-gp@high-consulting.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1505392181-8024-1-git-send-email-gp@high-consulting.de>
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
Subject: Re: [PATCH v1 2/2] command: ccrypt Crypt and Decrypt Files uses
 keystore for passwords compatible with
 https://sourceforge.net/projects/ccrypt/ keystore_init Simple Keystore
 initializer
To: gp@high-consulting.de
Cc: barebox@lists.infradead.org

Hi Gerd,

On Thu, Sep 14, 2017 at 02:29:41PM +0200, gp@high-consulting.de wrote:
> From: Gerd Pauli <gp@high-consulting.de>
> 
> Signed-off-by: Gerd Pauli <gp@high-consulting.de>
> ---
>  commands/Kconfig          |  14 +
>  commands/Makefile         |   2 +
>  commands/ccrypt.c         | 247 +++++++++++++++
>  commands/keystore_init.c  |  79 +++++
>  include/ccryptlib.h       |  98 ++++++
>  lib/Kconfig               |   3 +
>  lib/Makefile              |   1 +
>  lib/ccryptlib/Makefile    |   4 +
>  lib/ccryptlib/ccryptlib.c | 417 +++++++++++++++++++++++++
>  lib/ccryptlib/rijndael.c  | 347 +++++++++++++++++++++
>  lib/ccryptlib/rijndael.h  |  76 +++++
>  lib/ccryptlib/tables.c    | 768 ++++++++++++++++++++++++++++++++++++++++++++++
>  lib/ccryptlib/tables.h    |  10 +
>  13 files changed, 2066 insertions(+)
>  create mode 100644 commands/ccrypt.c
>  create mode 100644 commands/keystore_init.c
>  create mode 100644 include/ccryptlib.h
>  create mode 100644 lib/ccryptlib/Makefile
>  create mode 100644 lib/ccryptlib/ccryptlib.c
>  create mode 100644 lib/ccryptlib/rijndael.c
>  create mode 100644 lib/ccryptlib/rijndael.h
>  create mode 100644 lib/ccryptlib/tables.c
>  create mode 100644 lib/ccryptlib/tables.h
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 89b3103..2e296a3 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -2137,6 +2137,20 @@ config CMD_SEED
>  	help
>  	  Seed the pseudo random number generator (PRNG)
>  
> +config CMD_CCRYPT
> +       tristate
> +       prompt "ccrypt"
> +       select CCRYPTLIB
> +       help
> +         AES crypt and decrypt support    

Please run the patch through sscripts/checkpatch.pl. The code doesn't
match the barebox coding style, contains trailing whitespaces and other
stuff.

> +
> +config CMD_KEYSTOREINIT
> +       tristate
> +       prompt "keystore_init"
> +       select CRYPTO_KEYSTORE
> +       help
> +         Keystore initialisation   
> +
>  # end Miscellaneous commands
>  endmenu
>  
> diff --git a/commands/Makefile b/commands/Makefile
> index 16c1768..42bc1d8 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -124,3 +124,5 @@ obj-$(CONFIG_CMD_SPD_DECODE)	+= spd_decode.o
>  obj-$(CONFIG_CMD_MMC_EXTCSD)	+= mmc_extcsd.o
>  obj-$(CONFIG_CMD_NAND_BITFLIP)	+= nand-bitflip.o
>  obj-$(CONFIG_CMD_SEED)		+= seed.o
> +obj-$(CONFIG_CMD_CCRYPT)        += ccrypt.o
> +obj-$(CONFIG_CMD_KEYSTOREINIT)	+= keystore_init.o
> diff --git a/commands/ccrypt.c b/commands/ccrypt.c
> new file mode 100644
> index 0000000..f299b9c
> --- /dev/null
> +++ b/commands/ccrypt.c
> @@ -0,0 +1,247 @@
> +/*
> + * ccrypt.c - Crypt and Decrypt Files using Password in Keystore
> + * 
> + * Copyright (C) 2015 Alexander Smirnov <alllecs@yandex.ru>
> + * Copyright (c) 2017 Gerd Pauli <gp@high-consulting.de>, HighConsulting GmbH & Co. KG
> + * 
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <libfile.h>
> +#include <getopt.h>
> +#include <fcntl.h>
> +#include <fs.h>
> +#include <ccryptlib.h>
> +#include <crypto/keystore.h>
> +
> +#define INBUFSIZE 1024  
> +#define OUTBUFSIZE INBUFSIZE+32
> +
> +void ccrypt_error( int e ) {

Should be static

> +  if ( e == -1 ) {  
> +    printf("ccrypt: %s\n",strerror(errno));
> +    return;
> +  }
> +  if ( e == -2 ) {
> +    switch (ccrypt_errno) {
> +    case CCRYPT_EFORMAT:
> +      printf("ccrypt: %s\n","bad file format");
> +      break;
> +    case CCRYPT_EMISMATCH:
> +      printf("ccrypt: %s\n","key does not match");
> +      break;
> +    case CCRYPT_EBUFFER:
> +      printf("ccrypt: %s\n","buffer overflow");
> +      break;
> +    default:
> +      /* do nothing */
> +      printf("ccrypt: %s\n","unknown error");
> +      break;
> +    }
> +    return;
> +  }
> +  printf("ccrypt: %s\n","unknown error");
> +}
> +
> +void print_b (ccrypt_stream_t *b) {
> +  /*  ccrypt_state_t *s; 
> +  s = b->state; 
> +  printf("in: %p %d, out: %p %d\n",b->next_in,b->avail_in,b->next_out,b->avail_out);  */
> +}
> +
> +static int do_ccrypt(int argc, char *argv[])
> +{
> +  int opt;
> +  int ret=-EINVAL;
> +  int encrypt=0;
> +  int decrypt=0;
> +  char *extract = NULL;
> +  char *from = NULL;
> +  char *to = NULL;
> +  char *r_buf = NULL;
> +  char *w_buf = NULL;
> +  int from_fd = 0;
> +  int to_fd = 0;
> +  int r,w;
> +  void *buf;
> +  ccrypt_stream_t ccs;
> +  ccrypt_stream_t *b = &ccs;
> +  int flags=0;
> +  char *key;
> +  int keylen;
> +  int eof=0;
> +
> +  while ((opt = getopt(argc, argv, "dek:")) > 0) {
> +    switch(opt) {
> +    case 'e':
> +      encrypt=1;
> +      break;
> +    case 'd':
> +      decrypt=1;
> +      break;
> +    case 'k':
> +      extract = optarg;
> +      break;
> +    }

This lacks handling the default case.

> +  }
> +  if ( encrypt == 1 && decrypt == 1 ) 
> +    return ret;
> +  if ( extract == NULL )
> +    return ret;
> +
> +  if ( optind != 4 ) 
> +    return ret;

Testing for a specific value here makes adding more options impossible.
Also note "-k foo" is equivalent to "-kfoo" but influences argc and
optind.

> +
> +  if ( argc != 6 )
> +    return ret;
> +
> +  from = argv[optind];
> +  to = argv[optind + 1];
> +
> +  r_buf=xmalloc(INBUFSIZE);
> +  w_buf=xmalloc(OUTBUFSIZE);
> +  
> +  ret=keystore_get_secret(extract, (const u8 **)&key, &keylen);
> +  if ( ret )
> +    goto out;
> +
> +  /* printf("%d %d %s %s %s\n", argc,optind,from,to,key); */
> +
> +  from_fd = open(from, O_RDONLY);
> +  if (from_fd < 0) {
> +    printf("could not open %s: %s\n", from, errno_str());
> +    ret=errno;
> +    goto out;
> +  }
> +
> +  to_fd = open(to, O_WRONLY | O_CREAT | O_TRUNC);
> +  if (to_fd < 0) {
> +    printf("could not open %s: %s\n", to, errno_str());
> +    ret=errno;
> +    goto out;
> +  }
> +
> +  /* flags |= CCRYPT_MISMATCH; */
> +  ret=0;
> +
> +  if ( encrypt == 1 ) 
> +    ret = ccencrypt_init(b, key);
> +  
> +  if ( decrypt == 1 ) 
> +    ret = ccdecrypt_init(b, key, flags);
> +  
> +  if ( ret != 0 ) {
> +    ccrypt_error(ret);
> +    ret=-EDOM;
> +    goto out;
> +  }
> +
> +  b->avail_in = 0;
> +  
> +  while (1) {
> +    /* fill input buffer */
> +    if (b->avail_in == 0 && !eof) {
> +      r = read(from_fd, r_buf, INBUFSIZE);
> +      if (r < 0) {
> +	perror("read");
> +	goto out;
> +      }
> +      if (!r)
> +	eof=1;
> +      b->next_in = &r_buf[0];
> +      b->avail_in = r;
> +    }
> +    
> +    /*printf("red %d bytes\n",r);
> +      memory_display(r_buf, 0, r, 1, 0); */

Such commented out debug leftovers shouldn't be in patches posted for
merging.

> +      
> +    /* prepare output buffer */
> +    b->next_out = &w_buf[0];
> +    b->avail_out = OUTBUFSIZE;
> +    
> +    /* print_b(b); */
> +
> +    /* do some work */

This comment says nothing-

> +    if ( encrypt == 1 ) {
> +      ret = ccencrypt(b);
> +      if (ret) {
> +	ccrypt_error(ccrypt_errno);
> +	ccencrypt_end(b);
> +	ret=-EDOM;
> +	goto out;
> +      }
> +    }
> +    if ( decrypt == 1 ) {
> +      ret = ccdecrypt(b);
> +      if (ret) {
> +	ccrypt_error(ccrypt_errno);
> +	ccdecrypt_end(b);
> +	ret=-EDOM;
> +	goto out;
> +      }
> +    }
> +    
> +    /* print_b(b); */
> +
> +    r = OUTBUFSIZE-b->avail_out;
> +    buf = &w_buf[0];
> +
> +
> +    /* memory_display(buf, 0, r, 1, 0);
> +       printf("wana write %d bytes\n",r); */
> +
> +    /* process output buffer */
> +    while (r) {
> +      w = write(to_fd, buf, r);
> +      if (w < 0) {
> +	perror("write");
> +	goto out;
> +      }
> +      /* printf("wrote %d bytes from @%p\n",w,buf); */
> +      buf += w;
> +      r -= w;
> +    }
> +
> +    /* ready */ 
> +    if (eof && b->avail_out != 0) {
> +      break;
> +    }
> +  }
> +  ret = 0;
> + out:
> +  free(r_buf);
> +  free(w_buf);
> +  if (from_fd > 0)
> +    close(from_fd);
> +  if (to_fd > 0)
> +    close(to_fd);
> +
> +  return ret;
> +}
> +
> +BAREBOX_CMD_HELP_START(ccrypt)
> +BAREBOX_CMD_HELP_TEXT("AES Crypt and Decrypt")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_TEXT("Options:")
> +BAREBOX_CMD_HELP_OPT("-e", "encrypt")
> +BAREBOX_CMD_HELP_OPT("-d", "decrypt")
> +BAREBOX_CMD_HELP_OPT("-k name", "Name of key in keystore")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(ccrypt)
> +.cmd	= do_ccrypt,
> +  BAREBOX_CMD_DESC("Crypt and Decrypt Files")
> +  BAREBOX_CMD_OPTS("[-e|-d] -k NAME SRC DST")
> +  BAREBOX_CMD_HELP(cmd_ccrypt_help)
> +BAREBOX_CMD_END
> diff --git a/commands/keystore_init.c b/commands/keystore_init.c
> new file mode 100644
> index 0000000..beabbe7
> --- /dev/null
> +++ b/commands/keystore_init.c

This should be an extra patch

> @@ -0,0 +1,79 @@
> +/*
> + * keystore_init.c - Initialize the keystore with dummy key to test ccrypt
> + *
> + * Copyright (c) 2017 Gerd Pauli <gp@high-consulting.de>, HighConsulting GmbH & Co. KG
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
> + *
> + */
> +
> +#define DEBUG

This shouldn't be in code to be merged.

> +
> +
> +#include <common.h>
> +#include <command.h>
> +#include <libfile.h>
> +#include <crypto/keystore.h>
> +#include <getopt.h>
> +
> +static int do_keystore_init(int argc, char *argv[])
> +{
> +  int ret=-EINVAL;
> +  char key[]="ksjdfhlucxlykjjhasdflkjh7765";
> +  int get=0;
> +  int set=1;
> +#ifdef DEBUG
> +  int opt;
> +#endif
> +  char *extract = NULL;
> +  char *mykey;
> +  int mykeylen;
> +
> +#ifdef DEBUG
> +  while ((opt = getopt(argc, argv, "gk:")) > 0) {
> +    switch (opt) {
> +    case 'g':
> +      get=1;
> +      set=0;
> +      break;
> +    case 'k':
> +      extract = optarg;
> +    } 
> +  }
> +#endif
> +  if ( set == 1 ) {
> +    if ( extract == NULL ) {
> +      ret=keystore_set_secret("ccrypt", key, strlen(key)+1);
> +    } else {
> +      ret=keystore_set_secret("ccrypt", extract, strlen(extract)+1);
> +    }
> +  }
> +  if ( get == 1 ) {
> +    ret=keystore_get_secret("ccrypt", (const u8 **)&mykey, &mykeylen);
> +    if ( ret == 0 ) {
> +      printf("Key for \"ccrypt\" is: %s len: %d\n",mykey,mykeylen);
> +    }
> +  }    
> +  return ret;
> +}
> +
> +BAREBOX_CMD_HELP_START(keystore_init)
> +BAREBOX_CMD_HELP_TEXT("Initialize Keystore")
> +BAREBOX_CMD_HELP_TEXT("")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(keytore_init)
> +.cmd= do_keystore_init,
> +  BAREBOX_CMD_DESC("Initialize Keystore")
> +  BAREBOX_CMD_HELP(cmd_keystore_init_help)
> +BAREBOX_CMD_END
> diff --git a/include/ccryptlib.h b/include/ccryptlib.h
> new file mode 100644
> index 0000000..71ba4df
> --- /dev/null
> +++ b/include/ccryptlib.h

The library code should be an extra patch aswell.

There will most likely be some more issues in this patch, but I think
this is enough for now. Please don't hesitate to repost, it's quite
normal that patches are not acceptable when they are posted the first
time.

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
