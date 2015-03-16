Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo68.mail-out.ovh.net ([46.105.79.203])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXR9b-0004Zl-GT
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 09:17:45 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id CECBBFF924C
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 10:17:17 +0100 (CET)
Date: Mon, 16 Mar 2015 10:17:10 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150316091710.GE24510@ns203013.ovh.net>
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
Subject: [PATCH 0/8 v2] prepare for rsa support
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


The following changes since commit bbba2d05585637d04657dce293c0cb0611dbfeea:

  Merge branch 'for-next/state' into next (2015-03-13 08:32:38 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/digest

for you to fetch changes up to dbce6c62a5ff7585150fdb8b044580a96751577c:

  digest: allow algo to specify their length at runtime (2015-03-14 09:56:36 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      digest: add verify callback
      command: rename digest.c to hashsum.c
      command: allow runtime usage
      command: add generic digest command
      digest: add digest callback
      crypto: add pbkdf2 hmac key generator
      password: add pbkdf2 support
      digest: allow algo to specify their length at runtime

 commands/Kconfig        |  26 +++++++++-----
 commands/Makefile       |   3 +-
 commands/digest.c       | 268 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------------------------------------------------------
 commands/hashsum.c      | 187 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 commands/internal.h     |   3 ++
 common/Kconfig          |   4 +++
 common/command.c        |   2 ++
 common/password.c       |  79 +++++++++++++++++++++++++---------------
 crypto/Kconfig          |   5 +++
 crypto/Makefile         |   2 ++
 crypto/digest.c         |  67 ++++++++++++++++++++++++++++++----
 crypto/hmac.c           |   2 ++
 crypto/internal.h       |   4 +++
 crypto/md5.c            |   2 ++
 crypto/pbkdf2.c         |  94 ++++++++++++++++++++++++++++++++++++++++++++++++
 crypto/sha1.c           |   2 ++
 crypto/sha2.c           |   3 ++
 crypto/sha4.c           |   3 ++
 include/command.h       |   3 ++
 include/crypto/pbkdf2.h |  23 ++++++++++++
 include/digest.h        |  25 +++++++++++--
 21 files changed, 610 insertions(+), 197 deletions(-)
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
