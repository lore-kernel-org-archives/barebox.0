Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc3rr-0001xR-P4
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 09:53:44 +0000
Date: Mon, 9 Nov 2020 10:53:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201109095342.GI29830@pengutronix.de>
References: <20201105064147.11414-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201105064147.11414-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v2] ARM: qemu: add support for qemu virt platform
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Rouven,

On Thu, Nov 05, 2020 at 07:41:48AM +0100, Rouven Czerwinski wrote:
> Necessary support to boot barebox on ARM qemu virt platforms.
> No internal device tree, since it is passed by qemu. Therefore it
> employs the generic 2nd stage image as the low level code and only adds
> a virt specific board driver.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/boards/Makefile           |  1 +
>  arch/arm/boards/qemu-virt/Makefile |  1 +
>  arch/arm/boards/qemu-virt/board.c  | 36 ++++++++++++++++++++++++++++++
>  arch/arm/mach-qemu/Kconfig         |  8 +++++++
>  4 files changed, 46 insertions(+)
>  create mode 100644 arch/arm/boards/qemu-virt/Makefile
> +static int virt_probe(struct device_d *dev)
> +{
> +	char *hostname = "virt64";

virt64?

> +config MACH_QEMU_VIRT
> +	bool "QEMU arm virt machine"
> +	select CPU_V7
> +	select ARM_AMBA
> +	select ARM_PSCI_CLIENT
> +	select BOARD_ARM_GENERIC_DT
> +	select HAVE_PBL_MULTI_IMAGES

You have to select OFDEVICE here as well.

Could you provide a defconfig file for this machine?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
