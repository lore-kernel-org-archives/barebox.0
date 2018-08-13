Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fp6ze-0002uW-Am
 for barebox@lists.infradead.org; Mon, 13 Aug 2018 07:10:23 +0000
Date: Mon, 13 Aug 2018 09:10:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180813071008.vv6h46q5jfjburwu@pengutronix.de>
References: <20180810190429.10823-1-andrew.smirnov@gmail.com>
 <20180810190429.10823-4-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180810190429.10823-4-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/6] ARM: i.MX: boot: Rework boot source detection for
 i.MX7 and i.MX8MQ
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 10, 2018 at 12:04:26PM -0700, Andrey Smirnov wrote:
> For both SoCs data found in SBMR registers reflects only the boot
> source that was selected via pins of fuses and not the final boot
> source that ended up being used by MaskROM code. Original i.MX7 boot
> source detection implementation worked around that fact by having a
> special code to correctly handle "Manufacturing Mode".
> 
> MaskROM in i.MX8MQ changed what SoC uses as recovery device and
> switched it to be USDHC2. It also made recovery device switch always
> enabled. Since correct actual boot source detection is important to
> being able to properly boot i.MX8MQ (due to not using DCD to
> initialize RAM), change the code to handle described exception.
> 
> Instead of trying to adapt original i.MX7 code with yet another
> special case if(), change the whole thing to do what U-Boot does on
> i.MX7 and i.MX8MQ and use "Boot information for software" provided by
> recent (found in i.MX7 and i.MX8MQ) versions of MaskROM.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/boot.c | 97 +++++++++++++---------------------------
>  1 file changed, 30 insertions(+), 67 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> index 45170ab10..f1fc40479 100644
> --- a/arch/arm/mach-imx/boot.c
> +++ b/arch/arm/mach-imx/boot.c
> @@ -28,6 +28,7 @@
>  #include <mach/imx6-regs.h>
>  #include <mach/imx7-regs.h>
>  #include <mach/vf610-regs.h>
> +#include <mach/imx8mq.h>
>  
>  
>  static void
> @@ -424,32 +425,12 @@ void imx6_boot_save_loc(void)
>  	imx_boot_save_loc(imx6_get_boot_source);
>  }
>  
> -#define IMX7_SRC_SBMR1	0x58
> -#define IMX7_SRC_SBMR2	0x70
> +#define IMX7_BOOT_SW_INFO_POINTER_ADDR		0x000001E8
> +#define IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0	0x000009e8
> +#define IMX8M_BOOT_SW_INFO_POINTER_ADDR_B0	0x00000968

Uargh. Whatever they smoke @NXP, I hope it at least makes them feel
good. We are provided a "Boot information for software" pointer whose
address depends on the mask ROM version? So to use the information we
must first get the mask ROM version which itself is found at varying
offsets in the mask ROM?
Needless to say that my i.MX8MQ reference manual specifies the pointer
address to 0x1e8 which is obviously copied from the i.MX7 Manual without
adjusting.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
