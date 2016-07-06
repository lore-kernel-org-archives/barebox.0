Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKi4f-0003gX-RG
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 08:20:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1bKi4K-0005WA-5b
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 10:20:28 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <sha@pengutronix.de>) id 1bKi4J-0003RP-U1
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 10:20:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jul 2016 10:20:24 +0200
Message-Id: <1467793227-29416-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Introduce non volatile device variables
To: Barebox List <barebox@lists.infradead.org>

So far we have non volatile (nv) variables which keep their values
over reboots. This series extends the concept to device
parameters. This can be used to configure devices and to preserve
the configuration over reboots. The non volatile device variables
are implemented as regular nv variables with a special namespace.
Every nv variable with the form "nv.dev.<devname>.<paramname>"
acts on the parameter <paramname> of the device named <devname>.

With this for example mtd partitioning can be stored:

 nv dev.nand0.partitions=4M(barebox),-(root)

Or videomodes:

 nv dev.fb0.mode="1280x1024"

It's planned to also replace the current network settings in /env/network/*
with this mechanism, but additional patches are necessary to make
dhcp work.

This is another step to make scripts in barebox simpler and sometimes
unnecessary.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      nvvar: Simplify by using nv_set()
      nvvar: Simplify by using dev_set_param()
      Introduce non volatile device variables

 Documentation/user/variables.rst |  18 +++++
 common/globalvar.c               | 151 ++++++++++++++++++++++++++++++++-------
 include/globalvar.h              |   6 ++
 lib/parameter.c                  |   3 +
 4 files changed, 154 insertions(+), 24 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
