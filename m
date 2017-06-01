Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dGJUB-0002a5-4S
 for barebox@lists.infradead.org; Thu, 01 Jun 2017 06:21:33 +0000
Date: Thu, 1 Jun 2017 08:21:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170601062106.hx52egldtsuwhhd5@pengutronix.de>
References: <20170529200242.17934-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170529200242.17934-1-dev@lynxeye.de>
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
Subject: Re: [PATCH 1/2] ARM: imx6: gw54xx: add function to retrieve board
 revision from GSC
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, May 29, 2017 at 10:02:41PM +0200, Lucas Stach wrote:
> This parses the board revision from the GSC EEPROm model string.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/boards/gateworks-ventana/gsc.c | 14 ++++++++++++++
>  arch/arm/boards/gateworks-ventana/gsc.h |  2 ++
>  2 files changed, 16 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/gateworks-ventana/gsc.c b/arch/arm/boards/gateworks-ventana/gsc.c
> index 3614230..92244d1 100644
> --- a/arch/arm/boards/gateworks-ventana/gsc.c
> +++ b/arch/arm/boards/gateworks-ventana/gsc.c
> @@ -65,3 +65,17 @@ int gsc_i2c_write(struct i2c_client *client, u32 addr, const u8 *buf, u16 count)
>  
>  	return ret;
>  }
> +
> +char gsc_get_rev(struct i2c_client *client)
> +{
> +	int i;
> +	u8 model[16];
> +
> +	gsc_i2c_read(client, 0x30, model, 16);
> +	for (i = sizeof(model) - 1; i > 0; i--) {
> +		if (model[i] >= 'A')
> +			return model[i];
> +	}
> +
> +	return 'A';
> +}
> diff --git a/arch/arm/boards/gateworks-ventana/gsc.h b/arch/arm/boards/gateworks-ventana/gsc.h
> index a6e7e22..13f2262 100644
> --- a/arch/arm/boards/gateworks-ventana/gsc.h
> +++ b/arch/arm/boards/gateworks-ventana/gsc.h
> @@ -56,3 +56,5 @@
>   */
>  int gsc_i2c_read(struct i2c_client *client, u32 addr, u8 *buf, u16 count);
>  int gsc_i2c_write(struct i2c_client *client, u32 addr, const u8 *buf, u16 count);
> +
> +char gsc_get_rev(struct i2c_client *client);
> -- 
> 2.9.4
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
