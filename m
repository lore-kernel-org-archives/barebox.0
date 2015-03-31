Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YcyHK-0004P1-3A
 for barebox@lists.infradead.org; Tue, 31 Mar 2015 15:40:35 +0000
Received: by lbbug6 with SMTP id ug6so15479644lbb.3
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2015 08:40:09 -0700 (PDT)
Date: Tue, 31 Mar 2015 18:44:28 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150331184428.cf4d380d942268a64a0fc0e4@gmail.com>
In-Reply-To: <20150325115140.GD8125@ns203013.ovh.net>
References: <20150325115140.GD8125@ns203013.ovh.net>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/9 v3] digest: allow multiple implementation of digest
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, 25 Mar 2015 12:51:40 +0100
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

Hmmm.

This new digest implementation have some Kconfig inconsistency.

E.g. I can configure barebox like this:

  CONFIG_CMD_SHA1SUM=3Dy
  ...
  CONFIG_SHA1=3Dy
  # CONFIG_DIGEST_MD5_GENERIC is not set
  # CONFIG_DIGEST_SHA1_GENERIC is not set
  # CONFIG_DIGEST_SHA224_GENERIC is not set
  # CONFIG_DIGEST_SHA256_GENERIC is not set
  # CONFIG_DIGEST_SHA384_GENERIC is not set
  # CONFIG_DIGEST_SHA512_GENERIC is not set
  # CONFIG_DIGEST_HMAC_GENERIC is not set

And here is BUG log for this configuration:

  barebox:/ sha1sum foobar
  BUG: failure at commands/hashsum.c:61/do_hash()!
  BUG!
  no stack data available

Could we tune Kconfig somehow (e.g. add addition dependencies) to prevent s=
ituations like this?


> Hi,
> =

> 	The following serie allow you to have multiple driver for
> 	the digest.
> =

> 	This also switch the sha1 implementation to the kernel one and
> 	add the armv4 asm implementtion that save nearly 6KiB in a zbarebox
> 	lzo.
> =

> =

> v2:
> 	switch sha256 and sha512 to linux implementation
> 	add arm sha256 asm implementation
> =

> v3:
> 	Fix sha256 for armv4 in a better way as discussed on ARM ML
> 	Only register the generic hmac one time per sha algo, as we will
> 	use the best sha algo at runtime
> =

> The following changes since commit 52d4a0321405b7525422f04fffbe7f318c9c5a=
88:
> =

>   Merge branch 'for-next/state' into next (2015-03-19 07:55:59 +0100)
> =

> are available in the git repository at:
> =

>   git://git.jcrosoft.org/barebox.git delivery/sha1
> =

> for you to fetch changes up to 141ffeabaf852f6c11c7aad9c18b1e017578b56a:
> =

>   arm: crypto: add sha256 assembly support (2015-03-25 19:50:36 +0800)
> =

> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (9):
>       command: digest/hashsum: set key command level
>       digest: allow algo to specify their length at runtime
>       crypto: prepare to allow multiple digest driver
>       crypto: hmac: move register to hmac
>       crypto: sha1: switch to linux implementation
>       crypto: sha256: switch to linux implementation
>       crypto: sha512: switch to linux implementation
>       arm: crypto: add sha1 assembly support
>       arm: crypto: add sha256 assembly support
> =

>  arch/arm/Makefile                               |    1 +
>  arch/arm/configs/at91rm9200ek_defconfig         |    4 +-
>  arch/arm/configs/highbank_defconfig             |    4 +-
>  arch/arm/configs/mioa701_defconfig              |    2 +-
>  arch/arm/configs/module-mb7707_defconfig        |    4 +-
>  arch/arm/configs/nhk8815_defconfig              |    2 +-
>  arch/arm/configs/phytec-phycard-omap3_defconfig |    6 +-
>  arch/arm/configs/rpi_defconfig                  |    4 +-
>  arch/arm/configs/versatilepb_arm1176_defconfig  |    4 +-
>  arch/arm/configs/versatilepb_defconfig          |    4 +-
>  arch/arm/configs/vexpress_ca9_defconfig         |    4 +-
>  arch/arm/configs/vexpress_defconfig             |    4 +-
>  arch/arm/configs/virt2real_defconfig            |    4 +-
>  arch/arm/configs/zylonite310_defconfig          |    2 +-
>  arch/arm/crypto/Makefile                        |   17 +
>  arch/arm/crypto/sha1-armv4-large.S              |  497 +++++++++++++++++=
++++++++++++
>  arch/arm/crypto/sha1_glue.c                     |  137 ++++++++
>  arch/arm/crypto/sha256-armv4.pl                 |  717 +++++++++++++++++=
+++++++++++++++++++++++++
>  arch/arm/crypto/sha256-core.S_shipped           | 2779 +++++++++++++++++=
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/crypto/sha256_glue.c                   |  213 +++++++++++++
>  arch/arm/crypto/sha256_glue.h                   |   23 ++
>  arch/mips/configs/img-ci20_defconfig            |    6 +-
>  arch/mips/configs/ritmix-rzx50_defconfig        |    6 +-
>  arch/mips/configs/tplink-mr3020_defconfig       |    4 +-
>  commands/digest.c                               |   27 +-
>  commands/hashsum.c                              |   10 +-
>  commands/internal.h                             |    3 +-
>  crypto/Kconfig                                  |   57 +++-
>  crypto/Makefile                                 |   14 +-
>  crypto/digest.c                                 |   32 +-
>  crypto/hmac.c                                   |   58 +++-
>  crypto/md5.c                                    |   17 +-
>  crypto/sha1.c                                   |  539 +++++++++++++++--=
---------------
>  crypto/sha2.c                                   |  593 +++++++++++++++++=
+-----------------
>  crypto/sha4.c                                   |  495 +++++++++++++----=
------------
>  include/asm-generic/barebox.lds.h               |    3 +-
>  {crypto =3D> include/crypto}/internal.h           |   10 -
>  include/crypto/sha.h                            |   95 ++++++
>  include/digest.h                                |   20 +-
>  include/init.h                                  |    3 +-
>  40 files changed, 5446 insertions(+), 978 deletions(-)
>  create mode 100644 arch/arm/crypto/Makefile
>  create mode 100644 arch/arm/crypto/sha1-armv4-large.S
>  create mode 100644 arch/arm/crypto/sha1_glue.c
>  create mode 100644 arch/arm/crypto/sha256-armv4.pl
>  create mode 100644 arch/arm/crypto/sha256-core.S_shipped
>  create mode 100644 arch/arm/crypto/sha256_glue.c
>  create mode 100644 arch/arm/crypto/sha256_glue.h
>  rename {crypto =3D> include/crypto}/internal.h (53%)
>  create mode 100644 include/crypto/sha.h
> =

> Best Regards,
> J.
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
