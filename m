Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSFX-0005f2-7O
 for barebox@lists.infradead.org; Thu, 09 Jan 2020 07:29:00 +0000
Received: by mail-lj1-x241.google.com with SMTP id y6so6135782lji.0
 for <barebox@lists.infradead.org>; Wed, 08 Jan 2020 23:28:58 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  9 Jan 2020 10:28:50 +0300
Message-Id: <20200109072855.14154-1-antonynpavlov@gmail.com>
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
Subject: [RFC 0/5] WIP: MIPS: implement dma mapping functions
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Peter Mamonov <pmamonov@gmail.com>

Implementing dma mapping function on MIPS makes it possible
to use e1000 and rtl8169 PCI network cards.

At the moment e1000 works under qemu. However additional
dma mapping functions testing on real hardware is necessary.

Antony Pavlov (4):
  WIP: MIPS: implement dma mapping functions
  net: e1000: make it work on MIPS
  net: rtl8169: make it work on big-endian system
  MIPS: qemu-malta_defconfig: enable e1000 network driver

Peter Mamonov (1):
  WIP: MIPS: configure ebase according CONFIG_MMU

 arch/mips/boot/main_entry.c            |  5 ++++
 arch/mips/configs/qemu-malta_defconfig |  1 +
 arch/mips/include/asm/dma-mapping.h    |  2 +-
 arch/mips/lib/dma-default.c            | 22 +++++++++++++++--
 drivers/net/e1000/e1000.h              |  2 ++
 drivers/net/e1000/main.c               |  8 +++---
 drivers/net/rtl8169.c                  | 34 +++++++++++++-------------
 7 files changed, 50 insertions(+), 24 deletions(-)

-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
