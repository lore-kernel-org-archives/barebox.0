Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAJYE-0000sS-NU
 for barebox@lists.infradead.org; Thu, 11 Feb 2021 21:31:05 +0000
Received: from geraet.fritz.box (unknown [83.135.83.122])
 (Authenticated sender: ahmad@a3f.at)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id B7AAE240010
 for <barebox@lists.infradead.org>; Thu, 11 Feb 2021 21:30:57 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 11 Feb 2021 22:30:52 +0100
Message-Id: <20210211213052.791336-1-ahmad@a3f.at>
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
Subject: [PATCH] commands: Kconfig: setenv: fix reference to unknown symbol
To: barebox@lists.infradead.org

In Kconfig files, the symbols don't have a CONFIG_ prefix. Fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index b672f0c16a85..520ad4b1dea3 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -746,7 +746,7 @@ config CMD_SAVEENV
 config CMD_SETENV
 	tristate
 	default y
-	depends on !CONFIG_SHELL_NONE
+	depends on !SHELL_NONE
 	prompt "setenv"
 	help
 	  Set environment variable
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
