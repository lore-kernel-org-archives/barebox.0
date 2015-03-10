Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo69.mail-out.ovh.net ([46.105.50.107])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YVKyO-0001up-RN
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 14:17:30 +0000
Received: from mail409.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 143B81000F4A
 for <barebox@lists.infradead.org>; Tue, 10 Mar 2015 15:17:03 +0100 (CET)
Date: Tue, 10 Mar 2015 15:16:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150310141659.GH30554@ns203013.ovh.net>
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
Subject: [PATCH 0/7] add sha384/sha512 and hmac support
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

The following changes since commit a1a5a212985053fac141975f6f6cd8e30051b401:

  Documentation: handle missing group declaration (2015-03-10 15:04:23 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/hmac

for you to fetch changes up to c0016394be2b50c24727d971a1a76c50abb42cad:

  command: add hmac sum supportfor md5, sha1, sha224, sha256, sha384, sha512 (2015-03-10 17:48:11 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      digest: introduce digest_{init/update/final/length}
      digest: make it multi-instance
      crypto: add sha384 & sha512 support
      command: add sha384sum and sha512sum support
      password: add support for sha512
      digest: add HMAC support for md5, sha1, sha224, sha256, sha384, sha512
      command: add hmac sum supportfor md5, sha1, sha224, sha256, sha384, sha512

 commands/Kconfig  |  24 ++++++++++++++
 commands/digest.c |  75 +++++++++++++++++++++++++++++++++++++++----
 common/Kconfig    |   4 +++
 common/digest.c   | 121 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++--------
 common/password.c |  33 ++++++++++---------
 crypto/Kconfig    |   6 ++++
 crypto/Makefile   |   2 ++
 crypto/md5.c      |  35 +++++++-------------
 crypto/sha1.c     |  35 +++++++-------------
 crypto/sha2.c     |  57 +++++++++++++--------------------
 crypto/sha4.c     | 342 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/digest.h  |  58 ++++++++++++++++++++++++++++++---
 12 files changed, 670 insertions(+), 122 deletions(-)
 create mode 100644 crypto/sha4.c

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
