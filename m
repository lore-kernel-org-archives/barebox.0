Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEtD7-0006FX-RJ
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 10:15:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Apr 2019 12:14:55 +0200
Message-Id: <20190412101502.11904-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/7] Add support for encrypted blobs
To: Barebox List <barebox@lists.infradead.org>

This series adds support for encrypting data blobs and storing them in
environment variables. This blobs are encrypted using the CAAM on i.MX6
and the SCC engine on i.MX25. The keys used are tied to the hardware and
are only visible to the crypto engines and only in secure booting mode,
so ideally suited for storing secrets in a trusted environment.

Primary usage is anticipated mainly from C code, but there's also a
"blobgen" command which can be used to en/decrypt messages:

# blobgen -e -m user:foo -V encrypted "Hello Sascha"
# echo $encrypted
A0YHeGTElYQMsUfT7mtL6zow9i32XIGBkG5hBKryWFVbxtHz+3Rb9I+a/mPsNslV9ImlVVG2M/n3j9AP
# blobgen -d -m user:foo -V message $encrypted
# echo $message
Hello Sascha

Sascha

Sascha Hauer (1):
  crypto/caam: Add missing include

Steffen Trumtrar (6):
  lib: add base64 helpers
  include: crypto: import des.h from kernel
  include: crypto: import ablkcipher struct from kernel
  lib: add blobgen framework
  crypto: add new imx-scc driver
  crypto: caam: add blobgen driver

 commands/Kconfig                     |  10 +
 commands/Makefile                    |   1 +
 commands/blobgen.c                   | 122 +++++++
 drivers/crypto/Kconfig               |   1 +
 drivers/crypto/Makefile              |   1 +
 drivers/crypto/caam/Makefile         |   1 +
 drivers/crypto/caam/caam-blobgen.c   | 229 ++++++++++++
 drivers/crypto/caam/ctrl.c           |   9 +
 drivers/crypto/caam/intern.h         |   1 +
 drivers/crypto/caam/rng_self_test.c  |   1 +
 drivers/crypto/imx-scc/Kconfig       |  14 +
 drivers/crypto/imx-scc/Makefile      |   2 +
 drivers/crypto/imx-scc/scc-blobgen.c | 159 +++++++++
 drivers/crypto/imx-scc/scc.c         | 504 +++++++++++++++++++++++++++
 drivers/crypto/imx-scc/scc.h         |  13 +
 include/base64.h                     |   9 +
 include/blobgen.h                    |  58 +++
 include/crypto.h                     |  27 ++
 include/crypto/des.h                 |  16 +
 lib/Kconfig                          |   6 +
 lib/Makefile                         |   2 +
 lib/base64.c                         | 154 ++++++++
 lib/blobgen.c                        | 223 ++++++++++++
 23 files changed, 1563 insertions(+)
 create mode 100644 commands/blobgen.c
 create mode 100644 drivers/crypto/caam/caam-blobgen.c
 create mode 100644 drivers/crypto/imx-scc/Kconfig
 create mode 100644 drivers/crypto/imx-scc/Makefile
 create mode 100644 drivers/crypto/imx-scc/scc-blobgen.c
 create mode 100644 drivers/crypto/imx-scc/scc.c
 create mode 100644 drivers/crypto/imx-scc/scc.h
 create mode 100644 include/base64.h
 create mode 100644 include/blobgen.h
 create mode 100644 include/crypto.h
 create mode 100644 include/crypto/des.h
 create mode 100644 lib/base64.c
 create mode 100644 lib/blobgen.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
