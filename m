Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z8O6l-0005g6-Dd
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 07:31:33 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Z8MEI-00060s-33
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 07:31:10 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <sha@pengutronix.de>) id 1Z8O6O-00049I-Ir
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 09:31:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jun 2015 09:30:59 +0200
Message-Id: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: ubi: Make attaching UBI more convenient
To: Barebox List <barebox@lists.infradead.org>

Using UBI is a matter of using 'ubiattach' before UBI volumes can
be used. This makes it hard to use since the various autodetection
mechanisms can't be used. This series changes this. We introduce
predictable names for UBI devices and volumes and hook UBI attachment
into the mtd devices detect callback. This makes these commands possible:

# UBI attach nand0.root and mount to /mnt/nand0.root.ubi.root:
mount nand0.root.ubi.root

or:

# boot bootspec entry on an UBIFS found on the
# UBI volume 'root' on nand0.root:
boot nand0.root.ubi.root

or just:

# If there's UBI found on nand0.root then attach it:
detect nand0.root

Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      commands: detect: use device_detect_by_name
      driver: detect: detect parent devices aswell
      blspec: Use device_detect_by_name
      ubi: Use preditable device names
      mtd: detect ubi devices automatically
      ubi: Lower 'already attached' message to debug level
      commands: mount: detect the device to be mounted
      ubi: Update documentation

 Documentation/user/ubi.rst | 44 +++++++++++++++-----------------------------
 commands/detect.c          |  5 +----
 commands/mount.c           |  2 ++
 common/blspec.c            |  9 +--------
 drivers/base/driver.c      | 25 ++++++++++++++++++++-----
 drivers/mtd/core.c         | 40 ++++++++++++++++++++++++++++++++++++++++
 drivers/mtd/ubi/build.c    |  9 +++------
 drivers/mtd/ubi/cdev.c     |  4 ++--
 8 files changed, 84 insertions(+), 54 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
