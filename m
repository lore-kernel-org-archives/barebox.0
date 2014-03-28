Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTSw6-0006S6-9l
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:18:52 +0000
Received: by mail-la0-f48.google.com with SMTP id gf5so3448379lab.21
 for <barebox@lists.infradead.org>; Fri, 28 Mar 2014 02:18:23 -0700 (PDT)
Date: Fri, 28 Mar 2014 13:28:11 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140328132811.ee85068f4bd2ee0f623c6be2@gmail.com>
In-Reply-To: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
References: <1395955604-12826-1-git-send-email-antonynpavlov@gmail.com>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/9] MIPS: add Atheros AR933x SoC & TP-LINK MR3020 board
 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 28 Mar 2014 01:26:35 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Your latest clk-related changes break build of this patchseries.

I'll resend this series soon.

> Antony Pavlov (8):
>   MIPS: lib: add BAREBOX_CLK_TABLE to linker script
>   MIPS: ath79: add DEBUG_LL support for Atheros AR933x
>   serial: add Atheros AR933x driver
>   clk: add Atheros AR933x driver
>   MIPS: ath79: ar9331: add devicetree files
>   MIPS: ath79: add tplink-mr3020 board support
>   MIPS: tplink-mr3020: add documentation
>   MIPS: add tplink-mr3020_defconfig
> =

> Du Huanpeng (1):
>   MIPS: add Atheros ar933x family support
> =

>  Documentation/boards.dox                         |   1 +
>  arch/mips/Kconfig                                |  14 ++
>  arch/mips/Makefile                               |   3 +
>  arch/mips/boards/tplink-mr3020/Makefile          |   1 +
>  arch/mips/boards/tplink-mr3020/board.c           |  27 +++
>  arch/mips/boards/tplink-mr3020/tplink-mr3020.dox |  64 +++++++
>  arch/mips/configs/tplink-mr3020_defconfig        |  29 ++++
>  arch/mips/dts/ar9331.dtsi                        |  26 +++
>  arch/mips/dts/include/dt-bindings                |   1 +
>  arch/mips/dts/tplink-mr3020.dts                  |  18 ++
>  arch/mips/lib/barebox.lds.S                      |   2 +
>  arch/mips/mach-ath79/Kconfig                     |  15 ++
>  arch/mips/mach-ath79/Makefile                    |   1 +
>  arch/mips/mach-ath79/include/mach/ar71xx_regs.h  |  64 +++++++
>  arch/mips/mach-ath79/include/mach/ath79.h        |  33 ++++
>  arch/mips/mach-ath79/include/mach/debug_ll.h     |  56 +++++++
>  arch/mips/mach-ath79/reset.c                     |  32 ++++
>  drivers/clk/Makefile                             |   1 +
>  drivers/clk/clk-ar933x.c                         | 175 +++++++++++++++++=
++
>  drivers/serial/Kconfig                           |   7 +
>  drivers/serial/Makefile                          |   1 +
>  drivers/serial/serial_ar933x.c                   | 204 +++++++++++++++++=
++++++
>  drivers/serial/serial_ar933x.h                   |  69 ++++++++
>  include/dt-bindings/clock/ar933x-clk.h           |  22 +++
>  24 files changed, 866 insertions(+)
>  create mode 100644 arch/mips/boards/tplink-mr3020/Makefile
>  create mode 100644 arch/mips/boards/tplink-mr3020/board.c
>  create mode 100644 arch/mips/boards/tplink-mr3020/tplink-mr3020.dox
>  create mode 100644 arch/mips/configs/tplink-mr3020_defconfig
>  create mode 100644 arch/mips/dts/ar9331.dtsi
>  create mode 120000 arch/mips/dts/include/dt-bindings
>  create mode 100644 arch/mips/dts/tplink-mr3020.dts
>  create mode 100644 arch/mips/mach-ath79/Kconfig
>  create mode 100644 arch/mips/mach-ath79/Makefile
>  create mode 100644 arch/mips/mach-ath79/include/mach/ar71xx_regs.h
>  create mode 100644 arch/mips/mach-ath79/include/mach/ath79.h
>  create mode 100644 arch/mips/mach-ath79/include/mach/debug_ll.h
>  create mode 100644 arch/mips/mach-ath79/reset.c
>  create mode 100644 drivers/clk/clk-ar933x.c
>  create mode 100644 drivers/serial/serial_ar933x.c
>  create mode 100644 drivers/serial/serial_ar933x.h
>  create mode 100644 include/dt-bindings/clock/ar933x-clk.h
> =

> -- =

> 1.9.0
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
