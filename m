Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1coO1G-00034R-CN
 for barebox@lists.infradead.org; Thu, 16 Mar 2017 05:32:18 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 16 Mar 2017 06:31:43 +0100
Message-Id: <20170316053146.5954-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 0/3] upstream hwrng framework
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v1:
 - initial version

changes v2:
 - drop Freescale RNGC for now. It need more testing
 - add caamrng port
 - fix hwrng_init()
 - fix hwrng_get_first check in get_random_bytes

Oleksij Rempel (1):
  camrng: port to hwrng framework

Steffen Trumtrar (2):
  drivers: add simple hw_random implementation
  lib: random: get_random_bytes from HWRNG if present

 drivers/Kconfig               |   1 +
 drivers/Makefile              |   1 +
 drivers/crypto/caam/Kconfig   |   1 +
 drivers/crypto/caam/caamrng.c |  40 +++++-----------
 drivers/hw_random/Kconfig     |   6 +++
 drivers/hw_random/Makefile    |   1 +
 drivers/hw_random/core.c      | 108 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/hw_random.h     |  43 +++++++++++++++++
 lib/random.c                  |  19 ++++++++
 9 files changed, 192 insertions(+), 28 deletions(-)
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
