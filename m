Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtTTq-0003FJ-HD
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 08:31:52 +0000
Date: Tue, 12 Feb 2019 09:31:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190212083148.w23wpevefvm3pezv@pengutronix.de>
References: <1549894227-18660-1-git-send-email-thomas.haemmerle@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1549894227-18660-1-git-send-email-thomas.haemmerle@wolfvision.net>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] firmware-zynqmp: port from linux
To: Thomas =?iso-8859-15?Q?H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Thomas,

On Mon, Feb 11, 2019 at 02:10:40PM +0000, Thomas H=E4mmerle wrote:
> From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> =

> Port Xilinx Zynq MPSoC Firmware layer driver from linux.
> =

> Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> ---
>  arch/arm/Kconfig                                   |   1 +
>  arch/arm/mach-zynqmp/Makefile                      |   2 +-
>  arch/arm/mach-zynqmp/firmware-zynqmp.c             | 601 +++++++++++++++=
++++++
>  .../arm/mach-zynqmp/include/mach/firmware-zynqmp.h |  66 +++
>  4 files changed, 669 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-zynqmp/firmware-zynqmp.c
>  create mode 100644 arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
> =

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index c1f385b..fdbe5b7 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -250,6 +250,7 @@ config ARCH_ZYNQMP
>  	select CPU_V8
>  	select HAS_DEBUG_LL
>  	select HAVE_PBL_MULTI_IMAGES
> +	select ARM_SMCCC
>  	select COMMON_CLK
>  	select COMMON_CLK_OF_PROVIDER
>  	select CLKDEV_LOOKUP
> diff --git a/arch/arm/mach-zynqmp/Makefile b/arch/arm/mach-zynqmp/Makefile
> index c601374..021efc9 100644
> --- a/arch/arm/mach-zynqmp/Makefile
> +++ b/arch/arm/mach-zynqmp/Makefile
> @@ -1,2 +1,2 @@
>  # SPDX-License-Identifier: GPL-2.0-or-later
> -obj- :=3D __dummy__.o
> +obj-y +=3D firmware-zynqmp.o
> diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqm=
p/firmware-zynqmp.c


Maybe drivers/firmware/ would be a more appropriate directory to put
this driver in.

> +static int zynqmp_firmware_probe(struct device_d *dev)
> +{
> +	int ret;
> +
> +	ret =3D get_set_conduit_method(dev->device_node);
> +	if (ret)
> +		goto out;
> +
> +	zynqmp_pm_get_api_version(&pm_api_version);
> +	if (pm_api_version < ZYNQMP_PM_VERSION) {
> +		dev_err(dev, "Platform Management API version error."
> +				"Expected: v%d.%d - Found: v%d.%d\n",
> +				ZYNQMP_PM_VERSION_MAJOR,
> +				ZYNQMP_PM_VERSION_MINOR,
> +				pm_api_version >> 16, pm_api_version & 0xFFFF);
> +		ret =3D -1;
> +		goto out;

-1 is -EPERM which is not a meaningful error code here. Please pick
something appropriate from errno.h.

Otherwise looks good. This looks like clock support. Are you planning to
create a clk driver aswell?

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
