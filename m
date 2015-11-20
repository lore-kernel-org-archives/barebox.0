Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x233.google.com ([2a00:1450:400c:c09::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZzrUD-00040C-B7
 for barebox@lists.infradead.org; Fri, 20 Nov 2015 19:36:53 +0000
Received: by wmdw130 with SMTP id w130so31971770wmd.0
 for <barebox@lists.infradead.org>; Fri, 20 Nov 2015 11:36:23 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 20 Nov 2015 20:36:01 +0100
Message-Id: <1448048172-10080-9-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 08/19] mtd: nand_mrvl_nfc: Use Auto Read Status on
 program/erase
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Marvell NAND controller allows to enable an Auto Read Status feature
that will automatically monitor NAND status during Erase and Program
operations. Ready bit in status register will be set after the
controller is sure the NAND device has finished the operation and
saves us from guessing the real timeout values.

Using the Auto Read Status feature prevents timeout issues on the
two operations with none or wrong timing register setup.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Tested-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/nand/nand_mrvl_nfc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/nand/nand_mrvl_nfc.c b/drivers/mtd/nand/nand_mrvl_nfc.c
index 60c34c21af25..ac530fc62499 100644
--- a/drivers/mtd/nand/nand_mrvl_nfc.c
+++ b/drivers/mtd/nand/nand_mrvl_nfc.c
@@ -562,6 +562,7 @@ static int prepare_set_command(struct mrvl_nand_host *host, int command,
 
 	case NAND_CMD_PAGEPROG:
 		host->ndcb0 |= NDCB0_CMD_TYPE(0x1)
+				| NDCB0_AUTO_RS
 				| NDCB0_DBC
 				| (NAND_CMD_PAGEPROG << 8)
 				| NAND_CMD_SEQIN
@@ -599,6 +600,7 @@ static int prepare_set_command(struct mrvl_nand_host *host, int command,
 
 	case NAND_CMD_ERASE1:
 		host->ndcb0 |= NDCB0_CMD_TYPE(2)
+				| NDCB0_AUTO_RS
 				| NDCB0_ADDR_CYC(3)
 				| NDCB0_DBC
 				| (NAND_CMD_ERASE2 << 8)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
