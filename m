Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6Q2i-0006qR-EW
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 18:29:53 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 29B82DC12A1
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 19:40:20 +0100 (CET)
Date: Fri, 15 Feb 2013 19:28:46 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130215182846.GD19322@game.jcrosoft.org>
References: <1360951741-7911-1-git-send-email-carlo.caione@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360951741-7911-1-git-send-email-carlo.caione@gmail.com>
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
Subject: Re: [PATCH] addpart: size and offset not needed for already
 defined partitions
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

On 19:09 Fri 15 Feb     , Carlo Caione wrote:
> You can use the name of an already defined partition
> (i.e. hardcoded in board specific files) without specifying
> size and offset that are automatically obtained
> 
> i.e.
> 
> $ addpart /dev/nor0 (self)
> $ addpart /dev/nor0 (env0)
this is dangerous

specialy when you can knwon for sure that (self) will be in the nor flash

as on sama5d3x as we can boot from different media and barebox detect it
so the self will spi/nor/nand/mmc/eeprom

Best Regards,
J.
> 
> Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
> ---
>  commands/partition.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/partition.c b/commands/partition.c
> index fdd6041..8cb50ca 100644
> --- a/commands/partition.c
> +++ b/commands/partition.c
> @@ -53,6 +53,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
>  	char buf[PATH_MAX] = {};
>  	unsigned long flags = 0;
>  	int ret;
> +	struct cdev *cdev;
>  
>  	memset(buf, 0, PATH_MAX);
>  
> @@ -63,7 +64,7 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
>  		size = strtoul_suffix(partstr, &end, 0);
>  	}
>  
> -	if (*end == '@')
> +	if ((*end == '@') && (size != 0))
>  		*offset = strtoul_suffix(end+1, &end, 0);
>  
>  	if (size == SIZE_REMAINING)
> @@ -78,6 +79,18 @@ static int mtd_part_do_parse_one(char *devname, const char *partstr,
>  			printf("could not find matching ')'\n");
>  			return -EINVAL;
>  		}
> +		memcpy(buf, partstr, end - partstr);
> +
> +		if (size == 0) {
> +			cdev = cdev_by_name(buf);
> +			if (!cdev) {
> +				printf("%s: partition not found\n", buf);
> +				return -EINVAL;
> +			}
> +
> +			size = cdev->size;
> +			*offset = cdev->offset;
> +		}
>  
>  		if (pflags & PART_ADD_DEVNAME)
>  			sprintf(buf, "%s.", devname);
> -- 
> 1.8.1.3
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
