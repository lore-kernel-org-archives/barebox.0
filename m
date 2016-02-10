Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTSbG-0000vq-UH
 for barebox@lists.infradead.org; Wed, 10 Feb 2016 11:06:25 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 10 Feb 2016 12:05:50 +0100
Message-Id: <1455102355-26102-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 0/5] i.MX6: CAAM engine support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

This series adds basic support for the i.MX6
Cryptographic Acceleration and Assurance Module (CAAM).

The CAAM supports multiple hashing/encryption engines,
this series only supports the included hardware random
number generator.

Tested with a riotboard.

Regards,
Steffen

Steffen Trumtrar (5):
  include: linux: add circular buffers
  ARM: imx6: add caam clks
  crypto: add i.MX6 CAAM support
  crypto: caam: add RNG support
  ARM: i.MX6: riotboard: enable CAAM RNG

 arch/arm/dts/imx6s-riotboard.dts  |    4 +
 arch/arm/mach-imx/clk-imx6.c      |    4 +
 drivers/Kconfig                   |    1 +
 drivers/Makefile                  |    1 +
 drivers/crypto/Kconfig            |   10 +
 drivers/crypto/Makefile           |    1 +
 drivers/crypto/caam/Kconfig       |   44 +
 drivers/crypto/caam/Makefile      |    6 +
 drivers/crypto/caam/caamrng.c     |  319 +++++++
 drivers/crypto/caam/ctrl.c        |  651 +++++++++++++++
 drivers/crypto/caam/ctrl.h        |   13 +
 drivers/crypto/caam/desc.h        | 1665 +++++++++++++++++++++++++++++++++++++
 drivers/crypto/caam/desc_constr.h |  390 +++++++++
 drivers/crypto/caam/error.c       |  257 ++++++
 drivers/crypto/caam/error.h       |   11 +
 drivers/crypto/caam/intern.h      |   99 +++
 drivers/crypto/caam/jr.c          |  364 ++++++++
 drivers/crypto/caam/jr.h          |   18 +
 drivers/crypto/caam/regs.h        |  895 ++++++++++++++++++++
 include/linux/circ_buf.h          |   36 +
 20 files changed, 4789 insertions(+)
 create mode 100644 drivers/crypto/Kconfig
 create mode 100644 drivers/crypto/Makefile
 create mode 100644 drivers/crypto/caam/Kconfig
 create mode 100644 drivers/crypto/caam/Makefile
 create mode 100644 drivers/crypto/caam/caamrng.c
 create mode 100644 drivers/crypto/caam/ctrl.c
 create mode 100644 drivers/crypto/caam/ctrl.h
 create mode 100644 drivers/crypto/caam/desc.h
 create mode 100644 drivers/crypto/caam/desc_constr.h
 create mode 100644 drivers/crypto/caam/error.c
 create mode 100644 drivers/crypto/caam/error.h
 create mode 100644 drivers/crypto/caam/intern.h
 create mode 100644 drivers/crypto/caam/jr.c
 create mode 100644 drivers/crypto/caam/jr.h
 create mode 100644 drivers/crypto/caam/regs.h
 create mode 100644 include/linux/circ_buf.h

-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
