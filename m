Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzeTH-0007sN-Az
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 10:01:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1hzeTC-0003nB-2K
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 12:00:58 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1hzeTB-0000KI-LI
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 12:00:57 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 19 Aug 2019 12:00:49 +0200
Message-Id: <20190819100049.6053-4-s.trumtrar@pengutronix.de>
In-Reply-To: <20190819100049.6053-1-s.trumtrar@pengutronix.de>
References: <20190819100049.6053-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: achilles: add bbu handler
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/board.c | 26 +++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/boards/reflex-achilles/board.c b/arch/arm/boards/reflex-achilles/board.c
index 29011ba5784e..2b8186e19f40 100644
--- a/arch/arm/boards/reflex-achilles/board.c
+++ b/arch/arm/boards/reflex-achilles/board.c
@@ -6,6 +6,8 @@
 static int achilles_init(void)
 {
 	int pbl_index = 0;
+	uint32_t flag_barebox1 = 0;
+	uint32_t flag_barebox2 = 0;
 
 	if (!of_machine_is_compatible("reflex,achilles"))
 		return 0;
@@ -14,6 +16,30 @@ static int achilles_init(void)
 
 	pr_debug("Current barebox instance %d\n", pbl_index);
 
+	switch (pbl_index) {
+	case 0:
+		flag_barebox1 |= BBU_HANDLER_FLAG_DEFAULT;
+		break;
+	case 1:
+		flag_barebox2 |= BBU_HANDLER_FLAG_DEFAULT;
+		break;
+	};
+
+	bbu_register_std_file_update("emmc-barebox1-xload", flag_barebox1,
+					"/dev/disk0.barebox1-xload",
+					filetype_socfpga_xload);
+
+	bbu_register_std_file_update("emmc-barebox1", 0,
+					"/dev/disk0.barebox1",
+					filetype_arm_barebox);
+
+	bbu_register_std_file_update("emmc-barebox2-xload", flag_barebox2,
+					"/dev/disk0.barebox2-xload",
+					filetype_socfpga_xload);
+
+	bbu_register_std_file_update("emmc-barebox2", 0,
+					"/dev/disk0.barebox2",
+					filetype_arm_barebox);
 	return 0;
 }
 postcore_initcall(achilles_init);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
