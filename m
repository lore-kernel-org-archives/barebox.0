Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TlfxH-0002Xo-8I
 for barebox@lists.infradead.org; Thu, 20 Dec 2012 13:14:32 +0000
Received: from mail440.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id EC4EAFFBEF5
 for <barebox@lists.infradead.org>; Thu, 20 Dec 2012 14:27:11 +0100 (CET)
Date: Thu, 20 Dec 2012 14:12:50 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121220131250.GG26483@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] gpiolib: add request and free support
To: barebox@lists.infradead.org

HI,

	This allow to trac which gpio is used for what
	and allow drivers to have custom request and free

	as example on at91 mux the pin as gpio on request

The following changes since commit b6accb5e560c3b39e738fad619a140f6247d27c6:

  commands: flash: add missing newlines to error messages (2012-12-14 08:43:44 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/gpiolib

for you to fetch changes up to b1e244b763731fb16fee15a93f45fc8c5455628a:

  gpiolib: add command to dump the current gpio status (2012-12-18 23:09:05 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      gpiolib: add gpio_request and gpio_free support
      gpiolib: add command to dump the current gpio status

 drivers/gpio/gpio.c |  124 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------
 include/gpio.h      |    7 +++++++
 2 files changed, 124 insertions(+), 7 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
