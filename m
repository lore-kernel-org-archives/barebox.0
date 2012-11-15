Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYwCY-00053S-4R
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 09:57:40 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Thu, 15 Nov 2012 10:57:14 +0100
Message-Id: <1352973435-11618-2-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <1352973435-11618-1-git-send-email-christian.kapeller@cmotion.eu>
References: <1352973435-11618-1-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <alpine.LSU.2.00.1211121220380.14365@redbean.intranet.gw-instruments.de>
References: <alpine.LSU.2.00.1211121220380.14365@redbean.intranet.gw-instruments.de>
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
Subject: [TX53: boot fixes 1/2] tx53: Fix unbootable TX53-8030.
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?G=C3=BCnter=20Gebhardt?= <guenter.gebhardt@freenet.de>, g@pengutronix.de, Peter Wippich <pewi@gw-instruments.de>

This patch remove a superfluous DCD command in TX53-xx30 flash header.
The entry DCD_WR_CMD(0x21c) just duplicates the contents of the last
imx_flash_header_v2 struct member dcd.

Removal of this DCD entry is needed to make the TX53 board boot again
from NAND.

Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
---
 arch/arm/boards/karo-tx53/dcd-data-xx30.h |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/karo-tx53/dcd-data-xx30.h b/arch/arm/boards/karo-tx53/dcd-data-xx30.h
index aa569c2..cb982dc 100644
--- a/arch/arm/boards/karo-tx53/dcd-data-xx30.h
+++ b/arch/arm/boards/karo-tx53/dcd-data-xx30.h
@@ -13,7 +13,6 @@
  */
 
 DCD_NAME_XX30[] = {
-	DCD_WR_CMD(0x21c),
 	DCD_ITEM(0x53fd4068, 0xffcc0fff),
 	DCD_ITEM(0x53fd406c, 0x000fffc3),
 	DCD_ITEM(0x53fd4070, 0x033c0000),
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
