Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMGfq-0000Qk-GT
 for barebox@lists.infradead.org; Thu, 21 Jan 2016 14:57:23 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 21 Jan 2016 15:55:48 +0100
Message-Id: <1453388151-8424-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 0/3] i.MX6: CAAM engine support
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Hi!

This series adds basic support for the i.MX6
Cryptographic Acceleration and Assurance Module (CAAM).

- see notes in 2/3 for what changed in the caam driver.
- 3/3 was not included in v1 of the series.

Regards,
Steffen

Steffen Trumtrar (3):
  include: linux: add circular buffers
  crypto: add i.MX6 CAAM support
  crypto: caam: add RNG support

 drivers/Kconfig                   |    1 +
 drivers/Makefile                  |    1 +
 drivers/crypto/Kconfig            |   10 +
 drivers/crypto/Makefile           |    1 +
 drivers/crypto/caam/Kconfig       |   44 +
 drivers/crypto/caam/Makefile      |    6 +
 drivers/crypto/caam/caamrng.c     |  313 +++++++
 drivers/crypto/caam/ctrl.c        |  659 +++++++++++++++
 drivers/crypto/caam/ctrl.h        |   13 +
 drivers/crypto/caam/desc.h        | 1665 +++++++++++++++++++++++++++++++++++++
 drivers/crypto/caam/desc_constr.h |  390 +++++++++
 drivers/crypto/caam/error.c       |  257 ++++++
 drivers/crypto/caam/error.h       |   11 +
 drivers/crypto/caam/intern.h      |   99 +++
 drivers/crypto/caam/jr.c          |  355 ++++++++
 drivers/crypto/caam/jr.h          |   18 +
 drivers/crypto/caam/regs.h        |  895 ++++++++++++++++++++
 include/linux/circ_buf.h          |   36 +
 18 files changed, 4774 insertions(+)
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
