Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSZ-0000mO-Tp
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:27 +0000
Received: by mail-pf1-x444.google.com with SMTP id j2-v6so1325540pfn.11
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:46 -0700
Message-Id: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/11] Allow GPIOs to be referenced by label
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This patch series is the result of my work on extending various gpio_*
commands in Barebox CLI to allow referencing GPIOs by a label assigned
to them via Device Tree or in any other way.

Sascha:

AFAICT majority of callers of simple_strto*() functions don't really
do very strict error checking which seems really undesirable. With
kstrto*() functions in place, and assuming there's no objections to
that, what do you think about a separate patch series to replace all
of the uses of simple_strto*() with kstrto*() and eventually drop
majority of simple_strto*() implementation code?

Thanks,
Andrey Smirnov

Andrey Smirnov (11):
  gpio: VF610: Propagate error code of gpiochip_add() up
  VF610: Initialize pinctrl driver before gpio
  linux/ctype.h: Port _tolower()
  lib: Port kstrtox.c from Linux kernel
  commands: gpio: Move argument parsing into a shared function
  commands: gpio: Use kstrtoint() instead of simple_strtoul()
  gpiolib: Introduce gpio_find_by_label()
  commands: gpio: Allow GPIOs to be specified by label
  VF610: zii-vf610-dev: Drop switch reset GPIO configuration
  VF610: zii-vf610-dev: Replace board code with gpio-hog nodes
  ARM: rdu2: Replace board code with gpio-hog nodes

 arch/arm/boards/zii-imx6q-rdu2/board.c |  38 ---
 arch/arm/boards/zii-vf610-dev/board.c  |  61 -----
 arch/arm/dts/imx6qdl-zii-rdu2.dtsi     |  36 +++
 arch/arm/dts/vf610-zii-cfu1.dts        |  25 ++
 arch/arm/dts/vf610-zii-ssmb-spu3.dts   |   9 +
 commands/gpio.c                        |  54 ++--
 drivers/gpio/gpio-vf610.c              |   5 +-
 drivers/gpio/gpiolib.c                 |  17 ++
 drivers/pinctrl/pinctrl-vf610.c        |   2 +-
 include/gpio.h                         |   6 +
 include/linux/ctype.h                  |   9 +
 include/linux/kernel.h                 |  95 +++++++
 include/linux/string.h                 |   2 +
 lib/Makefile                           |   1 +
 lib/kstrtox.c                          | 366 +++++++++++++++++++++++++
 lib/kstrtox.h                          |   9 +
 16 files changed, 613 insertions(+), 122 deletions(-)
 create mode 100644 lib/kstrtox.c
 create mode 100644 lib/kstrtox.h

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
