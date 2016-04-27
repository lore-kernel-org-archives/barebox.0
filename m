Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMM4-0001M0-BX
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:06:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4B20FA004FD
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:37 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:48 +0200
Message-Id: <1461751489-13302-15-git-send-email-s.christ@phytec.de>
In-Reply-To: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 14/15] ARM: phytec-som-imx6: adapt main update
 handler for eMMC
To: barebox@lists.infradead.org

Some phyCORE-i.MX6 variants have eMMC instead of a NAND chip. Provide an
update_handler for them.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/board.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 4445b07..40cbcae 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -154,7 +154,14 @@ static int physom_imx6_devices_init(void)
 
 	pr_notice("Using environment in %s\n", envdev);
 
-	imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+	if (of_machine_is_compatible("phytec,imx6q-pcm058-emmc")
+		|| of_machine_is_compatible("phytec,imx6dl-pcm058-emmc")) {
+		imx6_bbu_internal_mmc_register_handler("mmc3",
+						"/dev/mmc3",
+						BBU_HANDLER_FLAG_DEFAULT);
+	} else {
+		imx6_bbu_nand_register_handler("nand", BBU_HANDLER_FLAG_DEFAULT);
+	}
 
 	defaultenv_append_directory(defaultenv_physom_imx6);
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
