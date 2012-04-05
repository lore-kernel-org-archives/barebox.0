Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFiXL-0005ul-69
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 08:59:24 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SFiXE-0006oq-IP
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 10:59:16 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SFiXE-0000CR-HR
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 10:59:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Apr 2012 10:59:13 +0200
Message-Id: <1333616355-632-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: cfi driver fixes
To: barebox@lists.infradead.org

The following fixes some problems with the cfi flash driver for
32 bit flashes.

----------------------------------------------------------------
Sascha Hauer (2):
      cfi flash: Fix loop count calculation
      cfi flash: Fix alignment problem

 drivers/nor/cfi_flash_intel.c |   20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
