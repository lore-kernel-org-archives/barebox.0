Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gQCbx-0007BD-Uk
 for barebox@lists.infradead.org; Fri, 23 Nov 2018 14:39:15 +0000
Received: from litschi.hi.pengutronix.de
 ([2001:67c:670:100:feaa:14ff:fe6a:8db5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <m.tretter@pengutronix.de>) id 1gQCbk-0001uQ-Ab
 for barebox@lists.infradead.org; Fri, 23 Nov 2018 15:39:00 +0100
Date: Fri, 23 Nov 2018 15:38:59 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Message-ID: <20181123153859.4e48edb8@litschi.hi.pengutronix.de>
In-Reply-To: <20181123133553.24761-4-m.tretter@pengutronix.de>
References: <20181123133553.24761-1-m.tretter@pengutronix.de>
 <20181123133553.24761-4-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH 3/3] ARM: zynqmp: add support for Xilinx ZCU104 board
To: barebox@lists.infradead.org



On Fri, 23 Nov 2018 14:35:53 +0100, Michael Tretter wrote:
> Add support for the Xilinx Zynq Ultrascale+ MPSoC architecture (ZynqMP)
> and the Xilinx ZCU104 board.
> 
> Barebox is booted as BL33 in EL-1 and expects that a BL2 (i.e. the FSBL)
> already took care of initializing the RAM. Also for debug_ll, the UART
> is expected to be already setup correctly.
> 
> Thus, you have to add the Barebox binary to a boot image as described in
> "Chapter 11: Boot and Configuration" of "Zynq Ultrascale+ Device
> Technical Reference Manual".
> 
> The ENTRY_FUNCTION macro cannot be used in aarch64, because aarch64 does
> not specify the __naked__ attribute and gcc add a function prologue to
> the entry function which writes to the stack, but the stack is not set
> up. Thus, the entry has to be implemented in assembly.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/Kconfig                              | 14 +++++++
>  arch/arm/Makefile                             |  1 +
>  arch/arm/boards/Makefile                      |  1 +
>  arch/arm/boards/xilinx-zcu104/Makefile        |  2 +
>  arch/arm/boards/xilinx-zcu104/board.c         | 25 ++++++++++++
>  arch/arm/boards/xilinx-zcu104/lowlevel.c      | 30 +++++++++++++++
>  arch/arm/boards/xilinx-zcu104/lowlevel_init.S | 32 ++++++++++++++++
>  arch/arm/configs/zynqmp_defconfig             | 38 +++++++++++++++++++
>  arch/arm/dts/Makefile                         |  1 +
>  arch/arm/mach-zynqmp/Kconfig                  |  9 +++++
>  arch/arm/mach-zynqmp/Makefile                 |  1 +
>  arch/arm/mach-zynqmp/include/mach/debug_ll.h  | 30 +++++++++++++++
>  arch/arm/mach-zynqmp/zynqmp.c                 | 22 +++++++++++
>  images/Makefile                               |  1 +
>  images/Makefile.zynqmp                        |  7 ++++
>  15 files changed, 214 insertions(+)
>  create mode 100644 arch/arm/boards/xilinx-zcu104/Makefile
>  create mode 100644 arch/arm/boards/xilinx-zcu104/board.c
>  create mode 100644 arch/arm/boards/xilinx-zcu104/lowlevel.c
>  create mode 100644 arch/arm/boards/xilinx-zcu104/lowlevel_init.S
>  create mode 100644 arch/arm/configs/zynqmp_defconfig
>  create mode 100644 arch/arm/mach-zynqmp/Kconfig
>  create mode 100644 arch/arm/mach-zynqmp/Makefile
>  create mode 100644 arch/arm/mach-zynqmp/include/mach/debug_ll.h
>  create mode 100644 arch/arm/mach-zynqmp/zynqmp.c
>  create mode 100644 images/Makefile.zynqmp
> 
[...]
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 503d9b18f9..0ac3124c8c 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -119,6 +119,7 @@ pbl-dtb-$(CONFIG_MACH_ZII_VF610_DEV) += \
>  pbl-dtb-$(CONFIG_MACH_AT91SAM9263EK_DT) += at91sam9263ek.dtb.o
>  pbl-dtb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += at91-microchip-ksz9477-evb.dtb.o
>  pbl-dtb-$(CONFIG_MACH_AT91SAM9X5EK) += at91sam9x5ek.dtb.o
> +pbl-dtb-$(CONFIG_MACH_XILINX_ZCU104) += zynqmp-zcu104-revA.dtb.o

I forgot to add the dts file for barebox to the patch. Will do in v2.

Michael

>  
>  pbl-dtb-$(CONFIG_MACH_ZII_IMX7D_RPU2) += imx7d-zii-rpu2.dtb.o
>  

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
