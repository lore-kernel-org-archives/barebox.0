Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdT9L-0000pX-8M
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 23:01:35 +0000
Received: by mail-ee0-f42.google.com with SMTP id c1so1042057eek.15
 for <barebox@lists.infradead.org>; Mon, 04 Nov 2013 15:01:12 -0800 (PST)
Received: from mamamia.internal (a89-182-17-100.net-htp.de. [89.182.17.100])
 by mx.google.com with ESMTPSA id s3sm52362808eeo.3.2013.11.04.15.01.10
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 04 Nov 2013 15:01:11 -0800 (PST)
From: Andre Heider <a.heider@gmail.com>
Date: Tue,  5 Nov 2013 00:00:58 +0100
Message-Id: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH v2 0/6] BCM2835 / simple framebuffer support
To: barebox@lists.infradead.org

This is v2 of my patch set posted on 10/24.
It adds framebuffer support for the RPi and provides an additional config
knob to set up the kernel's simplefb driver. The active barebox framebuffer
is basis for that feature, so that other platforms can make use of it.

This simplefb option depends on the bcm2835 fb driver since drivers need
to be aware of simplefb: framebuffers need to stay configured and cannot be
teared down.

The RPi case is rather simple in this regard. The allocated framebuffer lies
within the memory range of the VideoCore of the ARM/VC memory split. Hence,
there is no memory range that needs to be reserved as far as the ARM side
of things is concerned.
This likely needs to be added once other fb driver want to use simplefb.

Changes since v1:
* renamed "pitch" to "line_length" to match the kernel
* the bcm2835 framebuffer driver is now standalone
* configuring simplefb for the kernel is based on the active barebox
  framebuffer


Andre Heider (6):
  fb: add a line_length value to struct fb_info
  gui: convert graphic utils to respect line_length
  gui: convert the bmp renderer to respect line_length
  ARM: bcm2835: add missing mbox overscan response field
  video: add a BCM2835 framebuffer driver
  video: set up the kernel's simple framebuffer driver

 arch/arm/boards/raspberry-pi/rpi.c        |   1 +
 arch/arm/mach-bcm2835/include/mach/core.h |   5 +
 arch/arm/mach-bcm2835/include/mach/mbox.h |   1 +
 drivers/video/Kconfig                     |  14 +++
 drivers/video/Makefile                    |   2 +
 drivers/video/bcm2835.c                   | 136 ++++++++++++++++++++++++
 drivers/video/fb.c                        |  11 +-
 drivers/video/simplefb.c                  | 171 ++++++++++++++++++++++++++++++
 include/fb.h                              |   1 +
 lib/gui/bmp.c                             |   8 +-
 lib/gui/graphic_utils.c                   |  10 +-
 11 files changed, 349 insertions(+), 11 deletions(-)
 create mode 100644 drivers/video/bcm2835.c
 create mode 100644 drivers/video/simplefb.c

-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
