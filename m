Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0ZBd-0004KX-Df
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 14:30:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 12 Aug 2012 16:30:28 +0200
Message-Id: <1344781832-17978-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: enable MMU in pbl
To: barebox@lists.infradead.org

The following enables the MMU during decompression which speeds up
things significantly.

Sascha

The following changes since commit 8711d5914ebd002f9be9f40a94864e0d3328235a:

  ARM pbl: generate zbarebox.map in $(obj) (2012-08-12 16:18:29 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git work/mmu

for you to fetch changes up to 7f57c5388cdfe7ffb88cb91e2150ecd8422f6841:

  create a common ARM flush_icache function (2012-08-12 16:28:56 +0200)

----------------------------------------------------------------
Sascha Hauer (4):
      ARM __mmu_cache_*: Do not clobber registers
      ARM MMU: call __mmu_cache_* as regular C functions
      ARM pbl: enable MMU during decompression
      create a common ARM flush_icache function

 arch/arm/cpu/Makefile        |    4 ++++
 arch/arm/cpu/cache-armv4.S   |    3 ++-
 arch/arm/cpu/cache-armv7.S   |    6 +++--
 arch/arm/cpu/mmu.c           |   25 +++++---------------
 arch/arm/cpu/mmu.h           |    8 +++++++
 arch/arm/cpu/start-pbl.c     |   52 ++++++++++++++++++++++++++++++++++++++----
 arch/arm/cpu/start.c         |    4 ++--
 arch/arm/include/asm/cache.h |    9 ++++++++
 8 files changed, 83 insertions(+), 28 deletions(-)
 create mode 100644 arch/arm/cpu/mmu.h
 create mode 100644 arch/arm/include/asm/cache.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
