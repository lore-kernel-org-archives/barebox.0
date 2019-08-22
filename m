Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gGr-0001xv-Vd
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:08:31 +0000
Date: Thu, 22 Aug 2019 08:08:24 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20190822060824.joczdvlohsxl2hve@pengutronix.de>
References: <20190822055114.931-1-ahmad@a3f.at>
 <20190822055114.931-4-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822055114.931-4-ahmad@a3f.at>
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
Subject: Re: [PATCH 03/11] complete: remove unused variable
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, afa@pengutronix.de

On Thu, Aug 22, 2019 at 07:51:06AM +0200, Ahmad Fatoum wrote:
> instr_param serves no purpose in the function. Thus remove it.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  common/complete.c   | 2 --
>  include/ata_drive.h | 4 ++--
>  2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/common/complete.c b/common/complete.c
> index 2dab7d1dde1e..919e5abc6a62 100644
> --- a/common/complete.c
> +++ b/common/complete.c
> @@ -277,7 +277,6 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
>  	struct device_d *dev;
>  	struct variable_d *var;
>  	struct env_context *c;
> -	char *instr_param;
>  	int len;
>  	char end = '=', *pos, *dot;
>  	char *begin = "";
> @@ -317,7 +316,6 @@ static int env_param_complete(struct string_list *sl, char *instr, int eval)
>  
>  		devname = xstrndup(instr, dot - instr);
>  
> -		instr_param++;
>  
>  		dev = get_device_by_name(devname);
>  		free(devname);
> diff --git a/include/ata_drive.h b/include/ata_drive.h
> index 11685eef12cf..d61c6f11d4d3 100644
> --- a/include/ata_drive.h
> +++ b/include/ata_drive.h
> @@ -14,7 +14,7 @@
>   */
>  
>  #ifndef ATA_DISK_H
> -# define ATA_DISK
> +#define ATA_DISK_H

Unrelated change?

Michael

>  
>  #include <block.h>
>  
> @@ -197,4 +197,4 @@ struct device_d;
>   *       0x400         data      data       16 bit area with 1 kiB in size
>   */
>  
> -#endif /* ATA_DISK */
> +#endif /* ATA_DISK_H */
> -- 
> 2.20.1
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
