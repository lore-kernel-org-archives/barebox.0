Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo6.mail-out.ovh.net ([178.32.125.228])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YW3yM-0004QU-Bv
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 14:20:27 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 3F6FBFF92B3
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2015 15:19:59 +0100 (CET)
Date: Thu, 12 Mar 2015 15:19:51 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150312141938.GS30554@ns203013.ovh.net>
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
Subject: [PATCH 0/7] prepare for rsa support
To: barebox@lists.infradead.org

Hi,

	The following patch series prepare for the adding of the rsa digest
	support

	This will allow to verify a rsa signature of a file

	Introduction of a new command digest to handle the digest and check

	include also some fix

	The next patch series will add RSA and keystore support

The following changes since commit 01b0fd707ebede1303f7471adca41ebee06d2ac7:

  Merge branch 'for-next/state' into next (2015-03-12 08:29:17 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/digest

for you to fetch changes up to 1807649fab2109a962415e1ba5651d9d7c385e08:

  command: add generic digest command (2015-03-12 16:34:23 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      digest: fix and add missing copyright
      digest: hmac: fix set_key prototype
      crypto: add pbkdf2 hmac key generator
      digest: add verify callback
      digest: allow algo to specify their length at runtime
      command: rename digest.c to hashsum.c
      command: add generic digest command

 commands/Kconfig        |  26 +++++++++++-----
 commands/Makefile       |   3 +-
 commands/digest.c       | 270 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------------------------------------------------------------
 commands/hashsum.c      | 187 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 commands/internal.h     |   3 ++
 common/password.c       |  43 +-------------------------
 crypto/Kconfig          |   5 +++
 crypto/Makefile         |   2 ++
 crypto/digest.c         | 113 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----
 crypto/hmac.c           |  10 +++++-
 crypto/internal.h       |   4 ++-
 crypto/md5.c            |   1 +
 crypto/pbkdf2.c         |  79 ++++++++++++++++++++++++++++++++++++++++++++++++
 crypto/sha1.c           |   1 +
 crypto/sha2.c           |   2 ++
 crypto/sha4.c           |   2 ++
 include/crypto/pbkdf2.h |  23 ++++++++++++++
 include/digest.h        |  22 ++++++++++++--
 18 files changed, 583 insertions(+), 213 deletions(-)
 create mode 100644 commands/hashsum.c
 create mode 100644 commands/internal.h
 create mode 100644 crypto/pbkdf2.c
 create mode 100644 include/crypto/pbkdf2.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
