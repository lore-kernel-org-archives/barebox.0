Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeiWh-0008D9-3w
 for barebox@lists.infradead.org; Wed, 23 Sep 2015 11:47:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Sep 2015 13:47:21 +0200
Message-Id: <1443008851-26596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] video: imx-ipu-v3: ldb fixes
To: Barebox List <barebox@lists.infradead.org>

Second round to hopefully make Holger happy. This one is tested on the
GuF Santaro board. I tested both the display timings in the panel node
and the ldb node.

Sascha

----------------------------------------------------------------
Sascha Hauer (10):
      video: ipuv3: Do not crash when no mode is found
      video: ipuv3: imx-ldb: remove unused variable
      video: ipuv3: imx-ldb: Support video modes in ldb node
      video: simple-panel: Add debug/error messages
      video: simple-panel: Add support for device tree provided nodes
      video: ipuv3: print error message when no modes are found
      video: backlight-pwm: Add error message
      video: backlight-pwm: Add regulator support
      ARM: i.MX: GuF Santaro: enable PWM
      ARM: i.MX: GuF Santaro: Fix panel support

 arch/arm/dts/imx6q-guf-santaro.dts |  9 ++++--
 drivers/video/backlight-pwm.c      | 17 ++++++++++-
 drivers/video/imx-ipu-v3/imx-ldb.c | 60 +++++++++++++++++---------------------
 drivers/video/imx-ipu-v3/ipufb.c   |  9 +++++-
 drivers/video/simple-panel.c       | 36 +++++++++++++++++++----
 5 files changed, 87 insertions(+), 44 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
