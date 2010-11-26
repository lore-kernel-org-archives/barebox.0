Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4PU-0002tO-KA
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:45 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:33 +0100
Message-Id: <1290801161-2417-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101126194353.GH26540@game.jcrosoft.org>
References: <20101126194353.GH26540@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/12] cfi_flash: use amd and standard reset flash command at
	probing
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>

as we do not known which flash we have yet

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 0efe0d4..fb5935e 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -279,7 +279,8 @@ static int flash_detect_cfi (struct flash_info *info)
 		for (info->chipwidth = FLASH_CFI_BY8;
 		     info->chipwidth <= info->portwidth;
 		     info->chipwidth <<= 1) {
-			flash_write_cmd (info, 0, 0, info->cmd_reset);
+			flash_write_cmd (info, 0, 0, AMD_CMD_RESET);
+			flash_write_cmd (info, 0, 0, FLASH_CMD_RESET);
 			for (cfi_offset=0; cfi_offset < sizeof(flash_offset_cfi)/sizeof(uint); cfi_offset++) {
 				flash_write_cmd (info, 0, flash_offset_cfi[cfi_offset], FLASH_CMD_CFI);
 				if (flash_isequal (info, 0, FLASH_OFFSET_CFI_RESP, 'Q')
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
