Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6Fbh-0008H8-NC
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 06:49:02 +0000
Date: Tue, 28 Aug 2012 08:49:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120828064900.GQ26594@pengutronix.de>
References: <1345749671-9045-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345749671-9045-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands/digest: don't print checksum for non-existing
 files
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 23, 2012 at 11:21:11PM +0400, Antony Pavlov wrote:
> This fixes the case:
> 
>   barebox:/ md5sum non-existing-file
>   non-existing-file: No such file or directory
>   00000000000000000000000000000000  non-existing-file     0x00000000 ... 0xffffffffffffffff
>   barebox:/
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  commands/digest.c |   10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/commands/digest.c b/commands/digest.c
> index 07cbec9..e334a40 100644
> --- a/commands/digest.c
> +++ b/commands/digest.c
> @@ -62,11 +62,13 @@ static int do_digest(char *algorithm, int argc, char *argv[])
>  
>  		if (digest_file_window(d, filename, hash, start, size) < 0)
>  			ret = 1;
> +		else {
> +			for (i = 0; i < d->length; i++)
> +				printf("%02x", hash[i]);
>  
> -		for (i = 0; i < d->length; i++)
> -			printf("%02x", hash[i]);
> -
> -		printf("  %s\t0x%08llx ... 0x%08llx\n", filename, start, start + size);
> +			printf("  %s\t0x%08llx ... 0x%08llx\n",
> +				filename, start, start + size);
> +		}
>  
>  		argv++;
>  	}
> -- 
> 1.7.10.4
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
