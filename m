Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLcte-0004KC-Dw
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 17:47:39 +0000
Received: from mail402.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id EE7C5FF908D
 for <barebox@lists.infradead.org>; Mon, 16 Sep 2013 19:47:14 +0200 (CEST)
Date: Mon, 16 Sep 2013 19:48:24 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130916174824.GH21829@ns203013.ovh.net>
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
Subject: [PATCH 0/5 v3] defaultenv-2: add login support
To: barebox@lists.infradead.org

HI,

	v3:
	use glabalvar type params

	this will allow to request password when try to interrupt barebox auto
	boot

	This will also allow to set a default password if none in the env
	and if no /env/bin/init is present request a login

The following changes since commit f0b68f0008f94606f6b927590d1fafb34b1abc55:

  usb-imx28: fix enable (2013-09-10 21:03:59 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/login

for you to fetch changes up to 8d1ab8f59cc9f3a22e191d389433ca78f74bbc57:

  defaultenv-2: add login support (2013-09-17 01:01:08 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      globalvar: add globalvar_add_simple_int/bool/enum/ip support
      login: add globalvar timeout support
      login: disable input console if password wrong
      login/passwd: add default password support
      defaultenv-2: add login support

 commands/login.c           | 24 ++++++++++++++++++++++--
 commands/passwd.c          |  8 ++++----
 common/Kconfig             |  5 +++++
 common/Makefile            | 20 ++++++++++++++++++++
 common/console.c           |  6 ++++++
 common/console_common.c    | 33 +++++++++++++++++++++++++++++++++
 common/console_simple.c    |  9 ++++++++-
 common/globalvar.c         |  2 +-
 common/password.c          | 94 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------
 common/startup.c           |  2 ++
 defaultenv-2/base/bin/init | 18 ++++++++++++++++++
 include/console.h          |  3 +++
 include/globalvar.h        | 83 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/password.h         | 22 +++++++++++++++++-----
 14 files changed, 303 insertions(+), 26 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
