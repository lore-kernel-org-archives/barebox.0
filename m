Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp23.mail.ru ([94.100.176.176])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WH7Ez-0001yN-Nh
 for barebox@lists.infradead.org; Sat, 22 Feb 2014 07:43:19 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 22 Feb 2014 11:42:49 +0400
Message-Id: <1393054969-25221-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: clps711x: Remove SYSCON3 handling
To: barebox@lists.infradead.org

SYSCON3 register is not used in the barebox, so remove driver for
this register entirely.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/devices.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index c7a2fbd..e27476d 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -124,9 +124,6 @@ static __init int clps711x_syscon_init(void)
 	/* SYSCON2, SYSFLG2 */
 	add_generic_device("syscon", 2, NULL, SYSCON2, SZ_128,
 			   IORESOURCE_MEM, NULL);
-	/* SYSCON3 */
-	add_generic_device("syscon", 3, NULL, SYSCON3, SZ_64,
-			   IORESOURCE_MEM, NULL);
 
 	return 0;
 }
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
