Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eF6Di-0003ZH-Vk
 for barebox@lists.infradead.org; Wed, 15 Nov 2017 22:31:48 +0000
Received: by mail-pf0-x242.google.com with SMTP id i15so7731789pfa.3
 for <barebox@lists.infradead.org>; Wed, 15 Nov 2017 14:31:26 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 15 Nov 2017 14:31:15 -0800
Message-Id: <20171115223115.29004-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] boards/zii-vf610-dev: Do not keep 'SOC_SW_RSTN' low
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

From users feedback, it's not very practical keep 'SOC_SW_RSTN' low
and corresponding Ethernet switch it controls in reset. Change the
code to keep the line high by default.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index eea3828aa..6fd49df54 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -64,7 +64,7 @@ static int zii_vf610_cfu1_spu3_expose_signals(void)
 	static const struct gpio signals[] = {
 		{
 			.gpio  = 107,
-			.flags  = GPIOF_OUT_INIT_LOW,
+			.flags  = GPIOF_OUT_INIT_HIGH,
 			.label = "soc_sw_rstn",
 		},
 		{
-- 
2.13.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
