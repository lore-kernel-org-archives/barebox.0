Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zc9T1-0006sL-4e
 for barebox@lists.infradead.org; Wed, 16 Sep 2015 09:57:32 +0000
Received: by lanb10 with SMTP id b10so124833276lan.3
 for <barebox@lists.infradead.org>; Wed, 16 Sep 2015 02:57:08 -0700 (PDT)
Date: Wed, 16 Sep 2015 13:19:15 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150916131915.557dabc53caa06252096902b@gmail.com>
In-Reply-To: <1442392292-15898-1-git-send-email-antonynpavlov@gmail.com>
References: <1442392292-15898-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 0/4] MIPS: barebox as a first stage loader on the Black
 Swift board
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, 16 Sep 2015 11:31:28 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> This patchseries add necessary low level initialization routines for AR93=
31 SoC.
> The patchseries makes possible to use barebox as a first stage loader
> on the Black Swift board.
> =

> The patchseries is heavily based on Oleksij Rempel's work on barebox for =
TP-Link MR3020.
> =

> TODOs:
> =

>   * add UART initialization routune for DEBUG_LL and NMON;
>   * add macros for GPIO_FUNCTION_1 register initialization;
>   * check macros names linux kernel source compartibility;
>   * DT compatible string vendor "smartlx" appears un-documented.
>      The site http://www.smartlx.ru/ is suspended.


    * add barebox Black Swift flashing instruction.



> =

> =

> Antony Pavlov (3):
>   MIPS: ar933x: pbl: add pbl_ar9331_ddr2_config macro
>   MIPS: ath79: add black-swift board support
>   MIPS: add black-swift_defconfig
> =

> Oleksij Rempel (1):
>   MIPS: ar933x: pbl: add pbl_ar9331_pll macro
> =

>  arch/mips/Makefile                                 |   1 +
>  arch/mips/boards/black-swift/Makefile              |   1 +
>  arch/mips/boards/black-swift/board.c               |  27 +++++
>  .../black-swift/include/board/board_pbl_start.h    |  46 +++++++
>  arch/mips/configs/black-swift_defconfig            |  37 ++++++
>  arch/mips/dts/black-swift.dts                      |  36 ++++++
>  arch/mips/include/asm/pbl_macros.h                 |  21 ++++
>  arch/mips/mach-ath79/Kconfig                       |   5 +
>  arch/mips/mach-ath79/include/mach/ar71xx_regs.h    |  25 ++++
>  arch/mips/mach-ath79/include/mach/pbl_macros.h     | 132 +++++++++++++++=
++++++
>  10 files changed, 331 insertions(+)
>  create mode 100644 arch/mips/boards/black-swift/Makefile
>  create mode 100644 arch/mips/boards/black-swift/board.c
>  create mode 100644 arch/mips/boards/black-swift/include/board/board_pbl_=
start.h
>  create mode 100644 arch/mips/configs/black-swift_defconfig
>  create mode 100644 arch/mips/dts/black-swift.dts
>  create mode 100644 arch/mips/mach-ath79/include/mach/pbl_macros.h
> =

> -- =

> 2.5.0
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
