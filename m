Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBJ35-0004Hj-Nq
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 05:30:12 +0000
Received: by mail-we0-f177.google.com with SMTP id r3so70225wey.36
 for <barebox@lists.infradead.org>; Mon, 10 Sep 2012 22:30:11 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Tue, 11 Sep 2012 07:31:05 +0200
Message-Id: <1347341465-2560-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1347341465-2560-1-git-send-email-alex.aring@gmail.com>
References: <1347341465-2560-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 3/3] commands: move memtest to testing
To: barebox@lists.infradead.org

Move memtest to testing commands menu.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/Kconfig | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 2ee8643..4b9e8ba 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -319,15 +319,6 @@ config CMD_SHA224SUM
 	select SHA224
 	prompt "sha224sum"
 
-config CMD_MTEST
-	tristate
-	prompt "mtest"
-
-config CMD_MTEST_ALTERNATIVE
-	bool
-	depends on CMD_MTEST
-	prompt "alternative mtest implementation"
-
 endmenu
 
 menu "flash                         "
@@ -474,6 +465,15 @@ config CMD_NANDTEST
 	select PARTITION_NEED_MTD
 	prompt "nandtest"
 
+config CMD_MTEST
+	tristate
+	prompt "mtest"
+
+config CMD_MTEST_ALTERNATIVE
+	bool
+	depends on CMD_MTEST
+	prompt "alternative mtest implementation"
+
 endmenu
 
 config CMD_TIMEOUT
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
