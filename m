Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W66o3-0007Y7-2U
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 23:01:59 +0000
Received: by mail-bk0-f48.google.com with SMTP id ej10so102078bkb.35
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2014 15:01:36 -0800 (PST)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Thu, 23 Jan 2014 00:01:29 +0100
Message-Id: <1390431691-5090-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [RFC PATCH 0/2] Bootmode override on i.MX6
To: barebox@lists.infradead.org
Cc: Troy Kisky <troy.kisky@boundarydevices.com>

The i.MX6 boot rom copies parts of the (persistent across reset) GPR9
register into SMBR1 if the GPR10[28] bit is set.
This allows to override the boot mode bits which are otherwise sampled
from fuses or gpios, and can be used to temporarily (until the next
power cycle) boot from a different device.
This patchset adds a bootmode command that conveniently writes to the
GPR9/10 registers to tell the boot rom from which device to boot.

Example:
    <power-on reset, boot ROM loads barebox from mmc3 as fused>
    # bootmode -l
      mmc2
    * mmc3
    # barebox_update -t mmc2 /path/to/barebox.img
    # bootmode mmc2
    # reset
    <boot ROM loads untested barebox from mmc2>
    # barebox_update -t mmc3 /path/to/barebox.img
    <either power cycle, or>
    # bootmode mmc3 ; reset
    <boot ROM loads tested barebox from mmc3>

Philipp Zabel (2):
  ARM i.MX6: Add bootmode setting code
  commands: add bootmode command

 arch/arm/mach-imx/boot.c                 |  75 ++++++++++++++++
 arch/arm/mach-imx/imx6.c                 |   2 +
 arch/arm/mach-imx/include/mach/generic.h |   6 ++
 commands/Kconfig                         |   9 ++
 commands/Makefile                        |   1 +
 commands/bootmode.c                      | 143 +++++++++++++++++++++++++++++++
 common/Kconfig                           |   3 +
 common/Makefile                          |   1 +
 common/bootmode.c                        |  39 +++++++++
 include/bootmode.h                       |  34 ++++++++
 10 files changed, 313 insertions(+)
 create mode 100644 commands/bootmode.c
 create mode 100644 common/bootmode.c
 create mode 100644 include/bootmode.h

The SBMR1 override using GPR9/10 is based on the U-Boot rsmode
patch by Troy Kisky:
    http://lists.denx.de/pipermail/u-boot/2012-May/125283.html

Tested on GK802 and BD-SL with mmc and spi nor flash.

I chose to use device names as parameter to the bootmode command,
but I'm unsure about that. Maybe reusing the bbu target name list
would be better for consistency?

regards
Philipp


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
