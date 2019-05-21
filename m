Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1Cw-0008Gm-WB
 for barebox@lists.infradead.org; Tue, 21 May 2019 09:37:22 +0000
Date: Tue, 21 May 2019 11:37:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190521093716.qywrzd2qvkrpcmwn@pengutronix.de>
References: <20190520182402.12753-1-andrew.smirnov@gmail.com>
 <20190520182402.12753-6-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520182402.12753-6-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 5/5] ARM: i.MX: Drop unused usb-imx6.c
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, May 20, 2019 at 11:24:02AM -0700, Andrey Smirnov wrote:
> Looks like usb-imx6.c was abandoned and there are no references to
> either of the functions difined there. Drop it.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/mach-imx/Makefile   |   2 +-
>  arch/arm/mach-imx/usb-imx6.c | 111 -----------------------------------
>  2 files changed, 1 insertion(+), 112 deletions(-)
>  delete mode 100644 arch/arm/mach-imx/usb-imx6.c
> 
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index b86025cc3..b16de2866 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -10,7 +10,7 @@ obj-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o
>  pbl-$(CONFIG_ARCH_IMX51) += imx51.o imx5.o
>  obj-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
>  pbl-$(CONFIG_ARCH_IMX53) += imx53.o imx5.o esdctl-v4.o
> -obj-$(CONFIG_ARCH_IMX6) += imx6.o usb-imx6.o
> +obj-$(CONFIG_ARCH_IMX6) += imx6.o
>  CFLAGS_imx6.o := -march=armv7-a
>  lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
>  obj-$(CONFIG_ARCH_IMX7) += imx7.o
> diff --git a/arch/arm/mach-imx/usb-imx6.c b/arch/arm/mach-imx/usb-imx6.c
> deleted file mode 100644
> index 4236bcb77..000000000
> --- a/arch/arm/mach-imx/usb-imx6.c
> +++ /dev/null
> @@ -1,111 +0,0 @@
> -
> -int imx6_usb_phy2_disable_oc(void)
> -{

You leave the function prototypes in
arch/arm/mach-imx/include/mach/usb.h. Could you remove them aswell?

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
