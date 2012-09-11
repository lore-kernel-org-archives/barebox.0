Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBJ35-0004Lr-F6
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 05:30:11 +0000
Received: by wibhn17 with SMTP id hn17so88213wib.0
 for <barebox@lists.infradead.org>; Mon, 10 Sep 2012 22:30:08 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Tue, 11 Sep 2012 07:31:03 +0200
Message-Id: <1347341465-2560-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/3] commands: add testing menu
To: barebox@lists.infradead.org

Add command menu for testing utilities.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index f2756cc..8f3a15a 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -472,6 +472,10 @@ config CMD_OFTREE
 
 endmenu
 
+menu "testing                       "
+
+endmenu
+
 config CMD_TIMEOUT
 	tristate
 	prompt "timeout"
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
