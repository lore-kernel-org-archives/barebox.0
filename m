Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dpbZM-00023A-T3
 for barebox@lists.infradead.org; Wed, 06 Sep 2017 14:44:47 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed,  6 Sep 2017 16:44:06 +0200
Message-Id: <20170906144410.525-1-linux@rempel-privat.de>
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
Subject: [PATCH 0/4] privide ns16550 support for AR9344
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

changes:
v3:
 - fix compile for ppc, arm and sandbox.

v2:
 - fix compile if OF is not set.
 - fix compile for x86

Oleksij Rempel (4):
  of: base: port of_device_is_big_endian from linux
  asm-generic: partially sync io.h with linux kernel
  x86: asm: include asm-generic.h
  serial: ns16550: provide big-endian support

 arch/arm/include/asm/io.h       |   4 +-
 arch/ppc/include/asm/io.h       |   2 +
 arch/sandbox/include/asm/io.h   |   3 +-
 arch/x86/include/asm/io.h       |  15 +++
 drivers/of/base.c               |  23 ++++
 drivers/serial/serial_ns16550.c |  19 +++-
 include/asm-generic/io.h        | 245 +++++++++++++++++++++++++++++++++++-----
 include/of.h                    |   6 +
 8 files changed, 284 insertions(+), 33 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
