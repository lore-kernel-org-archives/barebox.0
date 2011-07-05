Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qdyr6-0006MW-4H
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 06:11:32 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id E5CE8100C788
	for <barebox@lists.infradead.org>;
	Tue,  5 Jul 2011 08:11:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  5 Jul 2011 07:55:56 +0200
Message-Id: <1309845357-12285-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1309845357-12285-1-git-send-email-plagnioj@jcrosoft.com>
References: <1309845357-12285-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/4] menu: fix command management module support
To: barebox@lists.infradead.org

it's part of the command and can not be compiled as an other module

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 30eeff9..5700dc2 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -65,7 +65,7 @@ config CMD_MENU
 	prompt "menu"
 
 config CMD_MENU_MANAGEMENT
-	tristate
+	bool
 	depends on CMD_MENU
 	prompt "menu scripts management"
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
