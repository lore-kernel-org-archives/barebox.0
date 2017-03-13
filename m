Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnN87-0001GA-SW
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 10:23:10 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 13 Mar 2017 11:22:05 +0100
Message-Id: <20170313102207.30590-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 0/2] upstream nvmem patches
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v1:
 - rebase against 2017.03.0

Steffen Trumtrar (2):
  drivers: add nvmem framework from kernel
  nvmem: add simple nvstore driver

 drivers/Kconfig                |   1 +
 drivers/Makefile               |   1 +
 drivers/nvmem/Kconfig          |  16 +
 drivers/nvmem/Makefile         |  10 +
 drivers/nvmem/core.c           | 750 +++++++++++++++++++++++++++++++++++++++++
 drivers/nvmem/nvstore.c        | 142 ++++++++
 include/linux/nvmem-consumer.h | 157 +++++++++
 include/linux/nvmem-provider.h |  58 ++++
 8 files changed, 1135 insertions(+)
 create mode 100644 drivers/nvmem/Kconfig
 create mode 100644 drivers/nvmem/Makefile
 create mode 100644 drivers/nvmem/core.c
 create mode 100644 drivers/nvmem/nvstore.c
 create mode 100644 include/linux/nvmem-consumer.h
 create mode 100644 include/linux/nvmem-provider.h

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
