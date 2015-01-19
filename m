Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDJPk-0002h6-4B
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 20:59:13 +0000
Received: by mail-lb0-f172.google.com with SMTP id l4so17457297lbv.3
 for <barebox@lists.infradead.org>; Mon, 19 Jan 2015 12:58:49 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 19 Jan 2015 23:55:40 +0300
Message-Id: <1421700940-703-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] ARM: bcm2835: fix checkpatch warning
To: barebox@lists.infradead.org

Here is checkpatch.pl log:

    WARNING: space prohibited between function name and open parenthesis '('
    #134: FILE: arch/arm/mach-bcm2835/core.c:75:
    +void __noreturn reset_cpu (unsigned long addr)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/mach-bcm2835/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
index 7f3d7e7..5d08012 100644
--- a/arch/arm/mach-bcm2835/core.c
+++ b/arch/arm/mach-bcm2835/core.c
@@ -72,7 +72,7 @@ void bcm2835_add_device_sdram(u32 size)
 }
 #define RESET_TIMEOUT 10
 
-void __noreturn reset_cpu (unsigned long addr)
+void __noreturn reset_cpu(unsigned long addr)
 {
 	uint32_t rstc;
 
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
