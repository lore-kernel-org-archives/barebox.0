Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmgKr-0000E7-5m
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 07:18:48 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SmgKn-0003HV-EB
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 09:18:41 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1SmgKn-0000us-D9
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 09:18:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 09:18:37 +0200
Message-Id: <1341472720-3248-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] defenv-2 updates
To: barebox@lists.infradead.org

Hi all,

The following contains some defenv-2 updates like more usage informations
for the scripts and it makes the boot script a bit more flexible.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      hush getopt: shift argv arguments
      defenv-2: Add usage information for bootargs scripts
      defenv-2: improve boot script

 common/Kconfig                             |    1 +
 common/hush.c                              |    5 +++-
 defaultenv-2/base/bin/boot                 |   42 ++++++++++++++++++++++++++--
 defaultenv-2/base/bin/bootargs-root-initrd |    7 ++++-
 defaultenv-2/base/bin/bootargs-root-jffs2  |   16 ++++++++++-
 defaultenv-2/base/bin/bootargs-root-nfs    |    7 ++++-
 defaultenv-2/base/bin/bootargs-root-ubi    |   13 ++++++++-
 7 files changed, 83 insertions(+), 8 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
