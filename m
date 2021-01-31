Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6JBO-0004CT-Ni
 for barebox@lists.infradead.org; Sun, 31 Jan 2021 20:18:55 +0000
Received: from geraet.fritz.box (unknown [87.123.110.69])
 (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id B9A2320002
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2021 20:18:51 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 31 Jan 2021 21:18:39 +0100
Message-Id: <20210131201846.3440477-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/7] Add sound and GRUB beep tune support
To: barebox@lists.infradead.org

I've been meaning to upstream pwm-beeper support for a piezobuzzer,
but it would be a real shame if the obnoxious buzzing would delay the
boot. So let me present asynchronous beeping support for barebox.

If you don't have the suitable hardware lying around you can synth
your own tunes on the barebox sandbox shell as well.

The Imperial March:
  beep 480 440 4 440 4 440 4 349 3 523 1 440 4 349 3 523 1 440 8 659 4 659 4 659 4 698 3 523 1 415 4 349 3 523 1 440 8

Rebel's sabotage:
  beep -c

Cheers,
Ahmad Fatoum (7):
  sandbox: migrate to SDL 2.0
  drivers: add sound card driver support
  sound: add basic synthesizers for PCM beeper use
  sound: add SDL 2.0 sound driver
  commands: add beep command
  sound: add PWM beeper support
  sound: add gpio-beeper support

 arch/sandbox/Kconfig                          |   3 +
 arch/sandbox/Makefile                         |   6 +-
 arch/sandbox/configs/sandbox_defconfig        |   1 +
 arch/sandbox/dts/sandbox.dts                  |   4 +
 .../sandbox/mach-sandbox/include/mach/linux.h |  22 ++-
 arch/sandbox/os/Makefile                      |   4 +-
 arch/sandbox/os/sdl.c                         | 184 +++++++++++-------
 commands/Kconfig                              |   7 +
 commands/Makefile                             |   1 +
 commands/beep.c                               |  99 ++++++++++
 drivers/Kconfig                               |   1 +
 drivers/Makefile                              |   1 +
 drivers/sound/Kconfig                         |  38 ++++
 drivers/sound/Makefile                        |   5 +
 drivers/sound/core.c                          | 121 ++++++++++++
 drivers/sound/gpio-beeper.c                   |  77 ++++++++
 drivers/sound/pwm-beeper.c                    | 124 ++++++++++++
 drivers/sound/sdl.c                           |  87 +++++++++
 drivers/sound/synth.c                         |  43 ++++
 drivers/video/Kconfig                         |   1 +
 drivers/video/sdl.c                           |  37 ++--
 include/linux/fixp-arith.h                    | 144 ++++++++++++++
 include/poller.h                              |   4 +
 include/pwm.h                                 |  33 ++++
 include/sound.h                               |  77 ++++++++
 25 files changed, 1033 insertions(+), 91 deletions(-)
 create mode 100644 commands/beep.c
 create mode 100644 drivers/sound/Kconfig
 create mode 100644 drivers/sound/Makefile
 create mode 100644 drivers/sound/core.c
 create mode 100644 drivers/sound/gpio-beeper.c
 create mode 100644 drivers/sound/pwm-beeper.c
 create mode 100644 drivers/sound/sdl.c
 create mode 100644 drivers/sound/synth.c
 create mode 100644 include/linux/fixp-arith.h
 create mode 100644 include/sound.h

-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
