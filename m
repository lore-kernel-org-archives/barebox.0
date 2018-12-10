Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWHdT-0004CS-Pf
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 09:13:57 +0000
Date: Mon, 10 Dec 2018 10:13:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181210091343.rqqve4qb4ek5hmtq@pengutronix.de>
References: <20181128112053.6027-1-m.tretter@pengutronix.de>
 <20181207101156.2213-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181207101156.2213-1-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH v3 0/4] Xilinx Zynq Ultrascale+ MPSoC support
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 07, 2018 at 11:11:52AM +0100, Michael Tretter wrote:
> This is v3 of the series to add support for the Xilinx Zynq Ultrascale+ MPSoC
> platform and the ZCU104 Evaluation Kit.
> 
> I checked the SPDX-License-Identifiers and added them on all newly added
> source files.
> 
> Michael

Applied, thanks

Sascha

> 
> Changelog:
> 
> v2 -> v3:
> - add SPDX-License-Identifiers to all newly added source files
> 
> v1 -> v2:
> - move ENTRY_PROC to a more generic location
> - add separate patch for ENTRY_PROC
> - rebase onto piggydata patches
> - remove empty zynqmp.c and board.c
> - use SPDX-License-Identifiers
> 
> Michael Tretter (4):
>   ARM: lib64: .gitignore barebox.lds
>   ARM: aarch64: compile with general-regs-only
>   ARM: aarch64: add ENTRY_PROC macro for arm64
>   ARM: zynqmp: add support for Xilinx ZCU104 board
> 
>  arch/arm/Kconfig                              | 14 +++++++
>  arch/arm/Makefile                             |  5 +++
>  arch/arm/boards/Makefile                      |  1 +
>  arch/arm/boards/xilinx-zcu104/Makefile        |  2 +
>  arch/arm/boards/xilinx-zcu104/lowlevel.c      | 21 ++++++++++
>  arch/arm/boards/xilinx-zcu104/lowlevel_init.S | 12 ++++++
>  arch/arm/configs/zynqmp_defconfig             | 38 +++++++++++++++++++
>  arch/arm/dts/Makefile                         |  1 +
>  arch/arm/dts/zynqmp-zcu104-revA.dts           | 10 +++++
>  arch/arm/include/asm/barebox-arm64.h          | 35 +++++++++++++++++
>  arch/arm/lib64/.gitignore                     |  1 +
>  arch/arm/mach-zynqmp/Kconfig                  | 10 +++++
>  arch/arm/mach-zynqmp/Makefile                 |  2 +
>  arch/arm/mach-zynqmp/include/mach/debug_ll.h  | 31 +++++++++++++++
>  images/Makefile                               |  1 +
>  images/Makefile.zynqmp                        |  8 ++++
>  16 files changed, 192 insertions(+)
>  create mode 100644 arch/arm/boards/xilinx-zcu104/Makefile
>  create mode 100644 arch/arm/boards/xilinx-zcu104/lowlevel.c
>  create mode 100644 arch/arm/boards/xilinx-zcu104/lowlevel_init.S
>  create mode 100644 arch/arm/configs/zynqmp_defconfig
>  create mode 100644 arch/arm/dts/zynqmp-zcu104-revA.dts
>  create mode 100644 arch/arm/include/asm/barebox-arm64.h
>  create mode 100644 arch/arm/lib64/.gitignore
>  create mode 100644 arch/arm/mach-zynqmp/Kconfig
>  create mode 100644 arch/arm/mach-zynqmp/Makefile
>  create mode 100644 arch/arm/mach-zynqmp/include/mach/debug_ll.h
>  create mode 100644 images/Makefile.zynqmp
> 
> -- 
> 2.19.1
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
