Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.171])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SqjfQ-0000Zp-3T
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 11:40:49 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Mon, 16 Jul 2012 13:40:28 +0200
Message-Id: <1342438830-30214-1-git-send-email-christian.kapeller@cmotion.eu>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] imx: add matrix keypad (kpp) input driver
To: barebox@lists.infradead.org

This patchset adds support for the imx matrix keypad peripheral (kpp). I've
fleshed out the linux keypad driver, and remodeled it after the gpio_keys
driver.

Currently platform helper functions are only provided for the imx51.

Christian Kapeller (2):
  input: Add i.MX matrix keypad driver
  input: add i.MX51 platform code for matrix keypad driver

 arch/arm/mach-imx/devices.c                    |    5 +
 arch/arm/mach-imx/include/mach/devices-imx51.h |    4 +
 arch/arm/mach-imx/include/mach/devices.h       |    2 +
 drivers/input/Kconfig                          |   13 +
 drivers/input/Makefile                         |    1 +
 drivers/input/imx_keypad.c                     |  463 ++++++++++++++++++++++++
 include/matrix_keypad.h                        |   59 +++
 7 files changed, 547 insertions(+), 0 deletions(-)
 create mode 100644 drivers/input/imx_keypad.c
 create mode 100644 include/matrix_keypad.h

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
