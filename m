Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bfYAH-00077k-75
 for barebox@lists.infradead.org; Thu, 01 Sep 2016 20:00:46 +0000
From: Sam Van Den Berge <sam.van.den.berge@telenet.be>
Date: Thu,  1 Sep 2016 22:00:03 +0200
Message-Id: <1472760003-5357-1-git-send-email-sam.van.den.berge@telenet.be>
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
Subject: [PATCH] Fix small typo in common/Kconfig
To: barebox@lists.infradead.org
Cc: Sam Van Den Berge <sam.van.den.berge@telenet.be>

Fix small typo frendly -> friendly

Signed-off-by: Sam Van Den Berge <sam.van.den.berge@telenet.be>
---
 common/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 38225eb..636a55a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -471,7 +471,7 @@ config MENU
 	select PROCESS_ESCAPE_SEQUENCE
 	help
 	  a menu framework that allow us to create list menu to simplify
-	  barebox and make it more user-frendly
+	  barebox and make it more user-friendly
 
 config PASSWORD
 	bool
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
