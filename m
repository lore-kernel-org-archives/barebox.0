Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TO1WY-0000MP-30
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 07:25:11 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 4A507104F102
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 09:31:44 +0200 (CEST)
Date: Tue, 16 Oct 2012 09:22:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121016072248.GE5803@game.jcrosoft.org>
References: <1350328918-15383-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350328918-15383-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM bootz: use request_sdram_region
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 21:21 Mon 15 Oct     , Sascha Hauer wrote:
> We now have request_sdram_region to request a region. Use
> it instead of a comparison with MALLOC_BASE.
> 
do we really need to keep bootz??

Best Regards,
J.
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/lib/bootz.c |   12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
> index f394a6b..f069127 100644
> --- a/arch/arm/lib/bootz.c
> +++ b/arch/arm/lib/bootz.c
> @@ -30,6 +30,7 @@ static int do_bootz(int argc, char *argv[])
>  	u32 end;
>  	int usemap = 0;
>  	struct memory_bank *bank = list_first_entry(&memory_banks, struct memory_bank, list);
> +	struct resource *res = NULL;
>  
>  	if (argc != 2)
>  		return COMMAND_ERROR_USAGE;
> @@ -83,8 +84,10 @@ static int do_bootz(int argc, char *argv[])
>  			zimage = xmalloc(end);
>  		} else {
>  			zimage = (void *)bank->start + SZ_8M;
> -			if (bank->start + SZ_8M + end >= MALLOC_BASE) {
> -				printf("won't overwrite malloc space with image\n");
> +			res = request_sdram_region("zimage",
> +					bank->start + SZ_8M, end);
> +			if (!res) {
> +				printf("can't request region for kernel\n");
>  				goto err_out1;
>  			}
>  		}
> @@ -94,7 +97,7 @@ static int do_bootz(int argc, char *argv[])
>  		ret = read(fd, zimage + sizeof(*header), end - sizeof(*header));
>  		if (ret < end - sizeof(*header)) {
>  			printf("could not read %s\n", argv[1]);
> -			goto err_out1;
> +			goto err_out2;
>  		}
>  	}
>  
> @@ -113,6 +116,9 @@ static int do_bootz(int argc, char *argv[])
>  
>  	return 0;
>  
> +err_out2:
> +	if (res)
> +		release_sdram_region(res);
>  err_out1:
>  	free(zimage);
>  err_out:
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
