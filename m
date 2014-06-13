Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvMKh-0008QV-Ck
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:55:32 +0000
Received: by mail-la0-f52.google.com with SMTP id s18so1248834lam.39
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:05 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.03
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:04 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:17 +0200
Message-Id: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
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
Subject: [RFC][PATCH 00/18] am33x: add musb
To: barebox@lists.infradead.org

This RFC patchset is intended as a start or reference to get musb support
mainline. So mostly there is no Signed-off-by.  This patchset applies to
current barebox and is tested on phytec-phycore-am335x.

If due to mail size restrictions a patch doesn't get through to this
mailinglist, the full patchset is also availible as branch 'musb' at
https://github.com/ch-f/barebox.git

Christoph Fritz (18):
  arm: am33xx: add USB clocks
  arm: am33xx: add pinmux config for USB
  linux wrapper: add more dummy spin_lock stubs
  musb: add musb driver from u-boot
  musb: delete unused include files
  musb: move musb.h to path include/usb
  musb: drop gadget support - remove appropriate files
  musb: use __BAREBOX__ macro
  musb: adapt Kconfig and Makefiles
  arm: pcm051: enable musb in defconfig
  musb: adapt driver to work on barebox
  musb: only support USB_SPEED_HIGH devices
  usb: add musb support
  arm: am33xx: add usb base addresses
  arm: am33xx: add usb platform helper code
  musb: add barebox gluecode
  arm: pcm051: enable USB pinmux
  arm: pcm051: enable USB

 arch/arm/boards/phytec-phycore-am335x/board.c    |   16 +
 arch/arm/configs/am335x_defconfig                |    2 +
 arch/arm/include/asm/omap_musb.h                 |   24 +
 arch/arm/mach-omap/Makefile                      |    2 +-
 arch/arm/mach-omap/am33xx_clock.c                |    7 +
 arch/arm/mach-omap/am33xx_mux.c                  |   24 +
 arch/arm/mach-omap/am33xx_usb.c                  |   65 +
 arch/arm/mach-omap/include/mach/am33xx-clock.h   |    2 +
 arch/arm/mach-omap/include/mach/am33xx-mux.h     |    2 +
 arch/arm/mach-omap/include/mach/am33xx-silicon.h |   10 +
 arch/arm/mach-omap/include/mach/am33xx-usb.h     |   11 +
 drivers/usb/Kconfig                              |    2 +
 drivers/usb/Makefile                             |    1 +
 drivers/usb/musb/Kconfig                         |   21 +
 drivers/usb/musb/Makefile                        |    6 +
 drivers/usb/musb/linux-compat.h                  |   69 +
 drivers/usb/musb/musb.h                          |  164 ++
 drivers/usb/musb/musb_barebox.c                  |  306 +++
 drivers/usb/musb/musb_core.c                     | 2502 ++++++++++++++++++++++
 drivers/usb/musb/musb_core.h                     |  605 ++++++
 drivers/usb/musb/musb_debug.h                    |   58 +
 drivers/usb/musb/musb_dma.h                      |  186 ++
 drivers/usb/musb/musb_dsps.c                     |  768 +++++++
 drivers/usb/musb/musb_host.c                     | 2399 +++++++++++++++++++++
 drivers/usb/musb/musb_host.h                     |  114 +
 drivers/usb/musb/musb_io.h                       |  127 ++
 drivers/usb/musb/musb_regs.h                     |  645 ++++++
 drivers/usb/musb/usb-compat.h                    |   88 +
 include/linux/barebox-wrapper.h                  |    2 +
 include/usb/usb.h                                |   62 +
 30 files changed, 8289 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/include/asm/omap_musb.h
 create mode 100644 arch/arm/mach-omap/am33xx_usb.c
 create mode 100644 arch/arm/mach-omap/include/mach/am33xx-usb.h
 create mode 100644 drivers/usb/musb/Kconfig
 create mode 100644 drivers/usb/musb/Makefile
 create mode 100644 drivers/usb/musb/linux-compat.h
 create mode 100644 drivers/usb/musb/musb.h
 create mode 100644 drivers/usb/musb/musb_barebox.c
 create mode 100644 drivers/usb/musb/musb_core.c
 create mode 100644 drivers/usb/musb/musb_core.h
 create mode 100644 drivers/usb/musb/musb_debug.h
 create mode 100644 drivers/usb/musb/musb_dma.h
 create mode 100644 drivers/usb/musb/musb_dsps.c
 create mode 100644 drivers/usb/musb/musb_host.c
 create mode 100644 drivers/usb/musb/musb_host.h
 create mode 100644 drivers/usb/musb/musb_io.h
 create mode 100644 drivers/usb/musb/musb_regs.h
 create mode 100644 drivers/usb/musb/usb-compat.h

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
