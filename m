Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn0l-000104-DG
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:19:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1afn0N-0000bw-HQ
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 12:19:15 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86_2)
 (envelope-from <sha@pengutronix.de>) id 1afn0N-0001ji-5s
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 12:19:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:19:03 +0100
Message-Id: <1458040754-32240-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX NAND Boot: Make update robust against power failures
To: Barebox List <barebox@lists.infradead.org>

The i.MX6 allows to store the barebox image and all control data around
it redundantly in the NAND. This can be used to make a barebox update
safe against power failures. The following series implements this. It
makes use of the just sent mtd-peb API.

Sascha

----------------------------------------------------------------
Sascha Hauer (11):
      bbu: Allow to refresh/repair images
      mtd: nand: export nand_check_erased_buf
      imx-bbu-nand-fcb: factor out layout functions
      imx-bbu-nand-fcb: Use mtd-peb API to write firmware
      imx-bbu-nand-fcb: factor out a fcb write function
      imx-bbu-nand-fcb: erase on demand
      imx-bbu-nand-fcb: Only write FCBs/DBBTs when necessary
      imx-bbu-nand-fcb: When writing firmware return new bad blocks
      imx-bbu-nand-fcb: Print error when writing blocks fails
      imx-bbu-nand-fcb: Make robust against power cuts
      imx-bbu-nand-fcb: Print error message when out of pebs

 Documentation/user/updating.rst |   8 +
 commands/barebox-update.c       |  26 +-
 common/bbu.c                    |  12 +-
 common/imx-bbu-nand-fcb.c       | 968 +++++++++++++++++++++++++++++++++-------
 drivers/mtd/nand/nand_base.c    |   2 +-
 include/bbu.h                   |   1 +
 include/linux/mtd/nand.h        |   1 +
 7 files changed, 854 insertions(+), 164 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
