Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bOHBk-0003VW-Qo
 for barebox@lists.infradead.org; Sat, 16 Jul 2016 04:26:54 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 16 Jul 2016 07:26:19 +0300
Message-Id: <1468643181-10784-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] ARM: clps711x: clep7212: Increase the wait state for chip
 select 3
To: barebox@lists.infradead.org

CS3 is used for a variety of external bus devices.
Increase the wait state for this chip select for the possibility
of more widespread use.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/clep7212/clep7212.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/clep7212/clep7212.c b/arch/arm/boards/clep7212/clep7212.c
index de125ea..dfdd0d3 100644
--- a/arch/arm/boards/clep7212/clep7212.c
+++ b/arch/arm/boards/clep7212/clep7212.c
@@ -30,7 +30,7 @@ static int clps711x_devices_init(void)
 	clps711x_setup_memcfg(1, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_8);
 	clps711x_setup_memcfg(2, MEMCFG_WAITSTATE_8_3 | MEMCFG_BUS_WIDTH_16 |
 			      MEMCFG_CLKENB);
-	clps711x_setup_memcfg(3, MEMCFG_WAITSTATE_6_1 | MEMCFG_BUS_WIDTH_32);
+	clps711x_setup_memcfg(3, MEMCFG_WAITSTATE_7_1 | MEMCFG_BUS_WIDTH_32);
 
 	cfi_io = map_io_sections(CS0_BASE, (void *)0x90000000, SZ_32M);
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, (unsigned long)cfi_io, SZ_32M,
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
