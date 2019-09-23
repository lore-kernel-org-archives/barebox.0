Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCL49-0000D4-2T
 for barebox@lists.infradead.org; Mon, 23 Sep 2019 09:55:35 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 23 Sep 2019 11:55:24 +0200
Message-Id: <20190923095527.29174-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 0/3] remoteproc for barebox
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v3:
- rebase against latest barebox version
- remove [PATCH v2 1/4] add syscon_regmap_lookup_by_phandle() support

Oleksij Rempel (3):
  elf: add missing elf32_shdr
  of: base: don't try to read cells_name property if no cells_name set
  port reduced version of remoteproc framework from linux

 drivers/Kconfig                            |   1 +
 drivers/Makefile                           |   1 +
 drivers/of/base.c                          |   3 +-
 drivers/remoteproc/Kconfig                 |  26 ++
 drivers/remoteproc/Makefile                |   7 +
 drivers/remoteproc/imx_rproc.c             | 402 +++++++++++++++++++++
 drivers/remoteproc/remoteproc_core.c       | 166 +++++++++
 drivers/remoteproc/remoteproc_elf_loader.c |  88 +++++
 drivers/remoteproc/remoteproc_internal.h   |  30 ++
 include/elf.h                              |   2 +-
 include/linux/remoteproc.h                 |  51 +++
 11 files changed, 775 insertions(+), 2 deletions(-)
 create mode 100644 drivers/remoteproc/Kconfig
 create mode 100644 drivers/remoteproc/Makefile
 create mode 100644 drivers/remoteproc/imx_rproc.c
 create mode 100644 drivers/remoteproc/remoteproc_core.c
 create mode 100644 drivers/remoteproc/remoteproc_elf_loader.c
 create mode 100644 drivers/remoteproc/remoteproc_internal.h
 create mode 100644 include/linux/remoteproc.h

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
