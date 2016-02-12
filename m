Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aU8QC-0002Eo-QP
 for barebox@lists.infradead.org; Fri, 12 Feb 2016 07:45:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Feb 2016 08:45:21 +0100
Message-Id: <1455263121-25973-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] scripts: make __init__.py nonempty
To: Barebox List <barebox@lists.infradead.org>

Otherwise they get removed by make distclean.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/remote/__init__.py            | 1 +
 scripts/serial/tools/__init__.py      | 1 +
 scripts/serial/urlhandler/__init__.py | 1 +
 3 files changed, 3 insertions(+)

diff --git a/scripts/remote/__init__.py b/scripts/remote/__init__.py
index e69de29..0efe34b 100644
--- a/scripts/remote/__init__.py
+++ b/scripts/remote/__init__.py
@@ -0,0 +1 @@
+# empty #
\ No newline at end of file
diff --git a/scripts/serial/tools/__init__.py b/scripts/serial/tools/__init__.py
index e69de29..0efe34b 100644
--- a/scripts/serial/tools/__init__.py
+++ b/scripts/serial/tools/__init__.py
@@ -0,0 +1 @@
+# empty #
\ No newline at end of file
diff --git a/scripts/serial/urlhandler/__init__.py b/scripts/serial/urlhandler/__init__.py
index e69de29..0efe34b 100644
--- a/scripts/serial/urlhandler/__init__.py
+++ b/scripts/serial/urlhandler/__init__.py
@@ -0,0 +1 @@
+# empty #
\ No newline at end of file
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
