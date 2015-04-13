Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YhlPR-0007P3-RK
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 20:56:47 +0000
Received: by lbcga7 with SMTP id ga7so69372389lbc.1
 for <barebox@lists.infradead.org>; Mon, 13 Apr 2015 13:56:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 13 Apr 2015 23:56:41 +0300
Message-Id: <1428958601-28506-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] mtd: m25p80: import ID for Winbond W25Q128FVSSI from linux
To: barebox@lists.infradead.org

Winbond W25Q128FVSSI chip is used in Black Swift board,
(see http://www.black-swift.com for details).

Black Swift can run barebox for TP-LINK MR3020.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/mtd/devices/m25p80.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 095a4ca..efef984 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -743,6 +743,7 @@ static const struct platform_device_id m25p_ids[] = {
 	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
 	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
+	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
 
 	/* Catalyst / On Semiconductor -- non-JEDEC */
 	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1) },
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
