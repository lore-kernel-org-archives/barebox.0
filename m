Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNLm-0002dm-FZ
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:03:15 +0000
Received: by wizk4 with SMTP id k4so111420114wiz.1
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:02:52 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:02:42 +0200
Message-Id: <1428627766-17178-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/4] Introduce deferred probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

As expected, the Lenovo ix4 has an poor-man's GPIO expander (74x163)
connected by (guess what) GPIO bitbang SPI. This causes driver probing
to fail when the GPIO expander is probed before GPIO SPI driver.

This patch set introduces deferred probing support into base/driver.c
by moving drivers that request probe deferral to an extra device list
that will be reprobed later. As -EPROBE_DEFER is an error in general,
the rest of the patch set amends gpio and led parts to deal with this
special case.

The corresponding drivers and support for Lenovo ix4 will be added in
a third patch set.

Sebastian Hesselbarth (4):
  base: Introduce deferred probing
  gpio: Return -EPROBE_DEFER on gpio_get_num()
  OF: gpio: Silence error message on -EPROBE_DEFER
  led: gpio: Properly deal with deferred probing

 drivers/base/driver.c       | 42 +++++++++++++++++++++++++++++++++++++++---
 drivers/gpio/gpiolib.c      |  5 ++++-
 drivers/led/led-gpio.c      | 15 ++++++++++++++-
 drivers/of/of_gpio.c        |  5 +++--
 include/asm-generic/errno.h |  1 +
 5 files changed, 61 insertions(+), 7 deletions(-)

---
Cc: barebox@lists.infradead.org
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
