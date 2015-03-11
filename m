Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo6.mail-out.ovh.net ([46.105.54.31])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVjqA-0003wv-9s
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 16:50:39 +0000
Received: from mail617.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 0759CFF91DB
 for <barebox@lists.infradead.org>; Wed, 11 Mar 2015 17:50:13 +0100 (CET)
Date: Wed, 11 Mar 2015 17:50:09 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150311165009.GP30554@ns203013.ovh.net>
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
Subject: [PATCH 0/8 v3] add sha384/sha512 and hmac support
To: barebox@lists.infradead.org

HI,

	this will allow to add later secure boot support

	This the first patch series of some mores

	To add
	 - AES with CBC and XTS
	 - RSA with AS1N and X509
	 - Key store support
	 - 2 customs software support
	 - 1 hardware secure boot support
	 - a generic API to handle secure boot
	   without specific user interaction

v2:

	switch hmac to a generic digest as hmac(%s) such as hamc(sha256)
	add set_key to algo to allow to pass the key

	RSA_SIGN will be intergrate in the same way

	for the command use -h to pass the key (similar to openssl)

v3:
	only calculate the key when set

	this will allow to speedup the reusing of the same secure digest
	needed for RSA & HMAC

The following changes since commit a1a5a212985053fac141975f6f6cd8e30051b401:

  Documentation: handle missing group declaration (2015-03-10 15:04:23 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/hmac

for you to fetch changes up to 119c74f24bc3832dc48169324e0a3fd384b50771:

  command: add hmac sum supportfor md5, sha1, sha224, sha256, sha384, sha512 (2015-03-11 22:36:42 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      digest: move digest.c to crypto
      digest: introduce digest_{init/update/final/length}
      digest: make it multi-instance
      crypto: add sha384 & sha512 support
      command: add sha384sum and sha512sum support
      password: add support for sha512
      digest: add HMAC support for md5, sha1, sha224, sha256, sha384, sha512
      command: add hmac sum supportfor md5, sha1, sha224, sha256, sha384, sha512

 commands/Kconfig            |  24 +++++++++++++
 commands/digest.c           |  81 ++++++++++++++++++++++++++++++++++++++----
 common/Kconfig              |   4 +++
 common/Makefile             |   1 -
 common/password.c           |  33 +++++++++--------
 crypto/Kconfig              |   9 +++++
 crypto/Makefile             |   4 +++
 {common => crypto}/digest.c |  77 ++++++++++++++++++++++++++++++++--------
 crypto/hmac.c               | 152 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 crypto/internal.h           |  15 ++++++++
 crypto/md5.c                |  42 ++++++++++------------
 crypto/sha1.c               |  42 ++++++++++------------
 crypto/sha2.c               |  92 +++++++++++++++++++++++------------------------
 crypto/sha4.c               | 361 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/digest.h            |  52 ++++++++++++++++++++++++---
 15 files changed, 853 insertions(+), 136 deletions(-)
 rename {common => crypto}/digest.c (65%)
 create mode 100644 crypto/hmac.c
 create mode 100644 crypto/internal.h
 create mode 100644 crypto/sha4.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
