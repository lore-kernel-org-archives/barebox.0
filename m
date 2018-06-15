Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTgEm-00078G-CN
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:21:25 +0000
Received: by mail-pl0-x242.google.com with SMTP id c23-v6so4668677plz.12
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:21:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:21:01 -0700
Message-Id: <20180615042102.12345-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180615042102.12345-1-andrew.smirnov@gmail.com>
References: <20180615042102.12345-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] ARM: psci: Make use of set_ttbr() in
 armv7_secure_monitor_install()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/sm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index 5808dfd92..b0bf16405 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -193,8 +193,7 @@ int armv7_secure_monitor_install(void)
 	armv7_init_nonsec();
 	__armv7_secure_monitor_install();
 
-	asm volatile ("mcr p15, 0, %0, c2, c0, 0" : : "r"(ttb));
-
+	set_ttbr((void *)ttb);
 	set_vbar(vbar);
 
 	if (mmuon) {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
