Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Szkq2-0007dO-7P
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 08:44:59 +0000
Date: Fri, 10 Aug 2012 10:44:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120810084453.GV1451@pengutronix.de>
References: <20120809063801.GO1451@pengutronix.de>
 <1344526388-3797-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344526388-3797-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 3/3] mc13xxx: Fixed memory leak
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Aug 09, 2012 at 07:33:08PM +0400, Alexander Shiyan wrote:
> A string allocated by asprintf is not freed, so change it to a sprintf
> with the preallocated buffer.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks.

Sascha

> ---
>  drivers/mfd/mc13xxx.c |   10 +++++-----
>  1 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
> index 8e3c0b0..704446d 100644
> --- a/drivers/mfd/mc13xxx.c
> +++ b/drivers/mfd/mc13xxx.c
> @@ -252,7 +252,7 @@ static struct mc13892_rev mc13892_revisions[] = {
>  static int mc13xxx_query_revision(struct mc13xxx *mc13xxx)
>  {
>  	unsigned int rev_id;
> -	char *chipname, *revstr;
> +	char *chipname, revstr[5];
>  	int rev, i;
>  
>  	mc13xxx_reg_read(mc13xxx, MC13XXX_REG_IDENTIFICATION, &rev_id);
> @@ -265,9 +265,9 @@ static int mc13xxx_query_revision(struct mc13xxx *mc13xxx)
>  		/* Ver 0.2 is actually 3.2a. Report as 3.2 */
>  		if (rev == 0x02) {
>  			rev = 0x32;
> -			revstr = "3.2a";
> +			strcpy(revstr, "3.2a");
>  		} else
> -			revstr = asprintf("%d.%d", rev / 0x10, rev % 10);
> +			sprintf(revstr, "%d.%d", rev / 0x10, rev % 10);
>  		break;
>  	case 7:
>  		chipname = "MC13892";
> @@ -279,12 +279,12 @@ static int mc13xxx_query_revision(struct mc13xxx *mc13xxx)
>  			return -EINVAL;
>  
>  		rev = mc13892_revisions[i].rev;
> -		revstr = mc13892_revisions[i].revstr;
> +		strcpy(revstr, mc13892_revisions[i].revstr);
>  
>  		if (rev == MC13892_REVISION_2_0) {
>  			if ((rev_id >> 9) & 0x3) {
>  				rev = MC13892_REVISION_2_0a;
> -				revstr = "2.0a";
> +				strcpy(revstr, "2.0a");
>  			}
>  		}
>  		break;
> -- 
> 1.7.3.4
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
