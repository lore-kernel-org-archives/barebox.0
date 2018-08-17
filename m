Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fqY5z-0000et-86
 for barebox@lists.infradead.org; Fri, 17 Aug 2018 06:18:53 +0000
Date: Fri, 17 Aug 2018 08:18:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180817061837.c65oug6ydzcryrso@pengutronix.de>
References: <1534316853-11235-1-git-send-email-oleg.karfich@wago.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1534316853-11235-1-git-send-email-oleg.karfich@wago.com>
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
Subject: Re: [PATCH] nand command: fix null pointer when adding/deleting a bb
 device
To: Oleg.Karfich@wago.com
Cc: barebox@lists.infradead.org

On Wed, Aug 15, 2018 at 07:07:40AM +0000, Oleg.Karfich@wago.com wrote:
> Commit 40ee300 introduces info option about bad blocks. The open()
> function call is therefore moved out from mark good/bad block to use the
> filedescriptor in info option too. If someone tries to add/delete a bb device
> the optind variable is incremented and the open() call gets a null pointer.
> Fix this issue by returning when the bb device is added/deleted.
> 
> Signed-off-by: Oleg Karfich <oleg.karfich@wago.com>
> ---
>  commands/nand.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/nand.c b/commands/nand.c
> index b065a66..c57b394 100644
> --- a/commands/nand.c
> +++ b/commands/nand.c
> @@ -41,7 +41,7 @@ static int do_nand(int argc, char *argv[])
>  	int command = 0;
>  	loff_t badblock = 0;
>  	int fd;
> -	int ret;
> +	int ret = 0;
>  	struct mtd_info_user mtdinfo;
>  
>  	while((opt = getopt(argc, argv, "adb:g:i")) > 0) {
> @@ -88,13 +88,18 @@ static int do_nand(int argc, char *argv[])
>  
>  			optind++;
>  		}
> +
> +		goto out_ret;
>  	}
>  
>  	if (command == NAND_DEL) {
>  		while (optind < argc) {
> -			dev_remove_bb_dev(basename(argv[optind]));
> +			if (dev_remove_bb_dev(basename(argv[optind])))
> +				return 1;
>  			optind++;
>  		}
> +
> +		goto out_ret;
>  	}
>  
>  	fd = open(argv[optind], O_RDWR);
> @@ -149,10 +154,10 @@ static int do_nand(int argc, char *argv[])
>  			printf("No bad blocks\n");
>  	}
>  
> -	ret = 0;
>  out:
>  	close(fd);
>  
> +out_ret:
>  	return ret;
>  }
>  
> -- 
> 2.7.4
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
