Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwGj4-0005lh-NH
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 17:59:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 31 Jul 2012 19:59:10 +0200
Message-Id: <1343757556-11897-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] m25p80 spi flash updates
To: barebox@lists.infradead.org

Mostly speed updates for the m25p80 SPI nor flash driver.

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      nor m25p80: remove progression bar
      nor m25p80: remove unused variables
      nor m25p80: refactor chip erase
      nor m25p80: align start and end to erase blocks
      nor m25p80: optimize erase
      nor m25p80: implement fast read

 drivers/nor/m25p80.c |   75 ++++++++++++++++++++++++++++++--------------------
 drivers/nor/m25p80.h |   12 ++------
 2 files changed, 48 insertions(+), 39 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
