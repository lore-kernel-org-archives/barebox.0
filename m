Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLqSp-000240-JI
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 07:12:20 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TLqSn-0005nU-Tq
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:12:17 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TLqSn-0004nR-Sm
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 09:12:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Oct 2012 09:12:14 +0200
Message-Id: <1349853136-18371-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] support multiple ARM architectures
To: barebox@lists.infradead.org

The following series is for supporting multiple ARM architectures
at runtime. We detect the architecture and select the cache functions
accordingly.

----------------------------------------------------------------
Sascha Hauer (2):
      ARM: Add cpu_architecture() function
      ARM: Support multiple ARM architectures

 arch/arm/cpu/Makefile              |    3 +-
 arch/arm/cpu/cache-armv4.S         |   28 +++++-----
 arch/arm/cpu/cache-armv5.S         |   30 +++++------
 arch/arm/cpu/cache-armv6.S         |   34 ++++++------
 arch/arm/cpu/cache-armv7.S         |   36 ++++++-------
 arch/arm/cpu/cache.c               |  103 ++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/cpu.c                 |   47 ++++++++++++++++
 arch/arm/cpu/mmu.c                 |   28 +++++++---
 arch/arm/include/asm/cache.h       |    2 +
 arch/arm/include/asm/cputype.h     |  100 ++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/system_info.h |   60 +++++++++++++++++++++
 11 files changed, 399 insertions(+), 72 deletions(-)
 create mode 100644 arch/arm/cpu/cache.c
 create mode 100644 arch/arm/include/asm/cputype.h
 create mode 100644 arch/arm/include/asm/system_info.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
