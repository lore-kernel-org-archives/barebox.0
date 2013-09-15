Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLAUx-0004eh-S4
 for barebox@lists.infradead.org; Sun, 15 Sep 2013 11:28:17 +0000
Received: from mail411.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3D10DDC6014
 for <barebox@lists.infradead.org>; Sun, 15 Sep 2013 13:27:43 +0200 (CEST)
Date: Sun, 15 Sep 2013 13:28:50 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130915112850.GC21829@ns203013.ovh.net>
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
Subject: [PATCH 0/2 v2] defaultenv-2: add login support
To: barebox@lists.infradead.org

HI,

	this will allow to request password when try to interrupt barebox auto
	boot

	This will also allow to set a default password if none in the env
	and if no /env/bin/init is present request a login

Jean-Christophe PLAGNIOL-VILLARD (4):
      login: add globalvar timeout support
      login: disable input console if password wrong
      login/passwd: add default password support
      defaultenv-2: add login support

 commands/login.c           | 32 +++++++++++++++++++++++++++++++-
 commands/passwd.c          |  8 ++++----
 common/Kconfig             |  5 +++++
 common/Makefile            | 18 ++++++++++++++++++
 common/console.c           |  6 ++++++
 common/console_common.c    | 45 +++++++++++++++++++++++++++++++++++++++++++++
 common/console_simple.c    |  9 ++++++++-
 common/password.c          | 94 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------
 common/startup.c           |  2 ++
 defaultenv-2/base/bin/init | 16 ++++++++++++++++
 include/console.h          |  3 +++
 include/password.h         | 22 +++++++++++++++++-----
 12 files changed, 236 insertions(+), 24 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
