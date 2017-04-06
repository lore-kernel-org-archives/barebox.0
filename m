Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cw1Ps-000210-Fy
 for barebox@lists.infradead.org; Thu, 06 Apr 2017 07:01:18 +0000
Date: Thu, 6 Apr 2017 09:00:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170406070050.gmyczu27qwzggwey@pengutronix.de>
References: <20170405100238.14634-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170405100238.14634-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands: digest: show area info only if necessary
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 05, 2017 at 01:02:38PM +0300, Antony Pavlov wrote:
> Area info "0x00000000 ... 0xffffffffffffffff" in digest
> commands output is something strange and misleading, e.g.
> 
>   barebox@barebox sandbox:/ md5sum logo/barebox-logo-240.png
>   d3226a0eba3fd49af6bd190b077a3466  logo/barebox-logo-240.png 0x00000000 ... 0xffffffffffffffff
> 
> Also skipping area info in the barebox digets commands
> output for every file makes it more similar to traditional
> *nix digest commands output.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks. This really looks nicer now.

Sascha

> ---
>  commands/digest.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/digest.c b/commands/digest.c
> index 02a9f6f0d..0edbbec32 100644
> --- a/commands/digest.c
> +++ b/commands/digest.c
> @@ -36,12 +36,16 @@ int __do_digest(struct digest *d, unsigned char *sig,
>  	while (*argv) {
>  		char *filename = "/dev/mem";
>  		loff_t start = 0, size = ~0;
> +		int show_area = 1;
>  
>  		/* arguments are either file, file+area or area */
>  		if (parse_area_spec(*argv, &start, &size)) {
>  			filename = *argv;
> -			if (argv[1] && !parse_area_spec(argv[1], &start, &size))
> +			show_area = 0;
> +			if (argv[1] && !parse_area_spec(argv[1], &start, &size)) {
>  				argv++;
> +				show_area = 1;
> +			}
>  		}
>  
>  		ret = digest_file_window(d, filename,
> @@ -53,8 +57,12 @@ int __do_digest(struct digest *d, unsigned char *sig,
>  				for (i = 0; i < digest_length(d); i++)
>  					printf("%02x", hash[i]);
>  
> -				printf("  %s\t0x%08llx ... 0x%08llx\n",
> -					filename, start, start + size);
> +				printf("  %s", filename);
> +				if (show_area)
> +					printf("\t0x%08llx ... 0x%08llx",
> +						start, start + size);
> +
> +				puts("\n");
>  			}
>  		}
>  
> -- 
> 2.11.0
> 
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
