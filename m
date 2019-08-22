Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0mj5-0007c3-98
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 13:02:04 +0000
Message-ID: <f4447393fb72c70b814f1365febee1ebca1417f1.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 22 Aug 2019 15:02:01 +0200
In-Reply-To: <20190822125158.10296-8-s.hauer@pengutronix.de>
References: <20190822125158.10296-1-s.hauer@pengutronix.de>
 <20190822125158.10296-8-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 7/8] ARM: i.MX8: Fix piggydata loading
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On Thu, 2019-08-22 at 14:51 +0200, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/imx-esdhc-pbl.c | 21 +++++++++++++--------
>  1 file changed, 13 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-
> pbl.c
> index fb27c84163..aa93af656c 100644
> --- a/drivers/mci/imx-esdhc-pbl.c
> +++ b/drivers/mci/imx-esdhc-pbl.c
> @@ -428,14 +428,12 @@ int imx8_esdhc_start_image(int instance)
>  
>  int imx8_esdhc_load_piggy(int instance)
>  {
> -	void *buf = (void *)MX8MQ_ATF_BL33_BASE_ADDR;
> +	void *buf, *piggy;
>  	struct imx_flash_header_v2 *hdr = NULL;
> -	void *bb = 0;
>  	struct esdhc esdhc;
>  	int ret, len;
>  	int offset = SZ_32K;
>  
> -
>  	switch (instance) {
>  	case 0:
>  		esdhc.regs = IOMEM(MX8MQ_USDHC1_BASE_ADDR);
> @@ -450,6 +448,13 @@ int imx8_esdhc_load_piggy(int instance)
>  	esdhc.is_be = 0;
>  	esdhc.is_mx6 = 1;
>  
> +	/*
> +	 * We expect to be running at MX8MQ_ATF_BL33_BASE_ADDR where
> the atf
> +	 * has jumped to. Use a temporary buffer where we won't
> overwrite
> +	 * ourselves.
> +	 */
> +	buf = (void *)MX8MQ_ATF_BL33_BASE_ADDR + SZ_32M;
> +
>  	ret = esdhc_search_header(&esdhc, &hdr, buf, &offset);
>  	if (ret)
>  		return ret;
> @@ -462,13 +467,13 @@ int imx8_esdhc_load_piggy(int instance)
>  	/*
>  	 * Calculate location of the piggydata at the offset loaded
> into RAM
>  	 */
> -	buf = buf + offset + hdr->boot_data.size;
> +	piggy = buf + offset + hdr->boot_data.size;
> +
>  	/*
> -	 * Barebox expects the piggydata right behind the PBL in the
> beginning
> -	 * of RAM.
> +	 * Copy the piggydata where the uncompressing code expects it
>  	 */
> -	bb = (void *) MX8MQ_DDR_CSD1_BASE_ADDR + barebox_pbl_size;
> -	memcpy(bb, buf, piggydata_size());
> +	memcpy(input_data, piggy, piggydata_size());
> +
>  	return ret;
>  }
>  #endif

Reviewed-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>

- rcz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
