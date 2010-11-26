Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PM4PV-0002u4-Ll
	for barebox@lists.infradead.org; Fri, 26 Nov 2010 19:56:47 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 26 Nov 2010 20:52:38 +0100
Message-Id: <1290801161-2417-9-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 09/12] cfi_flash: do not reset flash when probe fails
To: barebox@lists.infradead.org
Cc: Mike Frysinger <vapier@gentoo.org>, Nicolas Ferre <nicolas.ferre@atmel.com>, Patrice Vilchez <patrice.vilchez@atmel.com>

The CFI flash driver starts at flash_init() which calls down into
flash_get_size().  This starts by calling flash_detect_cfi().  If said
function fails, flash_get_size() finishes by attempting to reset the
flash.  Unfortunately, it does this with an info->portwidth set to 0x10
which filters down into flash_make_cmd() and that happily smashes the
stack by sticking info->portwidth bytes into a cfiword_t variable that
lives on the stack.  On a 64bit system you probably won't notice, but
killing the last 8 bytes on a 32bit system usually leads to a corrupt
return address.  Which is what happens on a Blackfin system.

based on U-Boot

Signed-off-by: Mike Frysinger <vapier@gentoo.org>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/nor/cfi_flash.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 041fb92..a7df3b4 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -494,9 +494,9 @@ static ulong flash_get_size (struct flash_info *info, ulong base)
 		if ((info->interface == FLASH_CFI_X8X16) && (info->chipwidth == FLASH_CFI_BY8)) {
 			info->portwidth >>= 1;	/* XXX - Need to test on x8/x16 in parallel. */
 		}
+		flash_write_cmd (info, 0, 0, info->cmd_reset);
 	}
 
-	flash_write_cmd (info, 0, 0, info->cmd_reset);
 	return info->size;
 }
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
