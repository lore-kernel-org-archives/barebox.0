Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWUvg-0003Kx-LY
 for barebox@lists.infradead.org; Mon, 21 May 2012 15:53:53 +0000
Received: from compute2.internal (compute2.nyi.mail.srv.osa [10.202.2.42])
 by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 5B48120954
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 11:53:50 -0400 (EDT)
From: Alan Ott <alan@signal11.us>
Date: Mon, 21 May 2012 11:53:36 -0400
Message-Id: <1337615616-7209-1-git-send-email-alan@signal11.us>
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
Subject: [PATCH] common: Make MENU depend on PROCESS_ESCAPE_SEQUENCE
To: barebox@lists.infradead.org
Cc: Alan Ott <alan@signal11.us>

print_menu_entry() in common/menu.c depeneds on process_escape_sequence().

Signed-off-by: Alan Ott <alan@signal11.us>
---
 common/Kconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 73d620a..ebb9400 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -342,6 +342,7 @@ config AUTO_COMPLETE
 config MENU
 	bool
 	prompt "Menu Framework"
+	depends on PROCESS_ESCAPE_SEQUENCE
 	help
 	   a menu framework that allow us to create list menu to simplify
 	   barebox and make it more user-frendly
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
