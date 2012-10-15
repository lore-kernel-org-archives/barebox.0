Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNYSX-0004Cm-Bg
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 00:23:06 +0000
Received: by mail-wi0-f177.google.com with SMTP id hj13so1071972wib.0
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 17:22:59 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 15 Oct 2012 02:22:34 +0200
Message-Id: <1350260560-15528-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/6] archosg9: improve support for tablet
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

This patch series solves/improves/implements:
 ttyOxxx are 0 based, so change ttyO1 to ttyO0
 change speed to 115200, there are some issues at Mbaud speed in linux
 make the archos environment more flexible: initrd and zImage names are overwritable
 added definition of PSR_I_BIT and some others, remaining PSR bits renamed to match the linux ones
 disable interrupts at barebox exit
 speed up initrd transfer
 cleaner voltage switching

For the "OMAP4: clean voltage switch" patch I'm not sure if the changes are compatible with other boards.

Vicente Bergas (6):
  ArchosG9: changed serial port and env
  ARM: add rename PSR bits to match linux names
  ARM: ensure irqs are disabled at barebox exit
  UIMAGE: improve transfer speed
  ARM: use arm setup stack function on archosg9
  OMAP4: clean voltage switch

 arch/arm/boards/archosg9/env/config             |  4 +-
 arch/arm/boards/archosg9/env/init/usbboot       |  9 ++--
 arch/arm/boards/archosg9/lowlevel.c             |  5 +--
 arch/arm/boards/archosg9/mux.c                  |  9 +---
 arch/arm/configs/archosg9_defconfig             |  2 +-
 arch/arm/cpu/cpu.c                              | 11 +++++
 arch/arm/cpu/exceptions.S                       |  1 -
 arch/arm/cpu/interrupts.c                       |  6 +--
 arch/arm/include/asm/ptrace.h                   | 55 ++++++++++++++-----------
 arch/arm/mach-omap/include/mach/omap4-clock.h   |  2 +-
 arch/arm/mach-omap/include/mach/omap4-silicon.h |  2 +-
 arch/arm/mach-omap/omap4_clock.c                | 37 ++++++++++++++++-
 arch/arm/mach-omap/omap4_generic.c              | 52 ++++-------------------
 common/uimage.c                                 |  2 +-
 14 files changed, 101 insertions(+), 96 deletions(-)

-- 
1.7.12.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
