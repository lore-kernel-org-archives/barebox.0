Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yn3Kz-0005fG-KY
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 11:06:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Yn3Kc-0003nS-Sn
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 13:05:38 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1Yn3Kc-0006r1-K4
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 13:05:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2015 13:05:32 +0200
Message-Id: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: AM335x fixes
To: Barebox List <barebox@lists.infradead.org>

This series fixes some strange issues on AM335x which I currently
can't reproduce with this series anymore. What happened was that
the device hierarchy was garbled so that the output of devinfo
resulted in an endless loop. There are also some other similar
strange corruption issues. My assumption is that the CPSW driver
wasn't quiesced, so that incoming DMA transfers corrupted the
memory.

Also the 'detect -a' made barebox crash on the musb controller, this
one is fixed aswell.

----------------------------------------------------------------
Sascha Hauer (5):
      usb: musb: dsps: Do not use priv pointer
      usb: musb: set controller->priv pointer
      net: phy: Add missing phy_unregister_device
      eth: halt active ethernet device on unregister
      net: cpsw: unregister device on remove callback

 drivers/net/cpsw.c              | 44 ++++++++++++++++++++++++++++++++++++-----
 drivers/net/phy/phy.c           | 11 +++++++++++
 drivers/usb/musb/musb_barebox.c |  1 +
 drivers/usb/musb/musb_dsps.c    | 21 +++++++++-----------
 include/linux/phy.h             |  1 +
 net/eth.c                       |  3 +++
 6 files changed, 64 insertions(+), 17 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
