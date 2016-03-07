Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acvFc-0004vo-2m
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 13:31:09 +0000
Received: by mail-lb0-x22e.google.com with SMTP id xr8so33352229lbb.1
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 05:30:47 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Mar 2016 16:30:19 +0300
Message-Id: <1457357426-9868-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
References: <1457357426-9868-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 08/15] MIPS: dtb: register only one memory bank
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

From: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/dtb.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
index 23d8979..977c837 100644
--- a/arch/mips/boot/dtb.c
+++ b/arch/mips/boot/dtb.c
@@ -28,11 +28,13 @@ void of_add_memory_bank(struct device_node *node, bool dump, int r,
 {
 	static char str[12];
 
-	sprintf(str, "kseg0_ram%d", r);
-	barebox_add_memory_bank(str, KSEG0 | base, size);
-
-	sprintf(str, "kseg1_ram%d", r);
-	barebox_add_memory_bank(str, KSEG1 | base, size);
+	if (IS_ENABLED(CONFIG_MMU)) {
+		sprintf(str, "kseg0_ram%d", r);
+		barebox_add_memory_bank(str, KSEG0 | base, size);
+	} else {
+		sprintf(str, "kseg1_ram%d", r);
+		barebox_add_memory_bank(str, KSEG1 | base, size);
+	}
 
 	if (dump)
 		pr_info("%s: %s: 0x%llx@0x%llx\n", node->name, str, size, base);
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
