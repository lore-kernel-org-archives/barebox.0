Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKoE-0001aZ-RA
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 07:37:41 +0000
Received: from geraet.fritz.box (i53875677.versanet.de [83.135.86.119])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D7E2EFF80E
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2020 07:37:35 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 28 Apr 2020 09:37:22 +0200
Message-Id: <20200428073730.34579-3-ahmad@a3f.at>
In-Reply-To: <20200428073730.34579-1-ahmad@a3f.at>
References: <20200428073730.34579-1-ahmad@a3f.at>
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
Subject: [PATCH 03/11] commands: fix misindented help text
To: barebox@lists.infradead.org

Kconfiglib used by scripts/kconfig-lint.py chokes on this
misindentation. Fix it

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index a0c28289834b..77637f916c16 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -809,7 +809,7 @@ config CMD_FILETYPE
 	select FILETYPE
 	prompt "filetype"
 	help
-Detect file type
+	  Detect file type
 
 	  Usage: filetype [-vsl] FILE
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
