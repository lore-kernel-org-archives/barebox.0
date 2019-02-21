Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from chandra.tablix.org ([193.95.199.109])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwkf9-0006l6-0w
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 09:29:05 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1gwkev-0001EJ-Cg
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 10:28:49 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Thu, 21 Feb 2019 10:28:45 +0100
Message-Id: <20190221092848.4488-1-tomaz.solc@tablix.org>
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
Subject: [PATCH 0/3] VideoCore FDT interop for Raspberry Pi
To: barebox@lists.infradead.org

Dear all,

these patches make Barebox aware of the device tree and boot arguments that are
constructed by the VideoCore firmware on Raspberry Pi. This fixes many problems
with hardware that is initialized from VideoCore when booting a kernel shipped
with Raspbian (e.g. when using dtoverlay directives in config.txt, bcm2708_fb
arguments, etc.) They are based on previous work done by Pascal Vizeli [1].

Passing of FDT between PBL and rpi_devices_init is somewhat ugly, but as far as
I can see, the patch mentioned in [2] has not been merged yet.

Overview of the changes:

 - PBL saves the VideoCore FDT into a scrap RAM area just above Barebox memory
   (this was an alternative approach suggested in [2]).
 - rpi_devices_init copies the FDT from scrap RAM into a file (/vd.dtb)
 - I had to add arm_mem_endmem_get() so that code in rpi_devices_init can get
   the pointer to the end of Barebox memory.
 - The new of_bootargs command makes it possible for an environment to include
   the kernel command-line from the VideoCore FDT.

[1] http://lists.infradead.org/pipermail/barebox/2018-June/033460.html
[2] http://lists.infradead.org/pipermail/barebox/2018-June/033469.html

Best regards
Tomaz

*** BLURB HERE ***

Tomaz Solc (3):
  ARM: start: save end of memory passed to start.
  ARM: rpi: save fdt that was passed from VideoCore
  commands: add of_bootargs command.

 Documentation/boards/bcm2835.rst          |  8 +++
 arch/arm/boards/raspberry-pi/lowlevel.c   | 68 +++++++++++++++------
 arch/arm/boards/raspberry-pi/lowlevel.h   |  9 +++
 arch/arm/boards/raspberry-pi/rpi-common.c | 34 +++++++++++
 arch/arm/cpu/start.c                      |  8 +++
 arch/arm/include/asm/barebox-arm.h        |  1 +
 commands/Kconfig                          | 13 ++++
 commands/Makefile                         |  1 +
 commands/of_bootargs.c                    | 99 +++++++++++++++++++++++++++++++
 9 files changed, 222 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm/boards/raspberry-pi/lowlevel.h
 create mode 100644 commands/of_bootargs.c

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
