Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmylR-0006SI-QA
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 07:49:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1bmyl6-0000mu-4n
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 09:49:28 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <sha@pengutronix.de>) id 1bmyl5-0002Gn-UE
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 09:49:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 09:49:22 +0200
Message-Id: <1474530566-23625-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Add and use function API for UBI
To: Barebox List <barebox@lists.infradead.org>

We currently use a ioctl API to manipulate UBI devices. This is
suboptimal since we have to carry code for all ioctls with us, even
when some of it may be unused. This series expands the UBI API with
calls to add/remove volumes and uses it inside the UBI commands.
The next step would be to move the commands to separate files and
to make them Kconfig configurable individually.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      mtd: ubi: Add API calls to create/remove volumes
      mtd: ubi: introduce barebox specific ioctl to get ubi_num
      mtd: ubi: commands: use function API to access ubi volumes
      mtd: ubi: remove now unused ioctls

 commands/ubi.c            | 40 +++++++++++++++++++++++++++++++---------
 drivers/mtd/ubi/barebox.c | 43 ++++++++++++++++++++++++++++++-------------
 include/linux/mtd/ubi.h   |  3 +++
 include/mtd/ubi-user.h    |  2 ++
 4 files changed, 66 insertions(+), 22 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
