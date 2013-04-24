Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUsfv-0000M1-LA
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 05:55:28 +0000
Date: Wed, 24 Apr 2013 07:55:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130424055523.GX32299@pengutronix.de>
References: <20130421112246.GF32299@pengutronix.de>
 <1366709085-20067-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366709085-20067-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCHv2] commands/digest: add verify support
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 23, 2013 at 11:24:45AM +0200, Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  Changes:
>   v2:
>     - updated according to comments from Sascha
>     - add support for verify against hash-file
> 
>  commands/digest.c | 141 ++++++++++++++++++++++++++++++++++++++++++++++++++----
>  1 file changed, 131 insertions(+), 10 deletions(-)
> 
> diff --git a/commands/digest.c b/commands/digest.c
> index c9bb132..a4611d7 100644
> --- a/commands/digest.c
> +++ b/commands/digest.c
> @@ -25,24 +25,122 @@
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
> +
> +static unsigned char *parse_hash(int hash_len, const char *hexstr)
> +{
> +	int i;
> +	unsigned char *p;
> +
> +	p = calloc(hash_len, sizeof(unsigned char));
> +	if (!p) {
> +		perror("calloc");
> +		return NULL;
> +	}
> +
> +	for (i = 0; i < hash_len; i++)
> +		p[i] = parse_hexbyte(&hexstr[i * 2]);
> +
> +	return p;
> +}
>  
>  static int do_digest(char *algorithm, int argc, char *argv[])
>  {
>  	struct digest *d;
>  	int ret = 0;
>  	int i;
> -	unsigned char *hash;
> +	unsigned char *hash = NULL;
> +	int opt;
> +	unsigned char *verify_hash = NULL;
> +	int verify = 0;
> +	int min_argc = 2;
> +	void *buf;
> +	ssize_t bufsz;
>  
>  	d = digest_get_by_name(algorithm);
>  	BUG_ON(!d);
>  
> -	if (argc < 2)
> -		return COMMAND_ERROR_USAGE;
> +	while ((opt = getopt(argc, argv, "v:V:")) > 0) {
> +		switch (opt) {
> +		case 'v':
> +			if (verify) {
> +				ret = COMMAND_ERROR_USAGE;
> +				goto out;
> +			}
> +
> +			verify = 1;
> +			min_argc += 2;
> +
> +			if (d->length != (strlen(optarg) / 2)) {
> +				printf("invalid hash length (%d chars required)\n",
> +					d->length * 2);
> +				ret = COMMAND_ERROR_USAGE;
> +				goto out;
> +			}
> +
> +			verify_hash = parse_hash(d->length, optarg);
> +			if (!verify_hash) {
> +				ret = -ENOMEM;
> +				goto out;
> +			}
> +
> +			break;
> +		case 'V':
> +			if (verify) {
> +				ret = COMMAND_ERROR_USAGE;
> +				goto out;
> +			}
> +
> +			verify = 1;
> +			min_argc += 2;
> +
> +			buf = read_file(optarg, &bufsz);
> +			if (!buf) {
> +				ret = -ENOMEM;
> +				goto out;
> +			}
> +
> +			if (bufsz < d->length) {
> +				free(buf);
> +				ret = COMMAND_ERROR_USAGE;
> +				goto out;
> +			}
> +
> +			verify_hash = parse_hash(d->length, buf);
> +			free(buf);
> +			break;
> +		default:
> +			ret = COMMAND_ERROR_USAGE;
> +			goto out;
> +		}
> +	}

Please use something around the following lines to avoid some code
duplication.

	case 'v':
		verify++;
		free(hash);
		hash = xstrdup(optarg);
		break;
	case 'V':
		verify++;
		free(hash);
		hash = read_file(optarg, &bufsiz);
		break;
	default:
		ret = COMMAND_ERROR_USAGE;
		goto out;
	}

	if (verify > 1)
		return COMMAND_ERROR_USAGE;

	if (verify) {
		min_argc += 2;
		verify_hash = parse_hash(d, buf);
		if (!verify_hash)
			return -ESOMETHING;
	}

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
