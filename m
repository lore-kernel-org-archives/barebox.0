Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGb8e-0005TS-Ss
 for barebox@lists.infradead.org; Sat, 18 Jul 2015 23:03:25 +0000
Received: by lahe2 with SMTP id e2so15809667lah.1
 for <barebox@lists.infradead.org>; Sat, 18 Jul 2015 16:03:01 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 02:02:53 +0300
Message-Id: <1437260573-27143-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! Add new barebox logo to the tree
To: barebox@lists.infradead.org

---
 lib/logo/.gitignore | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 lib/logo/.gitignore

diff --git a/lib/logo/.gitignore b/lib/logo/.gitignore
new file mode 100644
index 0000000..fd013c7
--- /dev/null
+++ b/lib/logo/.gitignore
@@ -0,0 +1,10 @@
+barebox-logo-w64.bblogo
+barebox-logo-w64.bblogo.S
+barebox-logo-w240.bblogo
+barebox-logo-w240.bblogo.S
+barebox-logo-w320.bblogo
+barebox-logo-w320.bblogo.S
+barebox-logo-w400.bblogo
+barebox-logo-w400.bblogo.S
+barebox-logo-w640.bblogo
+barebox-logo-w640.bblogo.S
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
