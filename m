Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0TkQ-0002dq-RM
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:19:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1W0Tk5-0003G1-JT
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 11:18:37 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1W0Tk5-0002gX-IT
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 11:18:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:18:32 +0100
Message-Id: <1389089916-2771-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: USB chipidea patches
To: barebox@lists.infradead.org

These are some chipidea patches buried in my local repo.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      usb: chipidea i.MX: remove unused pdata->init hook
      usb: chipidea i.MX: limit port init to HSIC mode
      usb: chipidea i.MX: always print an error message when ULPI fails
      usb: chipidea i.MX: add some delay after ulpi_setup

 drivers/usb/imx/chipidea-imx.c | 12 ++++++------
 include/usb/chipidea-imx.h     |  1 -
 2 files changed, 6 insertions(+), 7 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
