Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rpgoz-0004cr-TU
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 13:54:03 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Tue, 24 Jan 2012 14:53:46 +0100
Message-Id: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 0/5] fec_imx & miidev: support for 10 MBit connections
To: barebox@lists.infradead.org

This series enables an MX28 to support 10 Mbit connections. It couldn't do
before, because a special bit has to be set, but the phy needs to be queried
first:

1/5, 2/5: minor cleanups
3/5: activate additional FEC features
4/5: refactor phy code to let drivers get the status
5/5: set 10MBit mode when phy reported such a connection

All tested on a custom MX28 board, very similar to MX28EVK.

Regards,

   Wolfram

Wolfram Sang (5):
  net: fec_imx: small cleanups
  net: fec_imx: refactor R_CNTRL setup
  net: fec_imx: enable payload length check and pause frames
  net: miidev: factor out miidev_get_status()
  net: fec_imx: configure FEC for 10Mbit when necessary

 drivers/net/fec_imx.c |   44 ++++++++++++++++----------------
 drivers/net/fec_imx.h |   14 ----------
 drivers/net/miidev.c  |   65 +++++++++++++++++++++++++++++++-----------------
 include/miidev.h      |    5 ++++
 4 files changed, 69 insertions(+), 59 deletions(-)

-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
