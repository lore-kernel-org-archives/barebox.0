Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMBem-0001BR-Iv
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 06:54:37 +0000
Date: Wed, 18 Sep 2013 08:54:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130918065414.GI30088@pengutronix.de>
References: <1379404204-6450-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1379404204-6450-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] process_escape_sequence: add support to \$?
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 17, 2013 at 09:50:04AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/hush.c                 |  6 ++++++
>  common/parser.c               |  9 +++++++++
>  include/shell.h               | 12 ++++++++++++
>  lib/process_escape_sequence.c |  7 +++++++
>  4 files changed, 34 insertions(+)
>  create mode 100644 include/shell.h

Applied, thanks

Sascha

> 
> diff --git a/common/hush.c b/common/hush.c
> index a3235ba..bf1d9e6 100644
> --- a/common/hush.c
> +++ b/common/hush.c
> @@ -123,6 +123,7 @@
>  #include <linux/list.h>
>  #include <binfmt.h>
>  #include <init.h>
> +#include <shell.h>
>  
>  /*cmd_boot.c*/
>  extern int do_bootd(int flag, int argc, char *argv[]);      /* do_bootd */
> @@ -226,6 +227,11 @@ static char console_buffer[CONFIG_CBSIZE];		/* console I/O buffer	*/
>   * the first three support $?, $#, and $1 */
>  static unsigned int last_return_code;
>  
> +int shell_get_last_return_code(void)
> +{
> +	return last_return_code;
> +}
> +
>  /* "globals" within this file */
>  static uchar *ifs;
>  static char map[256];
> diff --git a/common/parser.c b/common/parser.c
> index 4d993df..d390fb6 100644
> --- a/common/parser.c
> +++ b/common/parser.c
> @@ -1,6 +1,15 @@
>  #include <common.h>
>  #include <command.h>
>  #include <environment.h>
> +#include <shell.h>
> +
> +/*
> + * not yet supported
> + */
> +int shell_get_last_return_code(void)
> +{
> +	return 0;
> +}
>  
>  static int parse_line (char *line, char *argv[])
>  {
> diff --git a/include/shell.h b/include/shell.h
> new file mode 100644
> index 0000000..b98cac3
> --- /dev/null
> +++ b/include/shell.h
> @@ -0,0 +1,12 @@
> +/*
> + * (C) Copyright 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> + *
> + * Under GPLv2 only
> + */
> +
> +#ifndef __SHELL_H__
> +#define __SHELL_H__
> +
> +int shell_get_last_return_code(void);
> +
> +#endif /* __SHELL_H__ */
> diff --git a/lib/process_escape_sequence.c b/lib/process_escape_sequence.c
> index be77792..47a7e5c 100644
> --- a/lib/process_escape_sequence.c
> +++ b/lib/process_escape_sequence.c
> @@ -19,6 +19,7 @@
>  #include <common.h>
>  #include <fs.h>
>  #include <libbb.h>
> +#include <shell.h>
>  
>  int process_escape_sequence(const char *source, char *dest, int destlen)
>  {
> @@ -59,6 +60,12 @@ int process_escape_sequence(const char *source, char *dest, int destlen)
>  			case 'w':
>  				i += snprintf(dest + i, destlen - i, "%s", getcwd());
>  				break;
> +			case '$':
> +				if (*(source + 2) == '?') {
> +					i += snprintf(dest + i, destlen - i, "%d", shell_get_last_return_code());
> +					source++;
> +					break;
> +				}
>  			default:
>  				dest[i++] = '\\';
>  				dest[i++] = *(source + 1);
> -- 
> 1.8.4.rc1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
