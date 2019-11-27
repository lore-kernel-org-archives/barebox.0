Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvJH-0004Hb-EF
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:16:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:16:09 +0100
Message-Id: <20191127111613.24173-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 0/4] support for gpio-line-names
To: Barebox List <barebox@lists.infradead.org>

Linux supports the device tree property "gpio-line-names" which allows
it name GPIOs from the device tree. This adds support for this property
to barebox as well. With this the gpio commands not only accept a GPIO
label (which is given by the requester of the GPIO), but also a GPIO
name.

Sascha Hauer (4):
  of: Add of_property_read_string_array()
  gpio: Introduce GPIO names
  of/gpio: Support gpio-line-names property
  ARM: Layerscape: TQMLS1046a: Add gpio-line-names

 arch/arm/dts/fsl-tqmls1046a-mbls10xxa.dts |  48 +++++++++
 commands/gpio.c                           |   4 +-
 drivers/gpio/gpiolib.c                    |  47 +++++++--
 drivers/of/base.c                         | 122 +++++++---------------
 include/gpio.h                            |   6 ++
 include/of.h                              |  83 ++++++++++++---
 6 files changed, 204 insertions(+), 106 deletions(-)

-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
