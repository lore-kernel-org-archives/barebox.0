Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo68.mail-out.ovh.net ([46.105.74.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXS20-0008PV-8B
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 10:13:57 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 32BC9FF875A
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 11:13:34 +0100 (CET)
Date: Mon, 16 Mar 2015 11:13:22 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316101321.GA26127@ns203013.ovh.net>
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
Subject: [PATCH 00/10 v3] prepare for rsa support
To: barebox@lists.infradead.org

Hi,

	The following patch series prepare for the adding of the rsa digest
	support

	This will allow to verify a rsa signature of a file

	Introduction of a new command digest to handle the digest and check

	The next patch series will add RSA and keystore support

v2:

	- rebase on next
	- add pbkdf2 to password/login framework
	- command allow to have runtime output
	  used it in the new digest to print the supported algo

v3:
	add more fix to ensure all the digest_xx call return are checked

The following changes since commit bbba2d05585637d04657dce293c0cb0611dbfeea:

  Merge branch 'for-next/state' into next (2015-03-13 08:32:38 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/digest

for you to fetch changes up to e4ec247ea29b5b48386f6a959f96f78d9cef729b:

  digest: digest_file_window: check every digest_xxx return (2015-03-14 11:08:05 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (10):
      digest: add verify callback
      command: rename digest.c to hashsum.c
      command: allow runtime usage
      command: add generic digest command
      digest: add digest callback
      crypto: add pbkdf2 hmac key generator
      password: add pbkdf2 support
      digest: allow algo to specify their length at runtime
      crypto: hmac: use digest_digest and check the return of every digest_xxx
      digest: digest_file_window: check every digest_xxx return

 commands/Kconfig        |  26 +++++++++++++------
 commands/Makefile       |   3 ++-
 commands/digest.c       | 268 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------------------------------------------------------------------------
 commands/hashsum.c      | 187 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 commands/internal.h     |   3 +++
 common/Kconfig          |   4 +++
 common/command.c        |   2 ++
 common/password.c       |  79 ++++++++++++++++++++++++++++++++++++--------------------
 crypto/Kconfig          |   5 ++++
 crypto/Makefile         |   2 ++
 crypto/digest.c         |  75 +++++++++++++++++++++++++++++++++++++++++++++++------
 crypto/hmac.c           |  51 +++++++++++++++++++++++-------------
 crypto/internal.h       |   4 +++
 crypto/md5.c            |   2 ++
 crypto/pbkdf2.c         |  94 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 crypto/sha1.c           |   2 ++
 crypto/sha2.c           |   3 +++
 crypto/sha4.c           |   3 +++
 include/command.h       |   3 +++
 include/crypto/pbkdf2.h |  23 +++++++++++++++++
 include/digest.h        |  25 +++++++++++++++---
 21 files changed, 647 insertions(+), 217 deletions(-)
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
