Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUB9q-0008Ci-Fy
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 07:27:27 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UUB9o-0007PO-IW
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 09:27:24 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UUB9o-0005oq-HK
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 09:27:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Apr 2013 09:27:17 +0200
Message-Id: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] devicetree patches
To: barebox@lists.infradead.org

Here are some improvements to the barebox devicetree support, like
multiple resources per device and named resources.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      of: parse phandles before probing devices
      of: Add of_property_read_string_index()
      of: Allow multiple resources in 'reg' property
      of: read resource names from devicetree
      of: partitions: pass struct cdev as argument
      of: partitions: create bb device for nand flashes

 drivers/of/base.c      | 133 ++++++++++++++++++++++++++++++++++++++++---------
 drivers/of/partition.c |  13 +++--
 include/of.h           |  10 ++--
 3 files changed, 124 insertions(+), 32 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
