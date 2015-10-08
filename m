Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZkJKx-0000WF-3f
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:55 +0000
Received: by wiclk2 with SMTP id lk2so47138583wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:33 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:19 +0200
Message-Id: <1444341979-19157-18-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 17/17] mtd: nand_mrvl_nfc: Add optimized timings for Samsung
 K9K8G08U
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

This adds optimized timings for Samsung K9K8G08U 1Gb NAND flash.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 07dc1bdbe6cf..bf0e5e534e32 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -321,6 +321,7 @@ static struct mrvl_nand_timing timings[] = {
 	{ 0x46ec, 10,  0, 20,  40, 30,  40, 11123, 110, 10, },
 	{ 0xdaec, 10,  0, 20,  40, 30,  40, 11123, 110, 10, },
 	{ 0xd7ec, 10,  0, 20,  40, 30,  40, 11123, 110, 10, },
+	{ 0xd3ec,  5, 20, 10,  12, 10,  12, 25000,  60, 10, },
 	{ 0xa12c, 10, 25, 15,  25, 15,  30, 25000,  60, 10, },
 	{ 0xb12c, 10, 25, 15,  25, 15,  30, 25000,  60, 10, },
 	{ 0xdc2c, 10, 25, 15,  25, 15,  30, 25000,  60, 10, },
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
