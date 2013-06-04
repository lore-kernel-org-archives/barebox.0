Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-x231.google.com ([2607:f8b0:400e:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjgIP-0007T3-G4
 for barebox@lists.infradead.org; Tue, 04 Jun 2013 01:44:22 +0000
Received: by mail-pb0-f49.google.com with SMTP id jt11so2373592pbb.36
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2013 18:43:56 -0700 (PDT)
Message-ID: <1370310232.7191.3.camel@phoenix>
From: Axel Lin <axel.lin@ingics.com>
Date: Tue, 04 Jun 2013 09:43:52 +0800
Mime-Version: 1.0
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
Subject: [PATCH] tegra: fix off-by-one array boundary checking for
 uart_id_to_base
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

id is used as array subscript, so it's valid value range is 0 ... ARRAY_SIZE -1.

Signed-off-by: Axel Lin <axel.lin@ingics.com>
---
 arch/arm/mach-tegra/include/mach/lowlevel.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index b7c01c0..361b12e 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -136,7 +136,7 @@ static inline long tegra20_get_debuguart_base(void)
 		return 0;
 
 	id = (odmdata & T20_ODMDATA_UARTID_MASK) >> T20_ODMDATA_UARTID_SHIFT;
-	if (id > ARRAY_SIZE(uart_id_to_base))
+	if (id >= ARRAY_SIZE(uart_id_to_base))
 		return 0;
 
 	return uart_id_to_base[id];
-- 
1.8.1.2




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
