Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgiGX-0001z9-KD
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 23:23:15 +0000
Received: by labbd9 with SMTP id bd9so23303848lab.2
 for <barebox@lists.infradead.org>; Fri, 10 Apr 2015 16:22:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 11 Apr 2015 02:22:56 +0300
Message-Id: <1428708181-12506-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/5] MIPS: xburst: add initial JZ4770 SoC support
To: barebox@lists.infradead.org

This patchseries adds initial JZ4770 SoC and Ainol Novo7 Paladin tablet support.

The patchseries can be found on github:
    https://github.com/frantony/barebox/tree/20150411.jz4770

The most notable problems and todos:

  * no PBL support; I have a PBL-enabled barebox version
    for the tablet, so barebox can be used as only bootloader for tablet.
    But this version is based on some dirty hacks
    e.g. it uses special pre-compiled X-Boot blob for bootstraping.

    Nowadays barebox mips PBL is written in assembler
    and I see no way to switch it to C. gcc-4.9.1 for mips has no __naked
    directive support, see this gcc output

        $ cat > 1.c <<EOF;
        int __attribute__((naked)) __attribute__((no_instrument_function)) main()
        {
        }
        EOF

        $ /opt/mips-2014.11/bin/mips-linux-gnu-gcc -o 1.o 1.c
        1.c:2:1: warning: 'naked' attribute directive ignored [-Wattributes]
         {
         ^

    So for moving X-Boot bootstrap C-code into barebox PBL we have to convert it
    from C to assembler language :(

    Please see JZ4770 bootstrap code in these repos:

        https://github.com/gcwnow/UBIBoot/
        https://github.com/IngenicSemiconductor/X-BOOT_NPM801

  * no clk support just now; we can easely steal it from linux
    JZ4780 support code (see wip-ci20-v4.1 branch in https://github.com/paulburton/linux);

  * no hardware clocksource support; this can be easely fixed,
    see linux JZ4780 support code again;
    also see https://github.com/frantony/barebox/blob/next.xburst.jz4770.20130511/arch/mips/mach-xburst/csrc-jz4770.c

Antony Pavlov (5):
  MIPS: xburst: add JZ4770 SoC support
  MIPS: xburst: debug_ll: add JZ4770 support
  MIPS: xburst: add Ainol Novo7 Paladin support
  MIPS: add ainol-novo7-paladin_defconfig
  Documentation: add Ainol Novo7 Paladin board mini-howto

 Documentation/boards/mips/ainol-novo7-paladin.rst  | 45 +++++++++++
 arch/mips/Makefile                                 |  1 +
 arch/mips/boards/ainol-novo7-paladin/Makefile      |  1 +
 arch/mips/boards/ainol-novo7-paladin/board.c       | 27 +++++++
 .../ainol-novo7-paladin/include/board/debug_ll.h   | 23 ++++++
 arch/mips/configs/ainol-novo7-paladin_defconfig    | 42 ++++++++++
 arch/mips/dts/ainol-novo7-paladin.dts              | 34 ++++++++
 arch/mips/dts/jz4770.dtsi                          | 90 ++++++++++++++++++++++
 arch/mips/include/asm/cpu.h                        |  1 +
 arch/mips/lib/cpu-probe.c                          |  1 +
 arch/mips/mach-xburst/Kconfig                      | 18 ++++-
 .../mach-xburst/include/mach/debug_ll_jz4770.h     | 47 +++++++++++
 arch/mips/mach-xburst/include/mach/jz4770.h        | 25 ++++++
 13 files changed, 351 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/boards/mips/ainol-novo7-paladin.rst
 create mode 100644 arch/mips/boards/ainol-novo7-paladin/Makefile
 create mode 100644 arch/mips/boards/ainol-novo7-paladin/board.c
 create mode 100644 arch/mips/boards/ainol-novo7-paladin/include/board/debug_ll.h
 create mode 100644 arch/mips/configs/ainol-novo7-paladin_defconfig
 create mode 100644 arch/mips/dts/ainol-novo7-paladin.dts
 create mode 100644 arch/mips/dts/jz4770.dtsi
 create mode 100644 arch/mips/mach-xburst/include/mach/debug_ll_jz4770.h
 create mode 100644 arch/mips/mach-xburst/include/mach/jz4770.h

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
