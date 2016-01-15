Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aK5yX-0002Yw-AN
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 15:07:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1aK5yB-0001f4-Nt
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 16:07:19 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1aK5yB-0003Gk-GF
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 16:07:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jan 2016 16:07:05 +0100
Message-Id: <1452870438-29656-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v3] FIT support
To: Barebox List <barebox@lists.infradead.org>

This is the third version of the FIT image support. Changes
to last series include:

- Integrate FIT support more deeply into bootm remove complexity
  from the architecture handlers
- Cleanup bootm support
- Add support for configuration names as suggested by Yegor Yefremov
- Allow to boot unsigned FIT images

It's time for a weekend now, so I send out what I have now. This series
could use some more testing before it gets merged, so I'll do that next
week before merging it. In the meantime everyone else is invited for
testing aswell ;)

Sascha

----------------------------------------------------------------
Jan Luebbe (1):
      bootm: add initial FIT support

Sascha Hauer (12):
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

 arch/arm/crypto/sha1_glue.c        |   1 +
 arch/arm/crypto/sha256_glue.c      |   2 +
 arch/arm/lib/bootm.c               |  52 ++--
 arch/arm/mach-omap/omap_generic.c  |   5 +
 arch/blackfin/lib/blackfin_linux.c |   3 +
 arch/efi/efi/efi-image.c           |   9 +-
 arch/mips/lib/bootm.c              |   5 +
 arch/nios2/lib/bootm.c             |   3 +
 arch/ppc/lib/ppclinux.c            |   3 +
 commands/Kconfig                   |  22 ++
 commands/boot.c                    |  14 +-
 commands/bootm.c                   |  46 +--
 common/Kconfig                     |   9 +
 common/Makefile                    |   1 +
 common/bootm.c                     | 469 +++++++++++++++++-------------
 common/image-fit.c                 | 581 +++++++++++++++++++++++++++++++++++++
 crypto/Kconfig                     |   3 +
 crypto/Makefile                    |   1 +
 crypto/digest.c                    |  43 ++-
 crypto/md5.c                       |   1 +
 crypto/rsa.c                       | 420 +++++++++++++++++++++++++++
 crypto/sha1.c                      |   1 +
 crypto/sha2.c                      |   2 +
 crypto/sha4.c                      |   2 +
 include/asm-generic/errno.h        |   5 +
 include/boot.h                     |  28 +-
 include/digest.h                   |  23 ++
 include/image-fit.h                |  45 +++
 include/rsa.h                      |  54 ++++
 29 files changed, 1575 insertions(+), 278 deletions(-)
 create mode 100644 common/image-fit.c
 create mode 100644 crypto/rsa.c
 create mode 100644 include/image-fit.h
 create mode 100644 include/rsa.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
