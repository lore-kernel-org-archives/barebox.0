Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk6Fo-0006s3-Cm
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 09:13:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 11:12:39 +0200
Message-Id: <1473844368-13030-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
References: <1473844368-13030-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] ARM: i.MX53 Vincell: Adjust bbu handler partition size
 to real partition size
To: Barebox List <barebox@lists.infradead.org>

The bootloader partition size was increased to 0xe0000, so adjust
the barebox update handler partition size accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-vincell/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index ee5be10..007b6dd 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -41,7 +41,7 @@ static int vincell_devices_init(void)
 	clk_set_rate(clk_lookup("nfc_podf"), 33333334);
 
 	imx53_bbu_internal_nand_register_handler("nand",
-		BBU_HANDLER_FLAG_DEFAULT, SZ_512K);
+		BBU_HANDLER_FLAG_DEFAULT, 0xe0000);
 
 	return 0;
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
