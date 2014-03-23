Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WRe4F-0006S9-IA
 for barebox@lists.infradead.org; Sun, 23 Mar 2014 08:47:44 +0000
Date: Sun, 23 Mar 2014 09:47:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140323084715.GH17250@pengutronix.de>
References: <1395235502-27629-1-git-send-email-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395235502-27629-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH] mtd: ubi: avoid NULL pointer dereference in ubi_get_device
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Mar 19, 2014 at 02:25:02PM +0100, Philipp Zabel wrote:
> If the ubidetach command is given a number that passes the range check
> in ubi_detach_mtd_dev, but at which index the ubi_devices array contains
> a NULL pointer, ubi_get_device tries to dereference this NULL pointer
> to increment the ubi device reference count.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/mtd/ubi/build.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
> index da21f69..b908fcd 100644
> --- a/drivers/mtd/ubi/build.c
> +++ b/drivers/mtd/ubi/build.c
> @@ -104,6 +104,8 @@ struct ubi_device *ubi_get_device(int ubi_num)
>  	struct ubi_device *ubi;
>  
>  	ubi = ubi_devices[ubi_num];
> +	if (!ubi)
> +		return NULL;
>  
>  	ubi->ref_count++;
>  
> -- 
> 1.9.0
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
