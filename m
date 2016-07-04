Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bJyMB-0001pJ-U2
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 07:31:52 +0000
Date: Mon, 4 Jul 2016 09:31:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160704073130.GC20657@pengutronix.de>
References: <1467277820-5558-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467277820-5558-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 1/2] scripts: imx-image: super_root_key command depends
 on header_version 1
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Thu, Jun 30, 2016 at 11:10:19AM +0200, Alexander Kurz wrote:
> The Super Root Key pointer exclusively exists in flash header version 1
> which is used for i.MX25, i.MX35 and i.MX51 SOC as described in freescales
> AN4547 document. Simplify the code a little bit.
> 
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  scripts/imx/imx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> index 70936ba..f1accc4 100644
> --- a/scripts/imx/imx.c
> +++ b/scripts/imx/imx.c
> @@ -327,7 +327,7 @@ static int do_super_root_key(struct config_data *data, int argc, char *argv[])
>  		return -EINVAL;
>  	}
>  
> -	if (data->cpu_type != 35 && data->cpu_type != 25) {
> +	if (data->header_version != 1) {
>  		fprintf(stderr, "Warning: The super_root_key command is meaningless "
>  			"on non HABv3 based SoCs\n");
>  		return 0;
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
