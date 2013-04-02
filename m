Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UMubS-0007sz-DG
 for barebox@lists.infradead.org; Tue, 02 Apr 2013 06:21:55 +0000
Received: from localhost.localdomain (tmo-102-135.customers.d1-online.com
 [80.187.102.135])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id 9BEA07D44B5
 for <barebox@lists.infradead.org>; Tue,  2 Apr 2013 08:21:37 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  2 Apr 2013 08:21:14 +0200
Message-Id: <1364883674-6637-1-git-send-email-dev@lynxeye.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] dtc: add .gitignore for generated files
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/.gitignore | 1 +
 scripts/dtc/.gitignore  | 4 ++++
 2 files changed, 5 insertions(+)
 create mode 100644 arch/arm/dts/.gitignore
 create mode 100644 scripts/dtc/.gitignore

diff --git a/arch/arm/dts/.gitignore b/arch/arm/dts/.gitignore
new file mode 100644
index 0000000..077903c
--- /dev/null
+++ b/arch/arm/dts/.gitignore
@@ -0,0 +1 @@
+*dtb*
diff --git a/scripts/dtc/.gitignore b/scripts/dtc/.gitignore
new file mode 100644
index 0000000..cdabdc9
--- /dev/null
+++ b/scripts/dtc/.gitignore
@@ -0,0 +1,4 @@
+dtc
+dtc-lexer.lex.c
+dtc-parser.tab.c
+dtc-parser.tab.h
-- 
1.8.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
