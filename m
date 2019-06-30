Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhXqs-0005Lm-Kn
 for barebox@lists.infradead.org; Sun, 30 Jun 2019 11:18:36 +0000
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Date: Sun, 30 Jun 2019 13:16:46 +0200
Message-Id: <20190630111646.14992-3-gwenj@trabucayre.com>
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
Subject: [PATCH 3/3] ARM: socfpga: terasic-de0-nano-soc: statify
 sys_mgr_init_table
To: barebox@lists.infradead.org
Cc: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>

Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@trabucayre.com>
---
 arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c b/arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c
index 1fc530deb..c06190181 100644
--- a/arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c
+++ b/arch/arm/boards/terasic-de0-nano-soc/pinmux_config.c
@@ -29,7 +29,7 @@
 
 #include <common.h>
 
-unsigned long SECT(sys_mgr_init_table)[] = {
+static unsigned long SECT(sys_mgr_init_table)[] = {
 	0, /* EMACIO0 */
 	2, /* EMACIO1 */
 	2, /* EMACIO2 */
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
