Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUkt1-00062h-9p
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 21:04:12 +0000
Received: from mail635.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 52417FF9CAB
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 22:14:43 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Nov 2012 22:02:02 +0100
Message-Id: <1351976522-9785-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] at91sam9x5ek: add at24c512 support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
Hi,

	this depends on the at24 support patch serie + at91sam9x5ek add i2c
	with qt1070 support

The following changes since commit 9277684dbac6ae0b66f23bcb730a9737d22a335c:

  eeprom: add at24 support (2012-11-03 13:41:58 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91_i2c

for you to fetch changes up to 706c6d5c382803959e89218bb0ffb0890cf885cd:

  at91sam9x5ek: add at24c512 support (2012-11-03 13:44:16 +0800)

Jean-Christophe PLAGNIOL-VILLARD (1):
      at91sam9x5ek: add at24c512 support

 arch/arm/boards/at91sam9x5ek/init.c     |    2 ++
 arch/arm/configs/at91sam9x5ek_defconfig |    1 +
 2 files changed, 3 insertions(+)

Best Regards,
J.

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index dbb9bb5..dc8853e 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -122,6 +122,8 @@ static struct i2c_board_info i2c_devices[] = {
 	{
 		.platform_data = &qt1070_pdata,
 		I2C_BOARD_INFO("qt1070", 0x1b),
+	}, {
+		I2C_BOARD_INFO("24c512", 0x51)
 	},
 };
 
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index 3e66c44..cbbd780 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -67,6 +67,7 @@ CONFIG_DISK_WRITE=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_EEPROM_AT24=y
 CONFIG_KEYBOARD_QT1070=y
 CONFIG_W1=y
 CONFIG_W1_MASTER_GPIO=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
