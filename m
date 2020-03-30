Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvqv-0000pk-NV
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:57:27 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id D580040003
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:57:22 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:57:05 +0200
Message-Id: <20200330145717.667403-1-ahmad@a3f.at>
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
Subject: [PATCH 00/12] PWM: add support for ->apply, polarity and STM32
To: barebox@lists.infradead.org

Hi,

- Port Linux apply API to make porting future PWM drivers easier
- Remove duplicated PWM state, so device variables can be used to query
  and influence actual configuration
- Add support for PWM polarity
- Add support for STM32

Cheers,
Ahmad Fatoum (12):
  led: pwm: always initialize PWM LEDs as inactive
  PWM: core: remove FLAG_ENABLED
  PWM: core: remove ineffectual pwm_{set,get}_duty_cycle
  PWM: core: group PWM state into new struct pwm_state
  PWM: core: remove old PWM API in favor of Linux ->apply
  PWM: core: retire pwm_set_period
  PWM: core: apply initial state in of_pwm_request
  video: backlight-pwm: use new pwm_apply_state API
  led: pwm: use new pwm_apply_state API
  PWM: core: add apply API support for polarity
  of: introduce of_property_count_elems_of_size
  PWM: add support for STM32

 arch/arm/dts/stm32mp151.dtsi     |  12 +
 drivers/led/led-pwm.c            |  19 +-
 drivers/mfd/Kconfig              |   7 +
 drivers/mfd/Makefile             |   1 +
 drivers/mfd/stm32-timers.c       |  74 ++++++
 drivers/of/base.c                |  32 +++
 drivers/pwm/Kconfig              |   6 +
 drivers/pwm/Makefile             |   1 +
 drivers/pwm/core.c               | 178 ++++++++++----
 drivers/pwm/pwm-imx.c            |  32 +--
 drivers/pwm/pwm-mxs.c            |  37 ++-
 drivers/pwm/pwm-stm32.c          | 400 +++++++++++++++++++++++++++++++
 drivers/pwm/pxa_pwm.c            |  93 +++----
 drivers/video/backlight-pwm.c    |  13 +-
 include/linux/mfd/stm32-timers.h |  97 ++++++++
 include/of.h                     |   8 +
 include/pwm.h                    |  62 +++--
 17 files changed, 917 insertions(+), 155 deletions(-)
 create mode 100644 drivers/mfd/stm32-timers.c
 create mode 100644 drivers/pwm/pwm-stm32.c
 create mode 100644 include/linux/mfd/stm32-timers.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
