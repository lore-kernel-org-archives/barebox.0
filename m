Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22b.google.com ([2a00:1450:4013:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZRS8-0004BA-28
 for barebox@lists.infradead.org; Thu, 24 Oct 2013 20:24:20 +0000
Received: by mail-ea0-f171.google.com with SMTP id n15so24148ead.2
 for <barebox@lists.infradead.org>; Thu, 24 Oct 2013 13:23:57 -0700 (PDT)
Received: from mamamia.internal (a89-182-11-81.net-htp.de. [89.182.11.81])
 by mx.google.com with ESMTPSA id bn13sm8547646eeb.11.2013.10.24.13.23.56
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Thu, 24 Oct 2013 13:23:56 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Thu, 24 Oct 2013 22:23:40 +0200
Message-Id: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 0/6] simple framebuffer driver with RPi support
To: barebox@lists.infradead.org

This set adds a common simple framebuffer driver for platforms which choose
to support it. RPi support is part of this set.

The driver serves two functions:
* a framebuffer driver for barebox
* pass an active framebuffer configuration to a loaded kernel

For the latter to work the loaded kernel has to be CONFIG_FB_SIMPLE enabled.

Depending on the configured video mode, the RPi video hardware sets up a
framebuffer with noncontiguous horizonal lines. Patch 1, 2 and 3 prepare
common fb and gui code to support that.

Patch 4 is the driver itself, patch 6 adds support for simplefb to RPi.

Patch 5 just adds a missing field on a fb related mbox response.

Thanks,
Andre

Andre Heider (6):
  fb: add a stride value to struct fb_info
  gui: convert graphic utils to respect the stride value
  gui: convert the bmp renderer to respect the stride value
  video: add a simple framebuffer driver
  ARM: bcm2835: add missing mbox overscan response field
  ARM: rpi: add support for simplefb

 arch/arm/boards/raspberry-pi/rpi.c        |  84 +++++++++++
 arch/arm/mach-bcm2835/include/mach/mbox.h |   1 +
 drivers/video/Kconfig                     |  12 ++
 drivers/video/Makefile                    |   1 +
 drivers/video/fb.c                        |  11 +-
 drivers/video/simplefb.c                  | 224 ++++++++++++++++++++++++++++++
 include/fb.h                              |   1 +
 include/video/simplefb.h                  |  21 +++
 lib/gui/bmp.c                             |   8 +-
 lib/gui/graphic_utils.c                   |  10 +-
 10 files changed, 362 insertions(+), 11 deletions(-)
 create mode 100644 drivers/video/simplefb.c
 create mode 100644 include/video/simplefb.h

-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
