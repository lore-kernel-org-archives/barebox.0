Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22c.google.com ([2607:f8b0:400e:c00::22c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoGi-0002y7-Rw
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:43:55 +0000
Received: by mail-pf0-x22c.google.com with SMTP id q1-v6so12550993pff.13
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:43:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:43:16 -0700
Message-Id: <20180612184316.4579-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184316.4579-1-andrew.smirnov@gmail.com>
References: <20180612184316.4579-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/6] ARM: i.MX: zii-vf610-spu3: Add support for BBU on eMMC
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index 6fd49df54..c90644b04 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -20,6 +20,7 @@
 #include <linux/clk.h>
 #include <dt-bindings/clock/vf610-clock.h>
 #include <envfs.h>
+#include <mach/bbu.h>
 
 
 static int expose_signals(const struct gpio *signals,
@@ -147,3 +148,20 @@ static int zii_vf610_dev_set_hostname(void)
 	return 0;
 }
 late_initcall(zii_vf610_dev_set_hostname);
+
+static int zii_vf610_spu3_register_bbu(void)
+{
+	int ret;
+	if (!of_machine_is_compatible("zii,vf610spu3-a"))
+		return 0;
+
+	ret = vf610_bbu_internal_mmc_register_handler("eMMC", "/dev/disk0",
+						      BBU_HANDLER_FLAG_DEFAULT);
+	if (ret) {
+		pr_err("Failed to register eMMC BBU handler\n");
+		return ret;
+	}
+
+	return 0;
+}
+late_initcall(zii_vf610_spu3_register_bbu);
\ No newline at end of file
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
