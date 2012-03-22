Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAeIM-0007Lc-Dk
 for barebox@lists.infradead.org; Thu, 22 Mar 2012 09:27:00 +0000
Date: Thu, 22 Mar 2012 10:26:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120322092644.GZ3852@pengutronix.de>
References: <OF238DCFD4.07670D15-ONC12579C8.0049BABE-C12579C8.004A1884@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF238DCFD4.07670D15-ONC12579C8.0049BABE-C12579C8.004A1884@o0802.rafi.inhouse>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox-2012.03.0 imx_get_i2cclk
To: guenter.gebhardt@rafi.de
Cc: barebox@lists.infradead.org

On Wed, Mar 21, 2012 at 02:29:18PM +0100, guenter.gebhardt@rafi.de wrote:
> Hello,
> 
> when compiling for a imx53 with i2c enabled i got the following error:
> 
> drivers/built-in.o: In function `i2c_imx_set_clk':
> /home/ggebhardt/repos/ecuv6_bl/barebox/drivers/i2c/busses/i2c-imx.c:282: 
> undefined reference to `imx_get_i2cclk'
> make[4]: *** [.tmp_barebox1] Error 1
> make[3]: *** [CMakeFiles/bootloader] Error 2
> make[2]: *** [CMakeFiles/bootloader.dir/all] Error 2
> make[1]: *** [CMakeFiles/bootloader.dir/rule] Error 2
> make: *** [bootloader] Error 2
> 
> I copied the following from the corresponding imx51 implementation:
> 
> diff --git a/barebox/arch/arm/mach-imx/speed-imx53.c 
> b/barebox/arch/arm/mach-imx/speed-imx53.c
> index 0d6ac24..a168c65 100644
> --- a/barebox/arch/arm/mach-imx/speed-imx53.c
> +++ b/barebox/arch/arm/mach-imx/speed-imx53.c
> @@ -169,6 +169,11 @@ unsigned long imx_get_fecclk(void)
>         return imx_get_ipgclk();
>  }
>  
> +unsigned long imx_get_i2cclk(void)
> +{
> +       return imx_get_ipgclk();
> +}

The patch looks good. Could you create a formal patch with a proper
subject and signed-off-by? 

Sascha

> +
>  unsigned long imx_get_mmcclk(void)
>  {
>         u32 reg, prediv, podf, rate;

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
