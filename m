Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZV5b9-0004A6-Bw
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 22:24:44 +0000
Received: by laaa3 with SMTP id a3so12559818laa.2
 for <barebox@lists.infradead.org>; Thu, 27 Aug 2015 15:24:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Aug 2015 01:24:01 +0300
Message-Id: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 0/9] ehci-hcd.c: make it works on big-endian mips (AR9331)
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

This patchseries is very preliminary and has several issues:

  * USBMODE_BE bit set does not work on AR9331
    see the 'usb: ehci: add big-endian registers support' patch
  * tested on USB-flash; I have to test E100 USB Ethernet too;
  * the 'usb: ehci-hcd: add OF bindings' patch is not taken into account;
    see http://lists.infradead.org/pipermail/barebox/2015-August/024545.html

Antony Pavlov (9):
  WIP: make ehci-hcd.c happy on big-endian MIPS
  WIP: fix drivers/usb/core/usb.c
  MIPS: add virt_to_phys() and phys_to_virt()
  MIPS: add trivial dma support
  ehci-hcd.c: make it works on mips
  usb: ehci: drop unusable CONFIG_EHCI_MMIO_BIG_ENDIAN condition
  usb: ehci: add big-endian registers support
  MIPS: tplink-mr3020: select big-endian EHCI support
  MIPS: tplink-mr3020_defconfig: enable usb stuff

 arch/mips/Kconfig                         |   1 +
 arch/mips/boards/tplink-mr3020/board.c    |  55 +++++++++++
 arch/mips/configs/tplink-mr3020_defconfig |  49 ++++++----
 arch/mips/include/asm/dma-mapping.h       |   1 +
 arch/mips/include/asm/dma.h               |   5 +
 arch/mips/include/asm/io.h                |  35 +++++++
 arch/mips/lib/Makefile                    |   1 +
 arch/mips/lib/dma-default.c               |  28 ++++++
 arch/mips/mach-ath79/Kconfig              |   4 +
 drivers/usb/core/usb.c                    |   2 +-
 drivers/usb/host/Kconfig                  |   3 +
 drivers/usb/host/ehci-hcd.c               | 153 +++++++++++++++---------------
 drivers/usb/host/ehci.h                   |  55 ++++++++---
 include/linux/byteorder/big_endian.h      |   2 +-
 include/usb/ehci.h                        |   1 +
 15 files changed, 286 insertions(+), 109 deletions(-)
 create mode 100644 arch/mips/lib/dma-default.c

-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
