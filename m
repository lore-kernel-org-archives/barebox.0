Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfG9-0005V0-Rn
 for barebox@lists.infradead.org; Thu, 06 Feb 2020 11:23:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  6 Feb 2020 12:23:26 +0100
Message-Id: <20200206112334.14314-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/8] PWM: misc fixes
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Some stuff I ran into while refactoring barebox PWM to be more
welcoming for porting kernel drivers using the kernel atomic
PWM API. Driver will follow soon.

Cheers,
Ahmad Fatoum (8):
  PWM: pxa: remove unused struct members
  PWM: pxa: make MMIO writes always little endian
  regmap: forward declare structs used in header
  video: backlight-pwm: remove duplicate assignment to object
  led: pwm: don't test if pointer is smaller than zero
  led: pwm: fail if required max-brightness option is missing
  led: pwm: support active-low property
  PWM: core: constify chip->ops pointer

 drivers/led/led-pwm.c         | 10 ++++++++--
 drivers/pwm/pxa_pwm.c         | 11 +++--------
 drivers/video/backlight-pwm.c |  2 --
 include/pwm.h                 |  2 +-
 include/regmap.h              |  3 +++
 5 files changed, 15 insertions(+), 13 deletions(-)

-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
