Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXMVa-00066N-PL
 for barebox@lists.infradead.org; Sun, 02 Jun 2019 09:10:32 +0000
Date: Sun, 2 Jun 2019 11:08:17 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190602090817.GA14301@ravnborg.org>
References: <20190602073101.21352-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190602073101.21352-1-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 0/4] riscv: add initial LiteX SoC support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony

Nice patch series, thanks for sharing.

On Sun, Jun 02, 2019 at 10:30:57AM +0300, Antony Pavlov wrote:
> This RFC patchseries adds initial LiteX RISC-V SoC support for barebox.
> 
> You can obtain this patchseries from github:
> 
>     $ git clone -b 20190602.litex https://github.com/frantony/barebox
> 
> LiteX is a Migen-based System on Chip [1], supporting softcore VexRiscv CPU,
>  a 32-bits Linux Capable RISC-V CPU [2].
> 
> All the components used to create the LiteX SoC are open-source and
> the flexibility of Spinal HDL/Migen allow targeting easily very various
> FPGA devices/boards: Lattice, Altera, Xilinx, Microsemi FPGAs
> with SDRAM/DDR/DDR2/DDR3/DDR4 RAMs, RMII/MII/RGMII/1000BASE-X Ethernet PHYs.
> 
> The LiteX SoC with VexRiscv CPU can be deployed on e.g. Digilent ARTY board [3]
> or Terasic DE0-Nano board [4].
> 
> You can boot barebox from serial port using flterm [5]:, e.g.:
> 
> flterm --port /dev/ttyUSB0 --kernel <path_to_barebox.bin> --kernel-adr 0x40000000

Can you be persuaded to include the above in a .rst file in
Documentation, so others can find this info later?

	Sam
> 
> 
> TODO
> ====
> 
>   * add pbl support for riscv barebox;
>   * add liteeth Ethernet core support [6] (tip: use ARTY board);
>   * fix issues (see the WIP commit);
>   * use barebox to start linux [2] and zephyr [7].
> 
> 
> REFERENCES
> ==========
> 
>  [1] https://github.com/enjoy-digital/litex
>  [2] https://github.com/enjoy-digital/linux-on-litex-vexriscv
>  [3] https://store.digilentinc.com/arty-a7-artix-7-fpga-development-board-for-makers-and-hobbyists/
>  [4] http://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&No=593
>  [5] https://github.com/timvideos/flterm
>  [6] https://github.com/enjoy-digital/liteeth
>  [7] https://github.com/zephyrproject-rtos/zephyr/tree/master/boards/riscv32/litex_vexriscv
> 
> 
> Antony Pavlov (4):
>   riscv: add initial LiteX SoC support
>   serial: add litex UART driver
>   WIP: make it work on litex
>   riscv: add litex_defconfig
> 
>  arch/riscv/Kconfig                            |   6 +
>  arch/riscv/Makefile                           |   1 +
>  arch/riscv/boot/start.S                       |   2 -
>  arch/riscv/configs/litex_defconfig            |  45 +++++++
>  arch/riscv/dts/litex-generic.dts              |  17 +++
>  arch/riscv/dts/litex.dtsi                     |  36 +++++
>  arch/riscv/mach-litex/Kconfig                 |  11 ++
>  arch/riscv/mach-litex/Makefile                |   3 +
>  arch/riscv/mach-litex/include/mach/debug_ll.h | 124 ++++++++++++++++++
>  common/bootm.c                                |   2 +
>  drivers/serial/Makefile                       |   1 +
>  drivers/serial/serial_litex.c                 |  99 ++++++++++++++
>  12 files changed, 345 insertions(+), 2 deletions(-)
>  create mode 100644 arch/riscv/configs/litex_defconfig
>  create mode 100644 arch/riscv/dts/litex-generic.dts
>  create mode 100644 arch/riscv/dts/litex.dtsi
>  create mode 100644 arch/riscv/mach-litex/Kconfig
>  create mode 100644 arch/riscv/mach-litex/Makefile
>  create mode 100644 arch/riscv/mach-litex/include/mach/debug_ll.h
>  create mode 100644 drivers/serial/serial_litex.c
> 
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
