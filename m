Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f171.google.com ([209.85.212.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBJ34-0004Hx-BD
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 05:30:10 +0000
Received: by mail-wi0-f171.google.com with SMTP id hq4so2297563wib.0
 for <barebox@lists.infradead.org>; Mon, 10 Sep 2012 22:30:10 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Tue, 11 Sep 2012 07:31:04 +0200
Message-Id: <1347341465-2560-2-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/3] commands: move nandtest to testing
To: barebox@lists.infradead.org

Move nadntest in commands menu.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 commands/Kconfig | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 8f3a15a..2ee8643 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -192,14 +192,6 @@ config CMD_NAND
 	depends on NAND
 	prompt "nand"
 
-config CMD_NANDTEST
-	tristate
-	depends on NAND
-	depends on PARTITION
-	depends on NAND_ECC_HW || NAND_ECC_SOFT
-	select PARTITION_NEED_MTD
-	prompt "nandtest"
-
 config CMD_AUTOMOUNT
 	tristate
 	select FS_AUTOMOUNT
@@ -474,6 +466,14 @@ endmenu
 
 menu "testing                       "
 
+config CMD_NANDTEST
+	tristate
+	depends on NAND
+	depends on PARTITION
+	depends on NAND_ECC_HW || NAND_ECC_SOFT
+	select PARTITION_NEED_MTD
+	prompt "nandtest"
+
 endmenu
 
 config CMD_TIMEOUT
-- 
1.7.12


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
