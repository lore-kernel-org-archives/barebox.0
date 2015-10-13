Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZluNj-0006v9-KZ
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 07:52:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZluNO-0002Wu-26
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 09:52:02 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1ZluNN-0005Gv-Oh
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 09:52:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Oct 2015 09:51:50 +0200
Message-Id: <1444722714-30445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: devfs fixes
To: Barebox List <barebox@lists.infradead.org>

We have some places in the code where we expect a cdev name, but
also allow a full /dev/ path. We handle this by doing:

	if (!strncmp(name, "/dev/", 5))
		name += 5;

As Peter noticed this of course only works when devfs is mounted on
/dev/. With this series we actually enforce that to avoid surprises.
Also we "officially" allow to pass a /dev/ path for opening a cdev
by moving the above code to cdev_open.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      fs: devfs: Allow mounting only on /dev/
      fs: devfs: Allow mount path in cdev_open
      filetype: Use cdev_open
      fs: pass path directly to cdev_open

 common/filetype.c | 4 +++-
 fs/devfs-core.c   | 6 +++++-
 fs/devfs.c        | 7 +++++++
 fs/fs.c           | 9 +--------
 4 files changed, 16 insertions(+), 10 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
