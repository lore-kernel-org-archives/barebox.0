Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YBer7-0003tE-5O
 for barebox@lists.infradead.org; Thu, 15 Jan 2015 07:28:37 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Thu, 15 Jan 2015 15:28:01 +0800
Message-ID: <1421306882-2188-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH 1/2] ARM: atmel: sama5d4 xplained: correct the name
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Correct the function and board name for sama5d4 xplained board.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 .../arm/boards/sama5d4_xplained/sama5d4_xplained.c | 24 +++++++++++-----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
index fe6876a..62a3c87 100644
--- a/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
+++ b/arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
@@ -245,15 +245,15 @@ static void ek_add_led(void)
 static void ek_add_led(void) {}
 #endif
 
-static int sama5d4ek_mem_init(void)
+static int sama5d4_xplained_mem_init(void)
 {
 	at91_add_device_sdram(0);
 
 	return 0;
 }
-mem_initcall(sama5d4ek_mem_init);
+mem_initcall(sama5d4_xplained_mem_init);
 
-static const struct devfs_partition sama5d4ek_nand0_partitions[] = {
+static const struct devfs_partition sama5d4_xplained_nand0_partitions[] = {
 	{
 		.offset = 0x00000,
 		.size = SZ_256K,
@@ -283,7 +283,7 @@ static const struct devfs_partition sama5d4ek_nand0_partitions[] = {
 	}
 };
 
-static int sama5d4ek_devices_init(void)
+static int sama5d4_xplained_devices_init(void)
 {
 	ek_add_device_i2c();
 	ek_add_device_nand();
@@ -293,27 +293,27 @@ static int sama5d4ek_devices_init(void)
 	ek_add_device_mci();
 	ek_add_device_lcdc();
 
-	devfs_create_partitions("nand0", sama5d4ek_nand0_partitions);
+	devfs_create_partitions("nand0", sama5d4_xplained_nand0_partitions);
 
 	return 0;
 }
-device_initcall(sama5d4ek_devices_init);
+device_initcall(sama5d4_xplained_devices_init);
 
-static int sama5d4ek_console_init(void)
+static int sama5d4_xplained_console_init(void)
 {
-	barebox_set_model("Atmel sama5d4ek");
-	barebox_set_hostname("sama5d4ek");
+	barebox_set_model("Atmel sama5d4_xplained");
+	barebox_set_hostname("sama5d4_xplained");
 
 	at91_register_uart(4, 0);
 
 	return 0;
 }
-console_initcall(sama5d4ek_console_init);
+console_initcall(sama5d4_xplained_console_init);
 
-static int sama5d4ek_main_clock(void)
+static int sama5d4_xplained_main_clock(void)
 {
 	at91_set_main_clock(12000000);
 
 	return 0;
 }
-pure_initcall(sama5d4ek_main_clock);
+pure_initcall(sama5d4_xplained_main_clock);
-- 
2.3.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
