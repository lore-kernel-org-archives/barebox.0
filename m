Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gAbdd-00028H-D0
 for barebox@lists.infradead.org; Thu, 11 Oct 2018 14:09:08 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23994601AbeJKOIMFfKOA (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Thu, 11 Oct 2018 16:08:12 +0200
Date: Thu, 11 Oct 2018 16:08:11 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20181011140811.GA5421@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] blspec: do not depend on BLOCK
To: barebox@lists.infradead.org

blspec can be read also from jffs2 or ubifs, so remove BLOCK dependency

Signed-off-by: Ladislav Michl <ladis@linux-mips.org>
---
 common/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 4909c8232..eddd99ea3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -653,7 +653,6 @@ config BOOTM_FORCE_SIGNED_IMAGES
 	  since they are the only supported image type that support signing.
 
 config BLSPEC
-	depends on BLOCK
 	depends on FLEXIBLE_BOOTARGS
 	depends on !SHELL_NONE
 	select BOOT
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
