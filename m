Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK3ZF-0006w9-7O
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 08:47:33 +0000
Received: by mail-lb0-f177.google.com with SMTP id gi11so1099815lbb.36
 for <barebox@lists.infradead.org>; Fri, 05 Oct 2012 01:47:29 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 5 Oct 2012 10:47:29 +0200
Message-ID: <CAOQ7t2bDaoZggbwcB9YfYqy-We-uoPobL=d83-_jamfq6n8Ejw@mail.gmail.com>
From: Carlo Caione <carlo.caione@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] Raspberry-Pi support
To: barebox@lists.infradead.org

Hi,
patches written against next-stable.
Amba bus registration patch is required (Jean-Christophe's patch)

Carlo Caione (4):
  Add support for ARM1176
  Raspberry-Pi: add defconfig
  Add support for BCM2835
  Add support for Raspberry-Pi

 arch/arm/Kconfig                                   |   7 +
 arch/arm/Makefile                                  |   2 +
 arch/arm/boards/raspberry-pi/Makefile              |   1 +
 arch/arm/boards/raspberry-pi/config.h              |   4 +
 arch/arm/boards/raspberry-pi/env/config            |   1 +
 .../arm/boards/raspberry-pi/env/init/bootargs-base |   8 +
 arch/arm/boards/raspberry-pi/env/init/hostname     |   8 +
 arch/arm/boards/raspberry-pi/rpi.c                 |  58 ++++++
 arch/arm/configs/rpi_defconfig                     |  41 ++++
 arch/arm/cpu/Kconfig                               |   5 +
 arch/arm/mach-bcm2835/Kconfig                      |  22 +++
 arch/arm/mach-bcm2835/Makefile                     |   3 +
 arch/arm/mach-bcm2835/clock.c                      |  59 ++++++
 arch/arm/mach-bcm2835/core.c                       | 108 +++++++++++
 arch/arm/mach-bcm2835/gpio.c                       | 145 +++++++++++++++
 arch/arm/mach-bcm2835/include/mach/clkdev.h        |   7 +
 arch/arm/mach-bcm2835/include/mach/clock.h         |  10 +
 arch/arm/mach-bcm2835/include/mach/core.h          |  27 +++
 arch/arm/mach-bcm2835/include/mach/gpio.h          |   9 +
 arch/arm/mach-bcm2835/include/mach/platform.h      | 207 +++++++++++++++++++++
 20 files changed, 732 insertions(+)
 create mode 100644 arch/arm/boards/raspberry-pi/Makefile
 create mode 100644 arch/arm/boards/raspberry-pi/config.h
 create mode 100644 arch/arm/boards/raspberry-pi/env/config
 create mode 100644 arch/arm/boards/raspberry-pi/env/init/bootargs-base
 create mode 100644 arch/arm/boards/raspberry-pi/env/init/hostname
 create mode 100644 arch/arm/boards/raspberry-pi/rpi.c
 create mode 100644 arch/arm/configs/rpi_defconfig
 create mode 100644 arch/arm/mach-bcm2835/Kconfig
 create mode 100644 arch/arm/mach-bcm2835/Makefile
 create mode 100644 arch/arm/mach-bcm2835/clock.c
 create mode 100644 arch/arm/mach-bcm2835/core.c
 create mode 100644 arch/arm/mach-bcm2835/gpio.c
 create mode 100644 arch/arm/mach-bcm2835/include/mach/clkdev.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/clock.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/core.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/gpio.h
 create mode 100644 arch/arm/mach-bcm2835/include/mach/platform.h

-- 
1.7.12.2

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
