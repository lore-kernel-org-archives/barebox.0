Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkCHK-0001Jj-8F
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 10:48:50 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SkCHI-0007ez-0R
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 12:48:48 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1SkCHH-0002GB-VD
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 12:48:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jun 2012 12:48:44 +0200
Message-Id: <1340880527-6895-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] some small binary size improvement patches
To: barebox@lists.infradead.org

Not much, but at least a few hundred bytes.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      menu: factor out a function to print an entry
      net: Use dev_name directly
      dos partitions: enable disk size guessing only for bios disks

 common/menu.c       |   70 +++++++++++----------------------------------------
 common/partitions.c |    2 +-
 include/menu.h      |    3 ---
 net/eth.c           |    4 +--
 4 files changed, 17 insertions(+), 62 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
