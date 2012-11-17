Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZefL-0004Mi-6P
 for barebox@lists.infradead.org; Sat, 17 Nov 2012 09:26:19 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so2524470lag.36
 for <barebox@lists.infradead.org>; Sat, 17 Nov 2012 01:26:17 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 17 Nov 2012 13:26:00 +0400
Message-Id: <1353144361-9089-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1353144361-9089-1-git-send-email-antonynpavlov@gmail.com>
References: <1353144361-9089-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] ARM: start-pbl.c: make errorfn() static
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/cpu/start-pbl.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 609aedb..79a3cdd 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -127,7 +127,7 @@ static void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-void noinline errorfn(char *error)
+static void noinline errorfn(char *error)
 {
 	while (1);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
