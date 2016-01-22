Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWDH-0003pi-6l
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:32:58 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aMWCv-00076W-DW
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 08:32:33 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1aMWCv-00082T-4Z
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 08:32:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jan 2016 08:32:18 +0100
Message-Id: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v4] FIT support
To: Barebox List <barebox@lists.infradead.org>

This is the fourth version of the FIT image support. Changes to last series
include:

Changes since v3:
- Add option to force booting signed images
- Add reference to U-Boot in RSA support commit message and file
- Add reference to U-Boot in FIT image support
- Write some more Kconfig doc

Changes since v2:
- Integrate FIT support more deeply into bootm remove complexity
  from the architecture handlers
- Cleanup bootm support
- Add support for configuration names as suggested by Yegor Yefremov
- Allow to boot unsigned FIT images

----------------------------------------------------------------
Jan Luebbe (1):
      bootm: add initial FIT support

Sascha Hauer (13):
      ARM: zImage: add missing free() in appended device tree code
      bootm: Do not call uimage_close twice
      bootm: introduce bootm_get_os_size
      bootm: use names instead of numbers for image parts
      ARM: bootm: Use kernel handler to start barebox image
      bootm: Push dryrun to handlers
      bootm: move initrd code together
      bootm: move oftree code together
      bootm: Initialize bootm_data defaults in single place
      crypto: add digest_alloc_by_algo()
      crypto: add RSA support
      bootm: make verifying/hashing configurable
      bootm: Add option to force booting signed images

 arch/arm/crypto/sha1_glue.c        |   1 +
 arch/arm/crypto/sha256_glue.c      |   2 +
 arch/arm/lib/bootm.c               |  52 ++--
 arch/arm/mach-omap/omap_generic.c  |   5 +
 arch/blackfin/lib/blackfin_linux.c |   3 +
 arch/efi/efi/efi-image.c           |   9 +-
 arch/mips/lib/bootm.c              |   5 +
 arch/nios2/lib/bootm.c             |   3 +
 arch/ppc/lib/ppclinux.c            |   3 +
 commands/Kconfig                   |  25 ++
 commands/boot.c                    |  14 +-
 commands/bootm.c                   |  46 +--
 common/Kconfig                     |   9 +
 common/Makefile                    |   1 +
 common/bootm.c                     | 482 ++++++++++++++++++------------
 common/image-fit.c                 | 584 +++++++++++++++++++++++++++++++++++++
 crypto/Kconfig                     |   3 +
 crypto/Makefile                    |   1 +
 crypto/digest.c                    |  43 ++-
 crypto/md5.c                       |   1 +
 crypto/rsa.c                       | 422 +++++++++++++++++++++++++++
 crypto/sha1.c                      |   1 +
 crypto/sha2.c                      |   2 +
 crypto/sha4.c                      |   2 +
 include/asm-generic/errno.h        |   5 +
 include/boot.h                     |  28 +-
 include/digest.h                   |  23 ++
 include/image-fit.h                |  45 +++
 include/rsa.h                      |  54 ++++
 29 files changed, 1599 insertions(+), 275 deletions(-)
 create mode 100644 common/image-fit.c
 create mode 100644 crypto/rsa.c
 create mode 100644 include/image-fit.h
 create mode 100644 include/rsa.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
