Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDt64-0000RX-Gi
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:00:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:00:16 +0100
Message-Id: <1392285621-17485-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: PWM patches
To: barebox@lists.infradead.org

This adds a logical device to the pwm chip so that users no longer
interact with the hardware device. Also adds an i.MX PWM driver.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      PWM: Use a separate device for PWMs
      PWM: pxa: use pwmx as devname
      ARM: i.MX6: Add PWM clk lookups
      ARM: dts: i.MX6: Add pwm aliases
      PWM: Add i.MX PWM driver

 arch/arm/dts/imx6qdl.dtsi    |   4 +
 arch/arm/mach-imx/clk-imx6.c |   4 +
 drivers/pwm/Kconfig          |   6 +
 drivers/pwm/Makefile         |   3 +-
 drivers/pwm/core.c           |  20 +++-
 drivers/pwm/pwm-imx.c        | 269 +++++++++++++++++++++++++++++++++++++++++++
 drivers/pwm/pxa_pwm.c        |   2 +-
 7 files changed, 301 insertions(+), 7 deletions(-)
 create mode 100644 drivers/pwm/pwm-imx.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
