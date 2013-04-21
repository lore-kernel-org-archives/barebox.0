Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UTsM6-0003Rs-55
 for barebox@lists.infradead.org; Sun, 21 Apr 2013 11:22:52 +0000
Date: Sun, 21 Apr 2013 13:22:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130421112246.GF32299@pengutronix.de>
References: <1366361035-28653-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366361035-28653-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] commands/digest: add verify support
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 19, 2013 at 10:43:55AM +0200, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  commands/digest.c | 94 ++++++++++++++++++++++++++++++++++++++++++++++++-------
>  1 file changed, 83 insertions(+), 11 deletions(-)
> 
> diff --git a/commands/digest.c b/commands/digest.c
> index c9bb132..56173a5 100644
> --- a/commands/digest.c
> +++ b/commands/digest.c
> @@ -25,24 +25,76 @@
>  #include <xfuncs.h>
>  #include <malloc.h>
>  #include <digest.h>
> +#include <linux/ctype.h>
> +#include <getopt.h>
> +
> +static inline unsigned char parse_hexchar(char c)
> +{
> +	if (!isxdigit(c))
> +		return 0;
> +
> +	return isdigit(c) ? (c - '0') : ((islower(c) ? toupper(c) : c) - 'A' + 0xA);
> +}
> +
> +static inline unsigned char parse_hexbyte(const char *p)
> +{
> +	return (parse_hexchar(*p) << 4) | parse_hexchar(*(p + 1));
> +}
>  
>  static int do_digest(char *algorithm, int argc, char *argv[])
>  {
>  	struct digest *d;
>  	int ret = 0;
>  	int i;
> -	unsigned char *hash;
> +	unsigned char *hash = 0;
> +	int opt;
> +	unsigned char *verify_hash = 0;

NULL for pointers please.

> +	int verify = 0;
> +	int min_argc = 2;
>  
>  	d = digest_get_by_name(algorithm);
>  	BUG_ON(!d);
>  
> -	if (argc < 2)
> -		return COMMAND_ERROR_USAGE;
> +	while ((opt = getopt(argc, argv, "v:")) > 0) {
> +		switch (opt) {
> +		case 'v':
> +			verify = 1;
> +			min_argc += 2;
> +
> +			if (d->length != (strlen(optarg) / 2)) {
> +				ret = COMMAND_ERROR_USAGE;
> +				goto out;
> +			}

Maybe give the user a hint here? It's not really obvious to the user
what's wrong here.

> +
> +			verify_hash = calloc(d->length, sizeof(unsigned char));
> +			if (!verify_hash) {
> +				perror("calloc");
> +				ret = -ENOMEM;
> +				goto out;
> +			}
> +
> +			for (i = 0; i < d->length; i++)
> +				verify_hash[i] = parse_hexbyte(&optarg[i * 2]);
> +
> +			break;

You should only save optarg for later use in the loop. Otherwise when
somebody gives -v multiple times you allocate memory each time which you
don't free later.

> +		default:
> +			ret = COMMAND_ERROR_USAGE;
> +			goto out;
> +		}
> +	}
> +
> +	if (argc < min_argc) {
> +		ret = COMMAND_ERROR_USAGE;
> +		goto out;
> +	}
> +
> +	argv += min_argc - 2;
>  
>  	hash = calloc(d->length, sizeof(unsigned char));
>  	if (!hash) {
>  		perror("calloc");
> -		return COMMAND_ERROR_USAGE;
> +		ret = -ENOMEM;
> +		goto out;
>  	}
>  
>  	argv++;
> @@ -60,17 +112,33 @@ static int do_digest(char *algorithm, int argc, char *argv[])
>  		if (digest_file_window(d, filename, hash, start, size) < 0) {
>  			ret = 1;
>  		} else {
> -			for (i = 0; i < d->length; i++)
> +			for (i = 0; i < d->length; i++) {
>  				printf("%02x", hash[i]);
> +				if (verify > 0 && hash[i] != verify_hash[i])
> +					verify = -1;
> +			}
>  
> -			printf("  %s\t0x%08llx ... 0x%08llx\n",
> +			printf("  %s\t0x%08llx ... 0x%08llx",
>  				filename, start, start + size);
> +
> +			if (verify < 0) {
> +				printf(" ** ERROR **");
> +				ret = 1;
> +				verify = 1;
> +			}
> +
> +			printf("\n");
>  		}

The digest commands can work on multiple files. When verifying you
verify multiple files against a single hash. Is this really useful
behaviour? I'd suggest to allow only a single file in verify mode.

>  
>  		argv++;
>  	}
>  
> -	free(hash);
> +out:
> +	if (hash)
> +		free(hash);
> +
> +	if (verify_hash)
> +		free(verify_hash);

No need to check. free() works fine on NULL pointers.

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
