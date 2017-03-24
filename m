Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crV0L-0004fY-PU
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 19:36:11 +0000
Received: by mail-wr0-x244.google.com with SMTP id 20so1853113wrx.0
 for <barebox@lists.infradead.org>; Fri, 24 Mar 2017 12:35:46 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Fri, 24 Mar 2017 20:35:22 +0100
Message-Id: <1490384122-13960-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] openrisc: fix call to restart_handler_register_fn
To: barebox@lists.infradead.org

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/cpu/cpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/openrisc/cpu/cpu.c b/arch/openrisc/cpu/cpu.c
index d52b021..e7f9445 100644
--- a/arch/openrisc/cpu/cpu.c
+++ b/arch/openrisc/cpu/cpu.c
@@ -41,6 +41,6 @@ static void __noreturn openrisc_restart_cpu(struct restart_handler *rst)
 
 static int restart_register_feature(void)
 {
-	restart_handler_register_fn(openrisc_restart_cpu, NULL, RESET_SCOPE_CPU);
+	return restart_handler_register_fn(openrisc_restart_cpu);
 }
 coredevice_initcall(restart_register_feature);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
