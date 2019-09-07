Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kVb-0002Fr-Co
 for barebox@lists.infradead.org; Sat, 07 Sep 2019 23:52:48 +0000
Received: by mail-pf1-x442.google.com with SMTP id x127so6846616pfb.7
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 16:52:44 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 16:52:36 -0700
Message-Id: <20190907235236.20324-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] eeprom: at24: Select NVMEM as a dependency
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

NVMEM subsystem is now a mandatory dependecy for EEPROM_AT24.

Fixes: 815e7140de ("eeprom: at24: Convert the driver to NVMEM")
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/eeprom/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/eeprom/Kconfig b/drivers/eeprom/Kconfig
index 0e36c824ec..6a71c12f4e 100644
--- a/drivers/eeprom/Kconfig
+++ b/drivers/eeprom/Kconfig
@@ -9,6 +9,7 @@ config EEPROM_AT25
 	  on your target board.
 
 config EEPROM_AT24
+        select NVMEM
 	bool "at24 based eeprom"
 	depends on I2C
 	help
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
