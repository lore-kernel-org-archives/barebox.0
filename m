Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTgEl-000786-9H
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:21:24 +0000
Received: by mail-pl0-x241.google.com with SMTP id z9-v6so4673618plk.11
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:21:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:21:00 -0700
Message-Id: <20180615042102.12345-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] ARM: psci: Remove unused code in psci_entry()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Remove what looks like a leftover code that doesn't appear to be
referenced anywhere.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/psci.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index 435ec92cc..f63f66855 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -139,12 +139,6 @@ static unsigned long psci_system_reset(void)
 void psci_entry(u32 r0, u32 r1, u32 r2, u32 r3, u32 r4, u32 r5, u32 r6,
 		struct arm_smccc_res *res)
 {
-	int mmuon;
-	unsigned long ttb;
-
-	mmuon = get_cr() & CR_M;
-	asm volatile ("mrc p15, 0, %0, c2, c0, 0" : "=r"(ttb));
-
 	psci_printf("%s entry, function: 0x%08x\n", __func__, r0);
 
 	switch (r0) {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
