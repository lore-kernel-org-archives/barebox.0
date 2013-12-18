Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJO3-0001oZ-2H
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:50:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:49:52 +0100
Message-Id: <1387381792-12472-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: bbu external nand: Fix uninitialized variable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-external-nand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx-bbu-external-nand.c b/arch/arm/mach-imx/imx-bbu-external-nand.c
index f0e9dd1..401b324 100644
--- a/arch/arm/mach-imx/imx-bbu-external-nand.c
+++ b/arch/arm/mach-imx/imx-bbu-external-nand.c
@@ -40,7 +40,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
 	int size_available, size_need;
 	int ret;
 	uint32_t num_bb = 0, bbt = 0;
-	uint64_t offset;
+	uint64_t offset = 0;
 	int block = 0, len, now, blocksize;
 	void *image = data->image;
 
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
