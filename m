Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TMI9s-0001dY-TP
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 12:46:38 +0000
Received: from mail177.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 077B11050360
 for <barebox@lists.infradead.org>; Thu, 11 Oct 2012 14:53:02 +0200 (CEST)
Date: Thu, 11 Oct 2012 14:44:11 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121011124411.GB13639@game.jcrosoft.org>
References: <1349940335-20960-1-git-send-email-t.gamez@phytec.de>
 <1349940335-20960-2-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349940335-20960-2-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] ARM OMAP: Use wrapper in board files
To: Teresa =?iso-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On 09:25 Thu 11 Oct     , Teresa G=E1mez wrote:
> Use the omap wrappers in board files instead of add_generic_device().
> Compile tested every affected board. Tested on pcm049.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/boards/beagle/board.c            |   17 +++++------------
>  arch/arm/boards/omap343xdsp/board.c       |   12 ++++--------
>  arch/arm/boards/omap3evm/board.c          |   18 +++++-------------
>  arch/arm/boards/panda/board.c             |   19 +++++--------------
>  arch/arm/boards/pcm049/board.c            |   21 +++++++--------------
>  arch/arm/boards/phycard-a-l1/pca-a-l1.c   |   20 +++++---------------
>  arch/arm/boards/phycard-a-xl2/pca-a-xl2.c |   21 +++++++--------------
>  7 files changed, 38 insertions(+), 90 deletions(-)
> =

> diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/boar=
d.c
> index 19bf740..bab11c8 100644
> --- a/arch/arm/boards/beagle/board.c
> +++ b/arch/arm/boards/beagle/board.c
> @@ -62,6 +62,7 @@
>  #include <mach/sys_info.h>
>  #include <mach/syslib.h>
>  #include <mach/control.h>
> +#include <mach/devices.h>
>  #include <mach/omap3-mux.h>
>  #include <mach/gpmc.h>
>  #include <mach/gpmc_nand.h>
> @@ -235,11 +236,6 @@ pure_initcall(beagle_board_init);
>  =

>  #ifdef CONFIG_DRIVER_SERIAL_NS16550
>  =

> -static struct NS16550_plat serial_plat =3D {
> -	.clock =3D 48000000,      /* 48MHz (APLL96/2) */
> -	.shift =3D 2,
> -};
> -
>  /**
>   * @brief UART serial port initialization - remember to enable COM clock=
s in
>   * arch
> @@ -249,8 +245,7 @@ static struct NS16550_plat serial_plat =3D {
>  static int beagle_console_init(void)
>  {
>  	/* Register the serial port */
> -	add_ns16550_device(DEVICE_ID_DYNAMIC, OMAP_UART3_BASE, 1024, IORESOURCE=
_MEM_8BIT,
> -			   &serial_plat);
> +	omap_add_ns16550(OMAP_UART3_BASE);
do not even provide the base at board level
>  =

>  	return 0;
>  }
> @@ -287,7 +282,7 @@ static struct gpmc_nand_platform_data nand_plat =3D {
>  =

>  static int beagle_mem_init(void)
>  {
> -	arm_add_mem_device("ram0", 0x80000000, 128 * 1024 * 1024);
> +	omap_add_ram0(SZ_128M);
>  =

>  	return 0;
>  }
> @@ -296,8 +291,7 @@ mem_initcall(beagle_mem_init);
>  static int beagle_devices_init(void)
>  {
>  	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
> -	add_generic_device("i2c-omap", DEVICE_ID_DYNAMIC, NULL, OMAP_I2C1_BASE,=
 SZ_4K,
> -			   IORESOURCE_MEM, NULL);
> +	omap_add_i2c(OMAP_I2C1_BASE, NULL);
ditoo and etc..

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
