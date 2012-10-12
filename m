Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5.mail.ru ([94.100.176.132])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMZ4q-0006Hw-RZ
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 06:50:34 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri, 12 Oct 2012 10:50:15 +0400
Message-Id: <1350024615-4260-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1350024615-4260-1-git-send-email-shc_work@mail.ru>
References: <1350024615-4260-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] defaultenv-2: Select CMD_EDIT by default if
 CMD_MENU_MANAGEMENT is selected
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 commands/Kconfig |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index e934f29..89ab2fc 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -79,6 +79,7 @@ config CMD_MENU
 config CMD_MENU_MANAGEMENT
 	bool
 	depends on CMD_MENU
+	select CMD_EDIT
 	prompt "menu scripts management"
 
 config CMD_LOGIN
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
