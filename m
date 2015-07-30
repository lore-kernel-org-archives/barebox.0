Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([78.47.171.185])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKpCM-0005hF-Pp
 for barebox@lists.infradead.org; Thu, 30 Jul 2015 14:52:44 +0000
Received: from polaris.fritz.box (f053152215.adsl.alicedsl.de [78.53.152.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id B9B27C08C6
 for <barebox@lists.infradead.org>; Thu, 30 Jul 2015 16:52:17 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Thu, 30 Jul 2015 16:52:05 +0200
Message-Id: <1438267931-22374-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH v2 0/6] i2c: add bus recovery infrastructure
To: barebox@lists.infradead.org

This series ports the kernel's i2c bus recovery support to barebox.

Bus recovery is necessary when a slave device pulls the SDA line low because it
is in a wrong state. The fix is to toggle the SCL line, which move the slaves
into the idle state. Using the same structure and callbacks as the kernel makes
it easy to port the per-driver code to barebox.

Changes from v1:
  - Let the driver configure the function pointers to avoid linking in
    i2c_generic_gpio_recovery when it is not actually needed.
  - Add recovery support to i2c-gpio.

Jan Luebbe (6):
  i2c: add bus recovery infrastructure
  i2c-omap: clear ARDY twice
  i2c-omap: add bus recovery support
  i2c: algo-bit: fix debug code
  i2c: algo-bit: check if the bus is busy
  i2c: gpio: add bus recovery support

 drivers/i2c/algos/i2c-algo-bit.c |  44 ++++++++++---
 drivers/i2c/busses/i2c-gpio.c    |  10 +++
 drivers/i2c/busses/i2c-omap.c    |  88 +++++++++++++++++++++++++-
 drivers/i2c/i2c.c                | 130 +++++++++++++++++++++++++++++++++++++++
 include/i2c/i2c.h                |  45 ++++++++++++++
 5 files changed, 307 insertions(+), 10 deletions(-)

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
