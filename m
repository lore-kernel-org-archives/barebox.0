Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp47.i.mail.ru ([94.100.177.107])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEijT-0005k0-Vh
 for barebox@lists.infradead.org; Sun, 19 Jun 2016 19:50:13 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 19 Jun 2016 22:49:45 +0300
Message-Id: <1466365785-5702-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 17/17] common: Kconfig: Remove orphaned dependency
 LOAD_PBL_SRAM
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 common/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 928db0a..fc83c49 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -234,8 +234,8 @@ config BAREBOX_MAX_PBL_SIZE
 config BAREBOX_MAX_BARE_INIT_SIZE
 	prompt "Maximum bare_init size"
 	hex
-	range 0x0 BAREBOX_MAX_PBL_SIZE if LOAD_PBL_SRAM
-	default BAREBOX_MAX_PBL_SIZE if LOAD_PBL_SRAM
+	range 0x0 BAREBOX_MAX_PBL_SIZE
+	default BAREBOX_MAX_PBL_SIZE
 	default 0xffffffff
 	help
 	  Define the maximum size of bare_init
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
