Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWfpb-0006bP-Dd
 for barebox@lists.infradead.org; Tue, 22 May 2012 03:32:19 +0000
From: Alan Ott <alan@signal11.us>
Date: Mon, 21 May 2012 23:32:17 -0400
Message-Id: <1337657537-15367-1-git-send-email-alan@signal11.us>
In-Reply-To: <1337653364-31191-1-git-send-email-alan@signal11.us>
References: <1337653364-31191-1-git-send-email-alan@signal11.us>
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
Subject: [PATCH v2] common: Make MENU select PROCESS_ESCAPE_SEQUENCE if
 HUSH_SHELL is selected
To: plagnioj@jcrosoft.com
Cc: barebox@lists.infradead.org, Alan Ott <alan@signal11.us>

print_menu_entry() in common/menu.c calls on process_escape_sequence() when
HUSH_SHELL is selected.

Signed-off-by: Alan Ott <alan@signal11.us>
---
 common/Kconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 73d620a..7cd0666 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -342,6 +342,7 @@ config AUTO_COMPLETE
 config MENU
 	bool
 	prompt "Menu Framework"
+	select PROCESS_ESCAPE_SEQUENCE if SHELL_HUSH
 	help
 	   a menu framework that allow us to create list menu to simplify
 	   barebox and make it more user-frendly
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
