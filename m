Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jpZas-00069p-Rx
 for barebox@lists.infradead.org; Sun, 28 Jun 2020 15:51:48 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Sun, 28 Jun 2020 17:51:04 +0200
Message-Id: <20200628155108.29083-1-cleger@kalray.eu>
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
Subject: [PATCH v2 0/4] kvx: add elf bootm support
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

This serie adds support for elf bootm support on KVX architecture.
First patches are allowing to build elf support for KVX and then bootm
support is added to KVX.

Changes from v1 -> v2:
 - Remove D-cache invalidation
 - Reword first patch commit message

Clement Leger (4):
  common: bootm: allow building using undefined IH_ARCH
  common: Kconfig: remove MIPS dependency
  kvx: add I-cache and D-cache synchronisation
  kvx: add support for elf loading using bootm

 arch/kvx/Kconfig                   |   5 ++
 arch/kvx/configs/generic_defconfig |   3 +-
 arch/kvx/include/asm/bootm.h       |  11 +++
 arch/kvx/include/asm/cache.h       |  18 ++++
 arch/kvx/include/asm/elf.h         |   3 +
 arch/kvx/lib/Makefile              |   2 +-
 arch/kvx/lib/bootm.c               | 133 +++++++++++++++++++++++++++++
 common/Kconfig                     |   3 +-
 common/bootm.c                     |   2 +-
 include/image.h                    |   2 +
 10 files changed, 177 insertions(+), 5 deletions(-)
 create mode 100644 arch/kvx/include/asm/bootm.h
 create mode 100644 arch/kvx/include/asm/cache.h
 create mode 100644 arch/kvx/lib/bootm.c

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
