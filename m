Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo1.mail-out.ovh.net ([178.33.110.239]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFq3G-0007D9-O8
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 18:05:23 +0000
Received: from mail645.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id A7C30FF977B
 for <barebox@lists.infradead.org>; Wed, 13 Mar 2013 19:22:01 +0100 (CET)
Date: Wed, 13 Mar 2013 19:01:00 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130313180100.GJ1568@game.jcrosoft.org>
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
Subject: [PATCH 0/7 v2] globalvar: add multiple device support
To: barebox@lists.infradead.org

HI,

	v2:
	fix bootargs

	this will allow to reduce the scope of device and params to search
	during boot time

	we keep the retro compatibility

The following changes since commit 092bfd5eb55d1b2d7ed098aa9723a2fa63b86192:

  fix another brown paper bag bug introduced with compile time loglevel (2013-03-06 23:53:04 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/globalvar

for you to fetch changes up to 2a749c4b65f823da50537798a2feeaf4a01d2212:

  bootargs: switch globalvar to it's own device (2013-03-13 14:35:29 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      params: allow to access first sub-device and params via env
      globalvar: add it's own bus
      globalvar: allow to register multiple device
      net: switch to global device
      dhcp: switch globalvar to it's own device
      bootm: switch globalvar to it's own device
      bootargs: switch globalvar to it's own device

 commands/bootm.c    |   20 +++++++++++++-------
 commands/global.c   |   41 +++++++++++++++++++++++++++++++++--------
 common/bootargs.c   |   14 ++++++++++++--
 common/complete.c   |   45 ++++++++++++++++++++++++++++++++++++++++-----
 common/globalvar.c  |  150 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------------------
 include/globalvar.h |   26 ++++++++++++++++++++++++++
 lib/parameter.c     |   41 ++++++++++++++++++++++++++++++++++++++++-
 net/dhcp.c          |   40 ++++++++--------------------------------
 net/net.c           |   15 +++++++--------
 9 files changed, 311 insertions(+), 81 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
