Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi9iH-0007AG-NQ
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 22:53:52 +0000
Received: by wgsk9 with SMTP id k9so28146031wgs.3
 for <barebox@lists.infradead.org>; Tue, 14 Apr 2015 15:53:27 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 15 Apr 2015 00:53:14 +0200
Message-Id: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 0/6] Introduce deferred probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This is round two of the introduction of deferred probing by moving
drivers that request probe deferral to an extra device list that will
be re-probed later.

Compared to v1 there are the following changes:
- Loop over deferred device list until none succeeds
  (Suggested by Sascha Hauer)
- (Now) properly deal with deferred probing in led-gpio
- Free GPIOs claimed by leds on foo_led_unregister()
- Convert Orion GPIO to real platform driver
Each patch also contains an individual changelog.

It would be great to give this patch series a little more coverage.
Also, several other subsystems could use some support -EPROBE_DEFER
but IMHO we should wait for someone to actually force probe deferral
there.

Sebastian Hesselbarth (6):
  base: Introduce deferred probing
  gpio: Return -EPROBE_DEFER on gpio_get_num()
  OF: gpio: Silence error message on -EPROBE_DEFER
  led: gpio: Properly deal with deferred probing
  led: gpio: Free GPIOs on unregister()
  gpio: orion: Convert to platform_driver

 drivers/base/driver.c       | 56 ++++++++++++++++++++++++++++++++++++++++++---
 drivers/gpio/gpio-orion.c   |  7 +-----
 drivers/gpio/gpiolib.c      |  5 +++-
 drivers/led/led-gpio.c      | 36 +++++++++++++++++++++++++----
 drivers/of/of_gpio.c        |  8 ++++---
 include/asm-generic/errno.h |  1 +
 6 files changed, 96 insertions(+), 17 deletions(-)

---
Cc: barebox@lists.infradead.org
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
