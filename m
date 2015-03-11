Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVZRE-000204-Jy
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 05:44:13 +0000
Date: Wed, 11 Mar 2015 06:43:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150311054350.GN24885@pengutronix.de>
References: <20150310141659.GH30554@ns203013.ovh.net>
 <1425997697-27467-1-git-send-email-plagnioj@jcrosoft.com>
 <1425997697-27467-7-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425997697-27467-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 7/7] command: add hmac sum supportfor md5, sha1, sha224,
 sha256, sha384, sha512
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 10, 2015 at 03:28:17PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> pass the key via -k param
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/digest.c | 26 ++++++++++++++++++++++----
>  common/digest.c   | 22 +++++++++++++++++-----
>  include/digest.h  |  3 +++
>  3 files changed, 42 insertions(+), 9 deletions(-)
> 
> diff --git a/commands/digest.c b/commands/digest.c
> index 20fa13f..713f5c6 100644
> --- a/commands/digest.c
> +++ b/commands/digest.c
> @@ -25,6 +25,7 @@
>  #include <xfuncs.h>
>  #include <malloc.h>
>  #include <digest.h>
> +#include <getopt.h>
>  
>  static int do_digest(char *algorithm, int argc, char *argv[])
>  {
> @@ -32,11 +33,26 @@ static int do_digest(char *algorithm, int argc, char *argv[])
>  	int ret = 0;
>  	int i;
>  	unsigned char *hash;
> +	unsigned char *key = NULL;
> +	size_t keylen = 0;
> +	int opt;
> +
> +	while((opt = getopt(argc, argv, "k:")) > 0) {
> +		switch(opt) {
> +		case 'k':
> +			key = optarg;
> +			keylen = strlen(key);
> +			break;
> +		}

This passes the key directly as string to the digest operations. This
means we are limited to ASCII printable strings here. I'm not very
familiar with ways for passing keys, but shouldn't we allow to pass the
key as hex numbers or similar?

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
