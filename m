Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnohU-0000Ps-DW
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 19:35:26 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Tue, 23 Jun 2020 21:35:02 +0200
Message-Id: <20200623193506.13716-1-cleger@kalray.eu>
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
Subject: [PATCH 0/4] kvx: add elf bootm support
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

This serie adds support for elf bootm support on KVX architecture.
First patches are allowing to build elf support for KVX and then bootm
support is added to KVX.

Clement Leger (4):
  common: bootm: allow letting IH_ARCH undefined
  common: Kconfig: remove MIPS dependency
  kvx: add D-cache inval and I-cache sync
  kvx: add support for elf loading using bootm

 arch/kvx/Kconfig                   |   5 ++
 arch/kvx/configs/generic_defconfig |   3 +-
 arch/kvx/include/asm/bootm.h       |  11 +++
 arch/kvx/include/asm/cache.h       |  24 ++++++
 arch/kvx/include/asm/elf.h         |   3 +
 arch/kvx/lib/Makefile              |   2 +-
 arch/kvx/lib/bootm.c               | 134 +++++++++++++++++++++++++++++
 common/Kconfig                     |   3 +-
 common/bootm.c                     |   2 +-
 include/image.h                    |   2 +
 10 files changed, 184 insertions(+), 5 deletions(-)
 create mode 100644 arch/kvx/include/asm/bootm.h
 create mode 100644 arch/kvx/include/asm/cache.h
 create mode 100644 arch/kvx/lib/bootm.c

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
