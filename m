Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8SNZ-0001w1-Ri
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 11:32:55 +0000
Received: from mail137.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 5006DFF95DD
 for <barebox@lists.infradead.org>; Tue,  6 Jan 2015 12:32:29 +0100 (CET)
Date: Tue, 6 Jan 2015 12:32:27 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150106113227.GC4563@ns203013.ovh.net>
References: <20141226095143.GB15818@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20141226095143.GB15818@ns203013.ovh.net>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] FIX AT91 support
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Hi,

	This patch series fix at91 support that is broken for more than 3 months

	please apply this on fix releases

	Not even tested by Atmel when adding now SoC and Board

The following changes since commit 631be8e6cbe003f469a7e6b54046a743b710d989:

  blspec: print error when devicetree not found (2014-12-16 14:29:23 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_fix

for you to fetch changes up to 8f48b25818d29d406b3eba170910c6c24bd3a347:

  driver: workarroud resource request that conflist with errno PTR (2015-01-05 17:46:38 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      arm: at91: fix ecc_mode on non atmel boards
      driver: workarroud resource request that conflist with errno PTR

 arch/arm/boards/animeo_ip/init.c      |  1 +
 arch/arm/boards/pm9261/init.c         |  1 +
 arch/arm/boards/pm9263/init.c         |  1 +
 arch/arm/boards/pm9g45/init.c         |  1 +
 arch/arm/boards/qil-a926x/init.c      |  1 +
 arch/arm/boards/telit-evk-pro3/init.c |  2 ++
 arch/arm/boards/tny-a926x/init.c      |  1 +
 arch/arm/boards/usb-a926x/init.c      |  1 +
 arch/arm/mach-at91/at91sam926x_time.c |  6 +++---
 drivers/base/driver.c                 | 31 +++++++++++++++++++++++++++++--
 drivers/pinctrl/pinctrl-at91.c        |  6 +++---
 drivers/serial/atmel.c                |  6 +++---
 include/driver.h                      |  8 ++++++++
 13 files changed, 55 insertions(+), 11 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
