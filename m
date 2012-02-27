Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay04.ispgateway.de ([80.67.31.31])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S220e-00041P-Uv
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 14:57:06 +0000
From: Asen Chavdarov Dimov <dimov@ronetix.at>
Date: Mon, 27 Feb 2012 16:57:27 +0200
Message-Id: <1330354647-13944-1-git-send-email-dimov@ronetix.at>
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
Subject: [PATCH] Typo fix in pm9261 init file
To: barebox@lists.infradead.org

Fixing this typo lets the barebox for pm9261 to be build.

Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
---
 arch/arm/boards/pm9261/init.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 23ed44e..f7f2928 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -123,7 +123,7 @@ static void __init pm_add_device_dm9000(void)
 			  IORESOURCE_MEM_16BIT, &dm9000_data);
 }
 #else
-static void __init ek_add_device_dm9000(void) {}
+static void __init pm_add_device_dm9000(void) {}
 #endif /* CONFIG_DRIVER_NET_DM9K */
 
 static int pm9261_mem_init(void)
-- 
1.7.4.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
