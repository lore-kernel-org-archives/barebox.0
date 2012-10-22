Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TQKVv-0004IZ-1q
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 16:06:04 +0000
Received: from mail193.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 4A526FF9604
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 18:12:52 +0200 (CEST)
Date: Mon, 22 Oct 2012 18:03:41 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121022160341.GF21588@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] introduce command abi version
To: barebox@lists.infradead.org

Hi,

	This will allow to detect command incompability between different
	version of barebox

The following changes since commit a6f852d401b63e1de0efe73a11efd5403870b594:

  Merge branch 'pu/compiler-warnings' (2012-10-21 10:57:54 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/command_abi_version

for you to fetch changes up to 5ee2adb18c6e0e609e5633de4d4c6d9383b14173:

  environment: detect command_abi_version (2012-10-22 14:34:25 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      command: introduce abi version
      envfs: add command_abi_version support
      environment: detect command_abi_version

 commands/loadenv.c    |   11 ++++++++++-
 common/command.c      |    2 ++
 common/environment.c  |    7 ++++++-
 common/startup.c      |   42 ++++++++++++++++++++++++++++++++----------
 include/command.h     |    1 +
 include/command_abi.h |   12 ++++++++++++
 include/envfs.h       |    4 ++--
 include/environment.h |   13 ++++++++++++-
 scripts/bareboxenv.c  |    9 ++++++++-
 9 files changed, 85 insertions(+), 16 deletions(-)
 create mode 100644 include/command_abi.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
