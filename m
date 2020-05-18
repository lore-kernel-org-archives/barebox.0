Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jac7W-0004QJ-Al
 for barebox@lists.infradead.org; Mon, 18 May 2020 09:31:40 +0000
Date: Mon, 18 May 2020 11:31:35 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20200518093135.w7btykywr4mhagrn@pengutronix.de>
References: <20200517182039.9259-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517182039.9259-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] treewide: replace commas with semicolons where appropriate
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, May 17, 2020 at 08:20:39PM +0200, Ahmad Fatoum wrote:
> Found by searching drivers/ arch/ common/ and lib/ for
> 
>  /^\s+[^."/\*\[\s\{\(A-Z][^\[\{\(]*=[^\{\(]+,$/
> 
> Because the comma has the lowest precedence in C,
> this shouldn't result in any functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |  2 +-
>  arch/arm/mach-imx/iim.c                       |  6 +++---
>  arch/nios2/lib/libgcc.c                       | 21 ++++++++++---------
>  drivers/i2c/busses/i2c-imx-early.c            |  2 +-
>  drivers/i2c/busses/i2c-imx.c                  |  2 +-
>  drivers/i2c/busses/i2c-omap.c                 |  2 +-
>  drivers/mci/stm32_sdmmc2.c                    |  4 ++--
>  drivers/net/usb/usbnet.c                      | 10 ++++-----
>  8 files changed, 25 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> index 220a484bde80..558bc0791243 100644
> --- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> +++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
> @@ -242,7 +242,7 @@ static int eukrea_cpuimx35_core_init(void)
>  	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
>  	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
>  	reg |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
> -	reg |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT,
> +	reg |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
>  	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
>  	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR2);
>  	reg |= 0x3 << MX35_CCM_CGR2_USB_SHIFT;
> diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
> index 207e1879c3a9..2c7ffb009097 100644
> --- a/arch/arm/mach-imx/iim.c
> +++ b/arch/arm/mach-imx/iim.c
> @@ -329,9 +329,9 @@ static int imx_iim_add_bank(struct iim_priv *iim, int num, int nregs)
>  
>  	iim->bank[num] = bank;
>  
> -	bank->map_config.reg_bits = 8,
> -	bank->map_config.val_bits = 8,
> -	bank->map_config.reg_stride = 1,
> +	bank->map_config.reg_bits = 8;
> +	bank->map_config.val_bits = 8;
> +	bank->map_config.reg_stride = 1;
>  	bank->map_config.max_register = (nregs - 1),

Your regex didn't spot this line :)

 - Roland

>  	bank->map_config.name = xasprintf("bank%d", num);
>  
> diff --git a/arch/nios2/lib/libgcc.c b/arch/nios2/lib/libgcc.c
> index abf93fdd71d4..814df7331058 100644
> --- a/arch/nios2/lib/libgcc.c
> +++ b/arch/nios2/lib/libgcc.c
> @@ -319,15 +319,15 @@ DWtype __divdi3(DWtype u, DWtype v)
>  	DWunion vv = {.ll = v};
>  	DWtype w;
>  
> -	if (uu.s.high < 0)
> -		c = ~c,
> -
> -	uu.ll = -uu.ll;
> -
> -	if (vv.s.high < 0)
> -		c = ~c,
> +	if (uu.s.high < 0) {
> +		c = ~c;
> +		uu.ll = -uu.ll;
> +	}
>  
> -	vv.ll = -vv.ll;
> +	if (vv.s.high < 0) {
> +		c = ~c;
> +		vv.ll = -vv.ll;
> +	}
>  
>  	w = __udivmoddi4(uu.ll, vv.ll, (UDWtype *) 0);
>  
> @@ -366,9 +366,10 @@ DWtype __moddi3(DWtype u, DWtype v)
>  	DWunion vv = {.ll = v};
>  	DWtype w;
>  
> -	if (uu.s.high < 0)
> -		c = ~c,
> +	if (uu.s.high < 0) {
> +		c = ~c;
>  		uu.ll = -uu.ll;
> +	}
>  
>  	if (vv.s.high < 0)
>  		vv.ll = -vv.ll;
> diff --git a/drivers/i2c/busses/i2c-imx-early.c b/drivers/i2c/busses/i2c-imx-early.c
> index 26922c1044b7..472e4be83a70 100644
> --- a/drivers/i2c/busses/i2c-imx-early.c
> +++ b/drivers/i2c/busses/i2c-imx-early.c
> @@ -282,7 +282,7 @@ fail0:
>  	i2c_fsl_stop(fsl_i2c);
>  
>  	/* Disable I2C controller, and force our state to stopped */
> -	temp = fsl_i2c->i2cr_ien_opcode ^ I2CR_IEN,
> +	temp = fsl_i2c->i2cr_ien_opcode ^ I2CR_IEN;
>  	fsl_i2c_write_reg(temp, fsl_i2c, FSL_I2C_I2CR);
>  
>  	return (ret < 0) ? ret : num;
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 6911f803b2d8..7d25ed3af5ae 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -511,7 +511,7 @@ fail0:
>  	i2c_fsl_stop(adapter);
>  
>  	/* Disable I2C controller, and force our state to stopped */
> -	temp = i2c_fsl->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
> +	temp = i2c_fsl->hwdata->i2cr_ien_opcode ^ I2CR_IEN;
>  	fsl_i2c_write_reg(temp, i2c_fsl, FSL_I2C_I2CR);
>  
>  	return (result < 0) ? result : num;
> diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> index bdb34ca1b4cb..d3f525f333cc 100644
> --- a/drivers/i2c/busses/i2c-omap.c
> +++ b/drivers/i2c/busses/i2c-omap.c
> @@ -1176,7 +1176,7 @@ i2c_omap_probe(struct device_d *pdev)
>  
>  	omap_i2c_idle(i2c_omap);
>  
> -	i2c_omap->adapter.master_xfer = omap_i2c_xfer,
> +	i2c_omap->adapter.master_xfer = omap_i2c_xfer;
>  	i2c_omap->adapter.nr = pdev->id;
>  	i2c_omap->adapter.dev.parent = pdev;
>  	i2c_omap->adapter.dev.device_node = pdev->device_node;
> diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
> index 3ce3bb0f89d2..da2dc592adb3 100644
> --- a/drivers/mci/stm32_sdmmc2.c
> +++ b/drivers/mci/stm32_sdmmc2.c
> @@ -586,8 +586,8 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
>  	priv->dev = dev;
>  
>  	mci = &priv->mci;
> -	mci->send_cmd = stm32_sdmmc2_send_cmd,
> -	mci->set_ios = stm32_sdmmc2_set_ios,
> +	mci->send_cmd = stm32_sdmmc2_send_cmd;
> +	mci->set_ios = stm32_sdmmc2_set_ios;
>  	mci->init = stm32_sdmmc2_reset;
>  	mci->hw_dev = dev;
>  
> diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
> index 406b8c964f58..7397034586ef 100644
> --- a/drivers/net/usb/usbnet.c
> +++ b/drivers/net/usb/usbnet.c
> @@ -198,11 +198,11 @@ int usbnet_probe(struct usb_device *usbdev, const struct usb_device_id *prod)
>  	edev = &undev->edev;
>  	undev->udev = usbdev;
>  
> -	edev->open = usbnet_open,
> -	edev->init = usbnet_init,
> -	edev->send = usbnet_send,
> -	edev->recv = usbnet_recv,
> -	edev->halt = usbnet_halt,
> +	edev->open = usbnet_open;
> +	edev->init = usbnet_init;
> +	edev->send = usbnet_send;
> +	edev->recv = usbnet_recv;
> +	edev->halt = usbnet_halt;
>  	edev->priv = undev;
>  	edev->parent = &usbdev->dev;
>  
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
