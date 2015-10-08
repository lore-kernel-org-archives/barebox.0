Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkJKt-0001mc-Ky
 for barebox@lists.infradead.org; Thu, 08 Oct 2015 22:06:53 +0000
Received: by wicge5 with SMTP id ge5so44530692wic.0
 for <barebox@lists.infradead.org>; Thu, 08 Oct 2015 15:06:31 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  9 Oct 2015 00:06:09 +0200
Message-Id: <1444341979-19157-8-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 07/17] mtd: nand_mrvl_nfc: Use Auto Read Status on
 program/erase
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Marvell NAND controller allows to enable an Auto Read Status feature
that will monitor NAND status during Erase and Program operations.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index b10d449da444..9d1803ccc6ba 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -561,6 +561,7 @@ static int prepare_set_command(struct mrvl_nand_host *host, int command,
 
 	case NAND_CMD_PAGEPROG:
 		host->ndcb0 |= NDCB0_CMD_TYPE(0x1)
+				| NDCB0_AUTO_RS
 				| NDCB0_DBC
 				| (NAND_CMD_PAGEPROG << 8)
 				| NAND_CMD_SEQIN
@@ -598,6 +599,7 @@ static int prepare_set_command(struct mrvl_nand_host *host, int command,
 
 	case NAND_CMD_ERASE1:
 		host->ndcb0 |= NDCB0_CMD_TYPE(2)
+				| NDCB0_AUTO_RS
 				| NDCB0_ADDR_CYC(3)
 				| NDCB0_DBC
 				| (NAND_CMD_ERASE2 << 8)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
