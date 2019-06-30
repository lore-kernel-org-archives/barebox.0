Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([212.27.42.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhXqs-0005Ld-6R
 for barebox@lists.infradead.org; Sun, 30 Jun 2019 11:18:35 +0000
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Date: Sun, 30 Jun 2019 13:16:45 +0200
Message-Id: <20190630111646.14992-2-gwenj@trabucayre.com>
In-Reply-To: <20190630111646.14992-1-gwenj@trabucayre.com>
References: <20190630111646.14992-1-gwenj@trabucayre.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] ARM: socfpga: terasic-de0-nano-soc: add missing SECT()
 macro for iocsr_scan_chain3_table
To: barebox@lists.infradead.org
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

Since commit a83c97f2a4065ef7209f123b837fa5103f984c6a SECT() macro is used to
reduces image size.
This patch add a missing SECT for iocsr_scan_chain3_table.

Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
---
 arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c b/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
index bd7af5f75..80cb27031 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/iocsr_config_cyclone5.c
@@ -146,7 +146,7 @@ static const unsigned long SECT(iocsr_scan_chain2_table)[((CONFIG_HPS_IOCSR_SCAN
 	0x00000800,
 };
 
-static const unsigned long iocsr_scan_chain3_table[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)] = {
+static const unsigned long SECT(iocsr_scan_chain3_table)[((CONFIG_HPS_IOCSR_SCANCHAIN3_LENGTH / 32) + 1)] = {
 	0x0C420D80,
 	0x082000FF,
 	0x0A804001,
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
