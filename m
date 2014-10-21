Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XgXJd-0007pH-OY
 for barebox@lists.infradead.org; Tue, 21 Oct 2014 11:09:26 +0000
Date: Tue, 21 Oct 2014 13:09:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141021110903.GN14443@pengutronix.de>
References: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1413828961-12605-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/7] imx: ipu-v3: fix typo leading to build warning
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 20, 2014 at 08:15:55PM +0200, Lucas Stach wrote:
> This PAGE_SIZE clearly should not be there.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied all, thanks

Sascha

> ---
>  drivers/video/imx-ipu-v3/ipu-common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/video/imx-ipu-v3/ipu-common.c b/drivers/video/imx-ipu-v3/ipu-common.c
> index c602363..f13cf01 100644
> --- a/drivers/video/imx-ipu-v3/ipu-common.c
> +++ b/drivers/video/imx-ipu-v3/ipu-common.c
> @@ -796,7 +796,7 @@ static int ipu_probe(struct device_d *dev)
>  	dev_dbg(dev, "vdi:      0x%p\n",
>  			ipu_base + devtype->vdi_ofs);
>  
> -	ipu->cm_reg = ipu_base + devtype->cm_ofs, PAGE_SIZE;
> +	ipu->cm_reg = ipu_base + devtype->cm_ofs;
>  	ipu->idmac_reg = ipu_base + devtype->cm_ofs + IPU_CM_IDMAC_REG_OFS;
>  	ipu->cpmem_base = ipu_base + devtype->cpmem_ofs;
>  
> -- 
> 1.9.3
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
