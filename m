Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrCgd-0003Hc-EO
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 19:44:28 +0000
Date: Mon, 24 Jun 2013 21:44:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130624194405.GW32299@pengutronix.de>
References: <1372059045-18113-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372059045-18113-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] ubiformat: check file size
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 24, 2013 at 09:30:45AM +0200, Jan Weitzel wrote:
> If size of a flash image file is 0 ubiformat silently formats the volume.
> Check size and abort if size == 0. This may be the case if an empty or tftp
> mounted file is used.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  commands/ubiformat.c |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> 
> diff --git a/commands/ubiformat.c b/commands/ubiformat.c
> index 121816f..5b4e572 100644
> --- a/commands/ubiformat.c
> +++ b/commands/ubiformat.c
> @@ -325,6 +325,11 @@ static int flash_image(const struct mtd_dev_info *mtd,
>  		goto out_close;
>  	}
>  
> +	if (st_size == 0) {
> +		sys_errmsg("file \"%s\" has size 0 bytes", args.image);
> +		goto out_close;
> +	}
> +
>  	verbose(args.verbose, "will write %d eraseblocks", img_ebs);
>  	divisor = img_ebs;
>  	for (eb = 0; eb < mtd->eb_cnt; eb++) {
> -- 
> 1.7.0.4
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
