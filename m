Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YaKxf-0001hO-7b
 for barebox@lists.infradead.org; Tue, 24 Mar 2015 09:17:24 +0000
Received: from mail177.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 95BEC1004AA7
 for <barebox@lists.infradead.org>; Tue, 24 Mar 2015 10:16:58 +0100 (CET)
Date: Tue, 24 Mar 2015 10:16:55 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150324091655.GA8125@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH 0/4] digest: allow multiple implementation of digest
To: barebox@lists.infradead.org

Hi,

	The following serie allow you to have multiple driver for
	the digest.

	This also switch the sha1 implementation to the kernel one and
	add the armv4 asm implementtion that save nearly 3KiB in a zbarebox
	lzo.

	I'll switch the sha256 and sha512 too with asm implementation too in a
	second patch series

The following changes since commit 52d4a0321405b7525422f04fffbe7f318c9c5a88:

  Merge branch 'for-next/state' into next (2015-03-19 07:55:59 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/sha1

for you to fetch changes up to 79a37f347de86825144b2b3fea9e4aab06b3c71e:

  arm: crypto: add sha1 assembly support (2015-03-24 13:29:55 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      command: digest: only set the key when specified
      crypto: prepare to allow multiple digest driver
      crypto: sha1: switch to linux implementation
      arm: crypto: add sha1 assembly support

 arch/arm/Makefile                               |   1 +
 arch/arm/configs/at91rm9200ek_defconfig         |   4 +-
 arch/arm/configs/highbank_defconfig             |   4 +-
 arch/arm/configs/mioa701_defconfig              |   2 +-
 arch/arm/configs/module-mb7707_defconfig        |   4 +-
 arch/arm/configs/nhk8815_defconfig              |   2 +-
 arch/arm/configs/phytec-phycard-omap3_defconfig |   6 +-
 arch/arm/configs/rpi_defconfig                  |   4 +-
 arch/arm/configs/versatilepb_arm1176_defconfig  |   4 +-
 arch/arm/configs/versatilepb_defconfig          |   4 +-
 arch/arm/configs/vexpress_ca9_defconfig         |   4 +-
 arch/arm/configs/vexpress_defconfig             |   4 +-
 arch/arm/configs/virt2real_defconfig            |   4 +-
 arch/arm/configs/zylonite310_defconfig          |   2 +-
 arch/arm/crypto/Makefile                        |   7 +++
 arch/arm/crypto/sha1-armv4-large.S              | 497 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/crypto/sha1_glue.c                     | 137 +++++++++++++++++++++++++++++++++++++++++++
 arch/mips/configs/img-ci20_defconfig            |   6 +-
 arch/mips/configs/ritmix-rzx50_defconfig        |   6 +-
 arch/mips/configs/tplink-mr3020_defconfig       |   4 +-
 commands/digest.c                               |  10 ++--
 crypto/Kconfig                                  |  48 ++++++++++++++--
 crypto/Makefile                                 |  14 ++---
 crypto/digest.c                                 |  31 ++++++----
 crypto/hmac.c                                   |  15 +++--
 crypto/md5.c                                    |   9 ++-
 crypto/sha1.c                                   | 521 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------------------------------------------------------------------------------------
 crypto/sha2.c                                   |  17 ++++--
 crypto/sha4.c                                   |  17 ++++--
 {crypto => include/crypto}/internal.h           |   0
 include/crypto/sha.h                            |  95 ++++++++++++++++++++++++++++++
 include/digest.h                                |  17 +++++-
 32 files changed, 1148 insertions(+), 352 deletions(-)
 create mode 100644 arch/arm/crypto/Makefile
 create mode 100644 arch/arm/crypto/sha1-armv4-large.S
 create mode 100644 arch/arm/crypto/sha1_glue.c
 rename {crypto => include/crypto}/internal.h (100%)
 create mode 100644 include/crypto/sha.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
