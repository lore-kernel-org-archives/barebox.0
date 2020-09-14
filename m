Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHlND-00044n-FH
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 10:06:12 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 12:05:51 +0200
Message-Id: <20200914100553.24808-5-a.fatoum@pengutronix.de>
In-Reply-To: <20200914100553.24808-1-a.fatoum@pengutronix.de>
References: <20200914100553.24808-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 5/7] sandbox: fix SANDBOX_UNWIND dependency to be KASAN
 only
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

gcc v9.3.0's libubsan does not export a __sanitizer_print_stack_trace
symbol. Play it safe and avoid possible linker errors by having the
optional SANDBOX_UNWIND depend only on CONFIG_KASAN.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 40e04919d21e..c4d0ab4dbcde 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -22,7 +22,7 @@ config SANDBOX_UNWIND
 	bool
 	default y
 	select ARCH_HAS_STACK_DUMP
-	depends on UBSAN || KASAN
+	depends on KASAN
 
 config PHYS_ADDR_T_64BIT
 	bool
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
