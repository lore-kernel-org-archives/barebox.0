Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WszVQ-0005iR-D5
 for barebox@lists.infradead.org; Fri, 06 Jun 2014 19:08:48 +0000
Received: by mail-la0-f46.google.com with SMTP id hz20so1641143lab.19
 for <barebox@lists.infradead.org>; Fri, 06 Jun 2014 12:08:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  6 Jun 2014 23:08:09 +0400
Message-Id: <1402081690-23986-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] make .gitignore files visible to git
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .gitignore | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/.gitignore b/.gitignore
index 5555e15..28f319a 100644
--- a/.gitignore
+++ b/.gitignore
@@ -52,6 +52,11 @@ Module.symvers
 barebox_default_env*
 
 #
+# git files that we don't want to ignore even it they are dot-files
+#
+!.gitignore
+
+#
 # Generated include files
 #
 include/asm
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
