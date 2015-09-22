Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeHra-0004PN-Hp
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 07:19:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 22 Sep 2015 09:19:16 +0200
Message-Id: <1442906359-17286-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: video: imx-ipu-v3: ldb fixes
To: Barebox List <barebox@lists.infradead.org>

As Holger noted the ldb no longer supports modes directly in the ldb
device node, instead barebox crashes when the IPU driver tries to
enable a non existent mode. This series replaces the crash with an
error message and brings back the mode support to the ldb driver.

Holger, please test. I did not have a board which uses the ldb handy,
so I had to fake it. I verified that the mode is read from the device
tree, but could not see if it's really used.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      video: ipuv3: Do not crash when no mode is found
      video: ipuv3: imx-ldb: remove unused variable
      video: ipuv3: imx-ldb: Support video modes in ldb node

 drivers/video/imx-ipu-v3/imx-ldb.c | 31 ++++++++++++++++++++-----------
 drivers/video/imx-ipu-v3/ipufb.c   |  5 +++++
 2 files changed, 25 insertions(+), 11 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
