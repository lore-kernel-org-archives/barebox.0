Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U8s0B-0007t1-U6
 for barebox@lists.infradead.org; Fri, 22 Feb 2013 12:45:25 +0000
Received: from mail638.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 86A19105005D
 for <barebox@lists.infradead.org>; Fri, 22 Feb 2013 13:56:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 22 Feb 2013 13:44:14 +0100
Message-Id: <1361537054-4251-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [For-next PATCH 1/1] switch more boards to lwl-y
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/freescale-mx6-sabresd/Makefile |    7 +++----
 arch/arm/boards/highbank/Makefile              |    3 +--
 arch/arm/boards/vexpress/Makefile              |    3 +--
 arch/arm/mach-clps711x/Makefile                |    4 ++--
 4 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabresd/Makefile b/arch/arm/boards/freescale-mx6-sabresd/Makefile
index 21fb7d9..d44f697 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/Makefile
+++ b/arch/arm/boards/freescale-mx6-sabresd/Makefile
@@ -1,4 +1,3 @@
-obj-y += board.o flash_header.o
-pbl-y += flash_header.o
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+obj-y += board.o
+lwl-y += flash_header.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/highbank/Makefile b/arch/arm/boards/highbank/Makefile
index 98921a4..e11fd5b 100644
--- a/arch/arm/boards/highbank/Makefile
+++ b/arch/arm/boards/highbank/Makefile
@@ -1,4 +1,3 @@
 obj-y += init.o
 
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/vexpress/Makefile b/arch/arm/boards/vexpress/Makefile
index 98921a4..e11fd5b 100644
--- a/arch/arm/boards/vexpress/Makefile
+++ b/arch/arm/boards/vexpress/Makefile
@@ -1,4 +1,3 @@
 obj-y += init.o
 
-obj-y += lowlevel.o
-pbl-y += lowlevel.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/mach-clps711x/Makefile b/arch/arm/mach-clps711x/Makefile
index 69a4a3c..4552534 100644
--- a/arch/arm/mach-clps711x/Makefile
+++ b/arch/arm/mach-clps711x/Makefile
@@ -1,2 +1,2 @@
-obj-y += clock.o devices.o lowlevel.o reset.o
-pbl-y += lowlevel.o
+obj-y += clock.o devices.o reset.o
+lwl-y += lowlevel.o
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
