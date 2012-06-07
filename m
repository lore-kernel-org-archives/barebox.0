Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScjSe-0005jU-J8
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 20:37:41 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1ScjSb-0003bW-QO
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 22:37:37 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1ScjSb-0000pq-PB
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 22:37:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Jun 2012 22:37:33 +0200
Message-Id: <1339101456-8116-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: defenv-2 updates
To: barebox@lists.infradead.org

Some updatess for the defaultenv-2 template

----------------------------------------------------------------
Sascha Hauer (3):
      defaultenv-2 ifup: Always overwrite eth0.serverip
      defaultenv-2: mount tftp server specified in $eth0.serverip
      defaultenv-2: remove global.tftp.path

 defaultenv-2/base/bin/ifup       |    7 ++++++-
 defaultenv-2/base/bin/init       |    2 --
 defaultenv-2/base/boot/initrd    |    5 +++--
 defaultenv-2/base/boot/net       |    6 ++++--
 defaultenv-2/base/init/automount |   11 +++--------
 defaultenv-2/base/init/general   |    3 ---
 6 files changed, 16 insertions(+), 18 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
