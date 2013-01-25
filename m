Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tyt6d-0006M2-7i
 for barebox@lists.infradead.org; Fri, 25 Jan 2013 23:54:48 +0000
Received: from mail414.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 97F96FFA723
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 01:04:39 +0100 (CET)
Date: Sat, 26 Jan 2013 00:53:26 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130125235326.GG26329@game.jcrosoft.org>
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
Subject: [PATCH 0/7] globalvar: add multiple device support
To: barebox@lists.infradead.org

HI,

	this will allow to reduce the scope of device and params to search
	during boot time

	we keep the retro compatibility

The following changes since commit 2c93912f34ce06585c4ede0298aef7225e096df2:

  atmel_mci: gpio: request and configure card detect (2013-01-25 19:52:44 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/globalvar

for you to fetch changes up to 1ea180426705fda69e278057337d6e00240fd270:

  bootargs: switch globalvar to it's own device (2013-01-22 02:30:00 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      params: allow to access first sub-device and params via env
      globalvar: add it's own bus
      globalvar: allow to register multiple device
      net: switch to global device
      dhcp: switch globalvar to it's own device
      bootm: switch globalvar to it's own device
      bootargs: switch globalvar to it's own device

 commands/bootm.c    |   20 ++++++++++++-------
 commands/global.c   |   41 ++++++++++++++++++++++++++++++--------
 common/bootargs.c   |   14 +++++++++++--
 common/complete.c   |   45 ++++++++++++++++++++++++++++++++++++-----
 common/globalvar.c  |  146 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------
 include/globalvar.h |   26 ++++++++++++++++++++++++
 lib/parameter.c     |   41 +++++++++++++++++++++++++++++++++++++-
 net/dhcp.c          |   40 ++++++++-----------------------------
 net/net.c           |   15 +++++++-------
 9 files changed, 307 insertions(+), 81 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
