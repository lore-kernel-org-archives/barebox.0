Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo69.mail-out.ovh.net ([46.105.73.241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YaOSL-0005F9-NW
 for barebox@lists.infradead.org; Tue, 24 Mar 2015 13:01:21 +0000
Received: from mail182.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 59BC41004151
 for <barebox@lists.infradead.org>; Tue, 24 Mar 2015 14:00:53 +0100 (CET)
Date: Tue, 24 Mar 2015 14:00:35 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150324130035.GB8125@ns203013.ovh.net>
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
Subject: [PATCH 0/7 v2] digest: allow multiple implementation of digest
To: barebox@lists.infradead.org

Hi,

	The following serie allow you to have multiple driver for
	the digest.

	This also switch the sha1 implementation to the kernel one and
	add the armv4 asm implementtion that save nearly 6KiB in a zbarebox
	lzo.


v2:
	switch sha256 and sha512 to linux implementation
	add arm sha256 asm implementation

The following changes since commit 52d4a0321405b7525422f04fffbe7f318c9c5a88:

  Merge branch 'for-next/state' into next (2015-03-19 07:55:59 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/sha1

for you to fetch changes up to 6bebe62f4b828f0b85334b8a8a189e8a84864935:

  arm: crypto: add sha256 assembly support (2015-03-24 17:18:55 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      command: digest: only set the key when specified
      crypto: prepare to allow multiple digest driver
      crypto: sha1: switch to linux implementation
      crypto: sha256: switch to linux implementation
      crypto: sha512: switch to linux implementation
      arm: crypto: add sha1 assembly support
      arm: crypto: add sha256 assembly support

 arch/arm/Makefile                               |    1 +
 arch/arm/configs/at91rm9200ek_defconfig         |    4 +-
 arch/arm/configs/highbank_defconfig             |    4 +-
 arch/arm/configs/mioa701_defconfig              |    2 +-
 arch/arm/configs/module-mb7707_defconfig        |    4 +-
 arch/arm/configs/nhk8815_defconfig              |    2 +-
 arch/arm/configs/phytec-phycard-omap3_defconfig |    6 +-
 arch/arm/configs/rpi_defconfig                  |    4 +-
 arch/arm/configs/versatilepb_arm1176_defconfig  |    4 +-
 arch/arm/configs/versatilepb_defconfig          |    4 +-
 arch/arm/configs/vexpress_ca9_defconfig         |    4 +-
 arch/arm/configs/vexpress_defconfig             |    4 +-
 arch/arm/configs/virt2real_defconfig            |    4 +-
 arch/arm/configs/zylonite310_defconfig          |    2 +-
 arch/arm/crypto/Makefile                        |   17 +
 arch/arm/crypto/sha1-armv4-large.S              |  497 ++++++++++++++++++++++++++++++
 arch/arm/crypto/sha1_glue.c                     |  143 +++++++++
 arch/arm/crypto/sha256-armv4.pl                 |  713 ++++++++++++++++++++++++++++++++++++++++++
 arch/arm/crypto/sha256-core.S_shipped           | 2775 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/crypto/sha256_glue.c                   |  231 ++++++++++++++
 arch/arm/crypto/sha256_glue.h                   |   23 ++
 arch/mips/configs/img-ci20_defconfig            |    6 +-
 arch/mips/configs/ritmix-rzx50_defconfig        |    6 +-
 arch/mips/configs/tplink-mr3020_defconfig       |    4 +-
 commands/digest.c                               |   10 +-
 crypto/Kconfig                                  |   56 +++-
 crypto/Makefile                                 |   14 +-
 crypto/digest.c                                 |   31 +-
 crypto/hmac.c                                   |   16 +-
 crypto/md5.c                                    |    9 +-
 crypto/sha1.c                                   |  531 +++++++++++++++----------------
 crypto/sha2.c                                   |  577 +++++++++++++++++-----------------
 crypto/sha4.c                                   |  479 +++++++++++++---------------
 {crypto => include/crypto}/internal.h           |    0
 include/crypto/sha.h                            |   95 ++++++
 include/digest.h                                |   17 +-
 36 files changed, 5406 insertions(+), 893 deletions(-)
 create mode 100644 arch/arm/crypto/Makefile
 create mode 100644 arch/arm/crypto/sha1-armv4-large.S
 create mode 100644 arch/arm/crypto/sha1_glue.c
 create mode 100644 arch/arm/crypto/sha256-armv4.pl
 create mode 100644 arch/arm/crypto/sha256-core.S_shipped
 create mode 100644 arch/arm/crypto/sha256_glue.c
 create mode 100644 arch/arm/crypto/sha256_glue.h
 rename {crypto => include/crypto}/internal.h (100%)
 create mode 100644 include/crypto/sha.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
