Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQ7Jk-00071F-0U
 for barebox@lists.infradead.org; Thu, 21 Jul 2016 06:18:45 +0000
Date: Thu, 21 Jul 2016 08:18:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160721061819.GQ20657@pengutronix.de>
References: <1468958994-10875-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1468958994-10875-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] mfd mc13xxx: add MC13892_REVISION_3_6
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Tue, Jul 19, 2016 at 10:09:54PM +0200, Alexander Kurz wrote:
> An MC13892CJ having REV[4:0]=0x1e can be found in the kindle-d01100.
> Add the revision to the list to support this device.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>

Applied, thanks

Sascha

> ---
>  drivers/mfd/mc13xxx.c | 1 +
>  include/mfd/mc13xxx.h | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
> index 68d70c5..075ec49 100644
> --- a/drivers/mfd/mc13xxx.c
> +++ b/drivers/mfd/mc13xxx.c
> @@ -225,6 +225,7 @@ static struct __init {
>  	{ 0x02, MC13892_REVISION_3_2a, "3.2a" },
>  	{ 0x1b, MC13892_REVISION_3_3, "3.3" },
>  	{ 0x1d, MC13892_REVISION_3_5, "3.5" },
> +	{ 0x1e, MC13892_REVISION_3_6, "3.6" },
>  };
>  
>  static int __init mc13892_revision(struct mc13xxx *mc13xxx)
> diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
> index 96a32e4..8799463 100644
> --- a/include/mfd/mc13xxx.h
> +++ b/include/mfd/mc13xxx.h
> @@ -133,6 +133,7 @@
>  #define MC13892_REVISION_3_2a		9
>  #define MC13892_REVISION_3_3		10
>  #define MC13892_REVISION_3_5		11
> +#define MC13892_REVISION_3_6		12
>  
>  #define MC13783_SWX_VOLTAGE(x)		((x) & 0x3f)
>  #define MC13783_SWX_VOLTAGE_DVS(x)	(((x) & 0x3f) << 6)
> -- 
> 2.1.4
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
