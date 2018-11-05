Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJjg7-00065e-B4
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 18:32:48 +0000
Received: by mail-pg1-x541.google.com with SMTP id f8-v6so4606855pgq.5
 for <barebox@lists.infradead.org>; Mon, 05 Nov 2018 10:32:36 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Nov 2018 10:32:18 -0800
Message-Id: <20181105183222.25637-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/4] RDU1 config blob loading
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This is a small series adding patches necessary to load config blob on
RDU1 boards, which, among other things, contains MAC address to be
used for FEC. Hopefully all of the commits are self-explanatory.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (4):
  lib: Port CRC8 implementation from Linux kernel
  nvmem: Port Linux driver for Microwire 93XX46 EEPROM chips
  ARM: rdu1: Add an alias for Microwire EEPROM
  ARM: rdu1: Implement RDU1 config loading

 arch/arm/boards/zii-imx51-rdu1/board.c | 179 ++++++++++
 arch/arm/dts/imx51-zii-rdu1.dts        |  12 +
 arch/arm/mach-imx/Kconfig              |   1 +
 drivers/nvmem/Kconfig                  |   8 +
 drivers/nvmem/Makefile                 |   5 +-
 drivers/nvmem/eeprom_93xx46.c          | 446 +++++++++++++++++++++++++
 include/linux/crc8.h                   | 101 ++++++
 lib/Kconfig                            |   7 +
 lib/Makefile                           |   1 +
 lib/crc8.c                             |  82 +++++
 10 files changed, 841 insertions(+), 1 deletion(-)
 create mode 100644 drivers/nvmem/eeprom_93xx46.c
 create mode 100644 include/linux/crc8.h
 create mode 100644 lib/crc8.c

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
