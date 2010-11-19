Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PJQQq-0001af-DG
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 12:51:14 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PJQQn-00076Y-1n
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 13:51:09 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PJQQm-0003nA-Ti
	for barebox@lists.infradead.org; Fri, 19 Nov 2010 13:51:08 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 19 Nov 2010 13:50:52 +0100
Message-Id: <1290171063-28870-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCHv3] Add dynamic video initialization to barebox
To: barebox@lists.infradead.org

Currently barebox uses a fixed videomode setup. Everything is compiled in.
This change adds the possibility to select a videomode according to a
connected display at runtime. If more than one videomode is supported by the
platform, running the 'devinfo' command on the framebuffer device shows the
supported videomode list. After selecting the videomode, the output can be
enabled.

On my hardware I can connect a regular monitor, which supports more than one
videomode. The runtime setup sequence looks like that:

tx28:/ devinfo framebuffer0
base  : 0x00000000
size  : 0x00000000
driver: framebuffer

 Video/Mode info:
  Video output not enabled
 Current video mode:
  No video mode selected yet
 Supported video mode(s):
  'VGA'
  'SVGA'
  'XGA'
  'SXGA'
 Parameters:
           cdepth = 16
             mode = <NULL>
           enable = <NULL>

tx28:/ framebuffer0.mode=SVGA
tx28:/ bmp splash.bmp
tx28:/ framebuffer0.enable=1

After the last command the monitor shows the splash screen.

Changes in revision 2 of this patch stack:
- enabling the video output is now always required to get a picture
- driver specific data can now be added on a per videomode base
- documentation is adapted to the new behaviour

This is revision 3 of this patch stack:
- video output is now disabled as default, until enabled with
  'framebuffer0.enable=1'
- framebuffer's 'dev' and 'cdev' are now part of the 'fb_info'
- using a fixed framebuffer location is only handled in the driver
- hopefully fixed all long lines
- swapping the API in '/drivers/video/fb.c' is now done in one patch
- when adding to the final repository, still these patches should be squashed
  to keep the result bisectable:
     - "Bring in dynamic videomode selection at runtime"
     - "Add verbose framebuffer device info"
     - "Adapt the existing imx fb driver to support runtime videomode selection"
     - "Adapt the existing imx-ipu fb driver to support runtime videomode selection"
     - the videomode can now be setup more than once. To do so, just disable the
       video output again and start with videomode configuration once more

Note: The S3C2404 and i.MX23/i.MX28 framebuffer drivers are still for reference only.

The following changes since commit 53dbaf3fc7b8371ed1e24ef96715e41d60b8ebc3:

Merge branch 'master' into next (2010-11-19 09:35:15 +0100)

are available in the git repository at:

http://git.pengutronix.de/jbe/for_barebox_next/ next_dynamic_video_v3_for_sha

Juergen Beisert (11):
	Separate framebuffer platformdata and the videomode
	Add more flags for sync control
	Bring in dynamic videomode selection at runtime
	Add verbose framebuffer device info
	Adapt the existing imx fb driver to support runtime videomode selection
	Adapt the existing imx-ipu fb driver to support runtime videomode selection
	Remove variable size restrictions
	Add doxygen documentation to the framebfuffer code
	Provide more driver specific data in a videomode
	Add a video driver for S3C2440 bases platforms
	STM378x: Add video driver for this platform


 Documentation/developers_manual.dox               |    1 +
 Documentation/users_manual.dox                    |    1 +
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   39 +-
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   41 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    2 +-
 arch/arm/boards/guf-neso/board.c                  |   43 +-
 arch/arm/boards/imx21ads/imx21ads.c               |   48 +-
 arch/arm/boards/pcm038/pcm038.c                   |   42 +-
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/mach-imx/include/mach/imx-ipu-fb.h       |   12 +-
 arch/arm/mach-imx/include/mach/imxfb.h            |   21 +-
 arch/arm/mach-s3c24xx/include/mach/fb.h           |   40 ++
 arch/arm/mach-stm/include/mach/fb.h               |   33 +
 drivers/video/Kconfig                             |   23 +
 drivers/video/Makefile                            |    2 +
 drivers/video/fb.c                                |  452 ++++++++++++++-
 drivers/video/imx-ipu-fb.c                        |  217 ++++---
 drivers/video/imx.c                               |  220 ++++---
 drivers/video/s3c.c                               |  474 +++++++++++++++
 drivers/video/stm.c                               |  646 +++++++++++++++++++++
 include/fb.h                                      |  133 +++--
 21 files changed, 2112 insertions(+), 380 deletions(-)
 create mode 100644 arch/arm/mach-s3c24xx/include/mach/fb.h
 create mode 100644 arch/arm/mach-stm/include/mach/fb.h
 create mode 100644 drivers/video/s3c.c
 create mode 100644 drivers/video/stm.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
