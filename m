Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTK7M-0004YZ-Nl
 for barebox@lists.infradead.org; Wed, 23 Nov 2011 21:12:33 +0000
Received: by bkat2 with SMTP id t2so2163865bka.36
 for <barebox@lists.infradead.org>; Wed, 23 Nov 2011 13:12:29 -0800 (PST)
From: franck.jullien@gmail.com
Date: Wed, 23 Nov 2011 22:12:24 +0100
Message-Id: <1322082748-17409-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 0/4] Add MCI over SPI support
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

This series adds MCI over SPI support to barebox.

It also makes small changes to nios2 in order to get
this thing to works. As a matter of fact, SPI master
drivers needs to support cs_change is you want to use
MCI over SPI.

Franck Jullien (4):
  crypto: Add crc7 function
  mci: Add MCI over SPI support
  nios2: Include asm/unaligned.h
  spi/altera_spi: Add cs_change support

 arch/nios2/include/asm/spi.h       |    1 +
 arch/nios2/include/asm/unaligned.h |   15 ++
 crypto/Kconfig                     |    3 +
 crypto/Makefile                    |    1 +
 crypto/crc7.c                      |   63 ++++++
 drivers/mci/Kconfig                |   17 ++
 drivers/mci/Makefile               |    1 +
 drivers/mci/mci-core.c             |   67 +++++--
 drivers/mci/mci_spi.c              |  431 ++++++++++++++++++++++++++++++++++++
 drivers/spi/altera_spi.c           |   27 +++-
 include/crc7.h                     |   14 ++
 include/mci.h                      |   14 ++
 12 files changed, 637 insertions(+), 17 deletions(-)
 create mode 100644 arch/nios2/include/asm/unaligned.h
 create mode 100644 crypto/crc7.c
 create mode 100644 drivers/mci/mci_spi.c
 create mode 100644 include/crc7.h

-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
