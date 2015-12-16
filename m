Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a98gT-0003uM-OB
 for barebox@lists.infradead.org; Wed, 16 Dec 2015 09:47:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1a98g7-0003Xm-Pb
 for barebox@lists.infradead.org; Wed, 16 Dec 2015 10:47:23 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1a98g7-00040a-Dm
 for barebox@lists.infradead.org; Wed, 16 Dec 2015 10:47:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 16 Dec 2015 10:47:20 +0100
Message-Id: <1450259242-13801-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] Symlink support for devfs
To: Barebox List <barebox@lists.infradead.org>

This adds symlink support for devfs and uses it to create named
partition aliases.

Changes since v1:

- Put links to a cdev onto a list on that cdev to be able to show them
  in devinfo output

----------------------------------------------------------------
Sascha Hauer (2):
      devfs: Add symlink support
      partition: Create links with partition names

 commands/devinfo.c  |  7 +++--
 common/partitions.c | 20 +++++---------
 fs/devfs-core.c     | 76 ++++++++++++++++++++++++++++++++++++++++++++---------
 fs/devfs.c          | 27 ++++++++++++++++++-
 include/driver.h    |  5 ++++
 5 files changed, 106 insertions(+), 29 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
