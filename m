Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X7KjA-0000lm-NH
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 08:38:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1X7Kio-0007hC-Go
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 10:37:54 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1X7Kio-0003DE-Ff
 for barebox@lists.infradead.org; Wed, 16 Jul 2014 10:37:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 Jul 2014 10:37:49 +0200
Message-Id: <1405499873-6385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bitops updates
To: barebox@lists.infradead.org

This cleans up the architecture specific arch/*/include/asm/bitops.h
files. We have many variants of the same file in the tree, many
missing some includes or defines. With this series we consistently
use the same version.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      X86: Move BITS_PER_LONG definition to types.h
      consistently use the same bitops.h file
      ppc: Use generic find_*_bit functions
      ppc: Add missing __ffs implementation

 arch/blackfin/Kconfig              |   1 +
 arch/blackfin/include/asm/bitops.h | 361 ++-----------------------------------
 arch/mips/include/asm/bitops.h     |  26 +--
 arch/nios2/Kconfig                 |   1 +
 arch/nios2/include/asm/bitops.h    |  32 +++-
 arch/openrisc/Kconfig              |   1 +
 arch/openrisc/include/asm/bitops.h |  29 ++-
 arch/ppc/Kconfig                   |   1 +
 arch/ppc/include/asm/bitops.h      |  49 +----
 arch/sandbox/include/asm/bitops.h  |  25 ++-
 arch/x86/include/asm/bitops.h      |  32 ++--
 arch/x86/include/asm/types.h       |   2 +
 12 files changed, 128 insertions(+), 432 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
