Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrX8t-0001JN-UY
	for barebox@lists.infradead.org; Thu, 11 Aug 2011 15:25:56 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 1D8B310085FF
	for <barebox@lists.infradead.org>;
	Thu, 11 Aug 2011 17:26:05 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 11 Aug 2011 17:07:04 +0200
Message-Id: <1313075225-27280-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1313075225-27280-1-git-send-email-plagnioj@jcrosoft.com>
References: <1313075225-27280-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] nomadik: fix static allocation clkdev
To: barebox@lists.infradead.org

it's DEV_ID not CON_ID

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-nomadik/8815.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 3138045..69aacd5 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -37,8 +37,8 @@ void st8815_add_device_sdram(u32 size)
 }
 
 static struct clk_lookup clocks_lookups[] = {
-	CLKDEV_CON_ID("uart-pl0110", &st8815_clk_48),
-	CLKDEV_CON_ID("uart-pl0111", &st8815_clk_48),
+	CLKDEV_DEV_ID("uart-pl0110", &st8815_clk_48),
+	CLKDEV_DEV_ID("uart-pl0111", &st8815_clk_48),
 };
 
 static int st8815_clkdev_init(void)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
