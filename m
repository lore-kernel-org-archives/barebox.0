Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x235.google.com ([2a00:1450:400c:c09::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrUG-00042W-AD
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:54 +0000
Received: by wmdw130 with SMTP id w130so31973515wmd.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:27 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:12 +0100
Message-Id: <1448048172-10080-20-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1448048172-10080-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 19/19] mtd: nand_mrvl_nfc: Add optimized timings for
 Samsung K9K8G08U
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

This adds optimized timings for Samsung K9K8G08U 1Gb NAND flash.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index ce5786c01920..284a3b68822a 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -331,6 +331,7 @@ static struct mrvl_nand_timing timings[] = {
 	{ 0x46ec, 10,  0, 20,  40, 30,  40, 11123, 110, 10, },
 	{ 0xdaec, 10,  0, 20,  40, 30,  40, 11123, 110, 10, },
 	{ 0xd7ec, 10,  0, 20,  40, 30,  40, 11123, 110, 10, },
+	{ 0xd3ec,  5, 20, 10,  12, 10,  12, 25000,  60, 10, },
 	{ 0xa12c, 10, 25, 15,  25, 15,  30, 25000,  60, 10, },
 	{ 0xb12c, 10, 25, 15,  25, 15,  30, 25000,  60, 10, },
 	{ 0xdc2c, 10, 25, 15,  25, 15,  30, 25000,  60, 10, },
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
