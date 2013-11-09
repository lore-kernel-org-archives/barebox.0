Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x231.google.com ([2a00:1450:4013:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wp-0000gQ-W5
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:45 +0000
Received: by mail-ea0-f177.google.com with SMTP id f15so1663361eak.8
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:19 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:05 +0100
Message-Id: <1384003450-21001-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/4] gpiolib debug and led trigger fixes
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This small set of patches first fixes led triggers, where the led
should be disabled, before installing a trigger function. Otherwise,
the led may stay enabled from previous bootloaders messing with it.

The second part of the patches impoves gpiolib command verbosity by
first adding an (optional) callback to get_direction of a gpiochip
pin. Based on that new callback, it adds some more printf information
to reflect gpiochip/gpio pin relation and also print current pin
direction and value, if the corresponding callbacks are available.
Finally, the get_direction callback is added to the Synopsys DW gpio
driver.

Sebastian Hesselbarth (4):
  led: trigger: disable LEDs with trigger before installing it
  gpiolib: add get_direction callback
  gpiolib: make gpiolib command more verbose
  gpio: dw: add get_direction callback

 drivers/gpio/gpio-dw.c |  9 +++++++++
 drivers/gpio/gpiolib.c | 24 +++++++++++++++++++++---
 drivers/led/led-gpio.c |  4 +++-
 include/gpio.h         |  4 ++++
 4 files changed, 37 insertions(+), 4 deletions(-)

---
Cc: barebox@lists.infradead.org
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
