Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbg512.qq.com ([203.205.250.48] helo=smtpbg.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6AoG-0003Wj-LR
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 09:45:44 +0000
From: iu87m888m@qq.com
Date: Fri,  6 Sep 2019 17:45:15 +0800
Message-Id: <1567763115-11597-1-git-send-email-iu87m888m@qq.com>
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
Subject: [PATCH] CONFIG_PBL_BREAK option is available for MIPS
To: barebox@lists.infradead.org
Cc: DU HUANPENG <u74147@gmail.com>

From: DU HUANPENG <u74147@gmail.com>

Signed-off-by: DU HUANPENG <u74147@gmail.com>
---
 common/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 8aad5ba..a86b5e8 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1290,7 +1290,7 @@ config DEBUG_INITCALLS
 
 config PBL_BREAK
 	bool "Execute software break on pbl start"
-	depends on ARM
+	depends on ARM || MIPS
 	help
 	  If this enabled, barebox will be compiled with BKPT instruction
 	  on early pbl init. This option should be used only with JTAG debugger!
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
