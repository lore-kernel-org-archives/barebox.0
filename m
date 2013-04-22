Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUCVh-0001TX-W2
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 08:54:07 +0000
Received: from mailout-de.gmx.net ([10.1.76.27]) by mrigmx.server.lan
 (mrigmx002) with ESMTP (Nemesis) id 0Lv7rY-1UdJ6327SE-010Q5d for
 <barebox@lists.infradead.org>; Mon, 22 Apr 2013 10:54:01 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Mon, 22 Apr 2013 10:53:50 +0200
Message-Id: <1366620830-8574-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 1/3] cfi_flash: add shift option for some cfi memory chips
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <bug-track@fisher-privat.net>

From: Oleksij Rempel <bug-track@fisher-privat.net>

Many cfi chips support 16 and 8 bit modes. Most important
difference is use of so called "Q15/A-1" pin. In 16bit mode this
pin is used for data IO. In 8bit mode, it is an address input
which add one more least significant bit (LSB). In this case
we should shift all adresses by one:
For example 0xaa << 1 = 0x154
---
 drivers/nor/Kconfig     |    8 ++++++++
 drivers/nor/cfi_flash.h |    4 ++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/nor/Kconfig b/drivers/nor/Kconfig
index c8ce24f..b556b0c 100644
--- a/drivers/nor/Kconfig
+++ b/drivers/nor/Kconfig
@@ -50,6 +50,14 @@ config DRIVER_CFI_BANK_WIDTH_8
 	  If you wish to support CFI devices on a physical bus which is
 	  64 bits wide, say 'Y'.
 
+config DRIVER_CFI_BANK_SHIFT_1
+	bool "Shift addressspace of flash at one bit"
+	depends on DRIVER_CFI
+	default n
+	help
+	  If you have flash with enabled LSB bit, then you
+	  wont to enable this function.
+
 config CFI_BUFFER_WRITE
 	bool "use cfi driver with buffer write"
 	depends on DRIVER_CFI || DRIVER_CFI
diff --git a/drivers/nor/cfi_flash.h b/drivers/nor/cfi_flash.h
index 8f818ba..6c7cac4 100644
--- a/drivers/nor/cfi_flash.h
+++ b/drivers/nor/cfi_flash.h
@@ -295,7 +295,11 @@ static inline u64 flash_read64(void *addr)
  */
 static inline uchar *flash_make_addr (struct flash_info *info, flash_sect_t sect, uint offset)
 {
+#ifdef CONFIG_DRIVER_CFI_BANK_SHIFT_1
+	return ((uchar *) (info->start[sect] + (offset * info->portwidth << 1)));
+#else
 	return ((uchar *) (info->start[sect] + (offset * info->portwidth)));
+#endif
 }
 
 uchar flash_read_uchar (struct flash_info *info, uint offset);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
