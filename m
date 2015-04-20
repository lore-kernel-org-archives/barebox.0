Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x233.google.com ([2607:f8b0:400e:c02::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkAyE-000290-VS
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 12:38:39 +0000
Received: by pdbnk13 with SMTP id nk13so206568021pdb.0
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 05:38:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 20 Apr 2015 05:38:11 -0700
Message-Id: <1429533491-5705-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/2] firmware: socfpga: Add necessary dependency to Kconfig
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/firmware/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 15465fe..710b500 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -13,5 +13,5 @@ config FIRMWARE_ALTERA_SERIAL
 config FIRMWARE_ALTERA_SOCFPGA
 	bool "Altera SoCFPGA fpga loader"
 	depends on ARCH_SOCFPGA
-
+	select FIRMWARE
 endmenu
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
