Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDjOm-0006zC-C4
 for barebox@lists.infradead.org; Fri, 27 Sep 2019 06:06:37 +0000
Received: from geraet.fritz.box (muedsl-82-207-220-121.citykom.de
 [82.207.220.121]) (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 52F76200005
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2019 06:06:30 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 27 Sep 2019 08:06:24 +0200
Message-Id: <20190927060624.25815-1-ahmad@a3f.at>
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
Subject: [PATCH] commands: ubsan: remove redundant depends
To: barebox@lists.infradead.org

the config is already in an if COMMAND_SUPPORT clause, so no need to
depend on it as well. Remove the redundancy.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 5cacf9e05ed8..0189b4715bb9 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2174,7 +2174,7 @@ config CMD_SEED
 
 config CMD_UBSAN
 	tristate "ubsan"
-	depends on UBSAN && COMMAND_SUPPORT
+	depends on UBSAN
 	help
 	  This is a test command for the undefined behavior sanitizer.
 	  It triggers various undefined behavior, and detect it.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
