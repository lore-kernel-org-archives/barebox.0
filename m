Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Joy-0004u2-Qh
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 07:47:17 +0000
Message-ID: <d7ab051027f78ea37d9ab3833765fa70d2ab350f.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 12 Sep 2019 09:47:09 +0200
In-Reply-To: <20190912071301.28715-1-s.hauer@pengutronix.de>
References: <20190912071301.28715-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] bootm: release tee_res
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On Thu, 2019-09-12 at 09:13 +0200, Sascha Hauer wrote:
> When a tee_res has been acquired it must be released when bootm
> returns
> (for dryrun)
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/bootm.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index d7232f6afa..b50b76ed6f 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -682,6 +682,8 @@ err_out:
>  		release_sdram_region(data->initrd_res);
>  	if (data->oftree_res)
>  		release_sdram_region(data->oftree_res);
> +	if (data->tee_res)
> +		release_sdram_region(data->tee_res);
>  	if (data->initrd && data->initrd != data->os)
>  		uimage_close(data->initrd);
>  	if (data->os)

Reviewed-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Regards,
Rouven Czerwinski


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
