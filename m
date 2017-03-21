Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqG1r-0006LU-Qs
 for barebox@lists.infradead.org; Tue, 21 Mar 2017 09:24:37 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 21 Mar 2017 10:24:04 +0100
Message-Id: <20170321092411.8844-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v4 0/7] upstream hwrng framework
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v1:
 - initial version

changes v2:
 - drop Freescale RNGC for now. It need more testing
 - add caamrng port
 - fix hwrng_init()
 - fix hwrng_get_first check in get_random_bytes

changes v3:
 - check if hwrng_get_data returns error
 - provide /dev/randomdd random device

changes v4:
 - provide get_crypto_bytes() interface.
 - add CONFIG_ALLOW_PRNG_FALLBACK
 - make cmd_password use get_crypto_bytes
 - add cmd_seed

Oleksij Rempel (5):
  caamrng: port to hwrng framework
  fs: add prng device
  crypto: caam - fix RNG buffer cache alignment
  common: password: make use of get_crypto_bytes
  add seed command

Steffen Trumtrar (2):
  drivers: add simple hw_random implementation
  lib: random: get_random_bytes from HWRNG if present

 commands/Kconfig              |   6 +++
 commands/Makefile             |   1 +
 commands/seed.c               |  48 +++++++++++++++++++
 commands/stddev.c             |  29 ++++++++++++
 common/password.c             |   6 ++-
 drivers/Kconfig               |   1 +
 drivers/Makefile              |   1 +
 drivers/crypto/caam/Kconfig   |   1 +
 drivers/crypto/caam/caamrng.c |  44 ++++++-----------
 drivers/hw_random/Kconfig     |   6 +++
 drivers/hw_random/Makefile    |   1 +
 drivers/hw_random/core.c      | 108 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/hw_random.h     |  43 +++++++++++++++++
 include/stdlib.h              |   1 +
 lib/Kconfig                   |   9 ++++
 lib/random.c                  |  58 +++++++++++++++++++++++
 16 files changed, 333 insertions(+), 30 deletions(-)
 create mode 100644 commands/seed.c
 create mode 100644 drivers/hw_random/Kconfig
 create mode 100644 drivers/hw_random/Makefile
 create mode 100644 drivers/hw_random/core.c
 create mode 100644 include/linux/hw_random.h

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
