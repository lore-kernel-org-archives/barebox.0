Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo69.mail-out.ovh.net ([178.33.251.173])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXq0N-0006pZ-W6
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 11:49:53 +0000
Received: from mail603.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 121BD1000DA2
 for <barebox@lists.infradead.org>; Tue, 17 Mar 2015 12:49:26 +0100 (CET)
Date: Tue, 17 Mar 2015 12:49:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150317114923.GQ26127@ns203013.ovh.net>
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
Subject: [PATCH 0/9 v4] prepare for rsa support
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

v4:
	- drop key params for digest_file_window/digest_file/digest_file_by_name
	- digest improve help

please pull
The following changes since commit bbba2d05585637d04657dce293c0cb0611dbfeea:

  Merge branch 'for-next/state' into next (2015-03-13 08:32:38 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/digest

for you to fetch changes up to 50b6b7d02eb109ba2807c2bb6e740fa01cdedc24:

  command: add generic digest command (2015-03-15 06:28:34 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (9):
      crypto: digest: digest_file_window: check every digest_xxx return
      crypto: digest: digest_file_window/digest_file/digest_file_by_name drop key params
      digest: add verify callback
      digest: add digest callback
      crypto: hmac: use digest_digest and check the return of every digest_xxx
      crypto: add pbkdf2 hmac key generator
      command: allow runtime usage
      command: rename digest.c to hashsum.c
      command: add generic digest command

 commands/Kconfig        |  26 ++++++++++++------
 commands/Makefile       |   3 ++-
 commands/digest.c       | 283 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------------------------------------------------------------------------
 commands/hashsum.c      | 187 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 commands/internal.h     |   3 +++
 common/command.c        |   2 ++
 crypto/Kconfig          |   5 ++++
 crypto/Makefile         |   2 ++
 crypto/digest.c         |  81 +++++++++++++++++++++++++++++++++++++++++++++----------
 crypto/hmac.c           |  51 ++++++++++++++++++++++-------------
 crypto/internal.h       |   4 +++
 crypto/md5.c            |   2 ++
 crypto/pbkdf2.c         |  94 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 crypto/sha1.c           |   2 ++
 crypto/sha2.c           |   3 +++
 crypto/sha4.c           |   3 +++
 include/command.h       |   3 +++
 include/crypto/pbkdf2.h |  23 ++++++++++++++++
 include/digest.h        |  25 +++++++++++++----
 19 files changed, 603 insertions(+), 199 deletions(-)
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
