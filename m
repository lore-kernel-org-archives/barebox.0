Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUoe-0005I1-7n
 for barebox@lists.infradead.org; Tue, 14 May 2019 10:37:49 +0000
Received: by mail-qt1-x843.google.com with SMTP id m32so15274457qtf.0
 for <barebox@lists.infradead.org>; Tue, 14 May 2019 03:37:47 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
Date: Tue, 14 May 2019 10:37:13 +0000
Message-Id: <20190514103713.3849-1-gneukum1@gmail.com>
In-Reply-To: <20190514083556.yxzo5mjccpx2rikf@pengutronix.de>
References: <20190514083556.yxzo5mjccpx2rikf@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] LICENSES: modify .gitignore files to be nonempty
To: barebox@lists.infradead.org
Cc: abbotti@mev.co.uk, a.fatoum@pengutronix.de, Geordan Neukum <gneukum1@gmail.com>, u.kleine-koenig@pengutronix.de

The .gitignore files under the LICENSES/exceptions and LICENSES/other
directories cannot have a size of 0 or else they are subject to removal
by the make target 'distclean'. Modify the .gitignore files to
ignore all files except for themselves. This shall serve as a reminder
that these .gitignores can and should be removed when new licenses are
added.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
Changes in v2: 
- Added whitespace for readability's sake
- Modified comment to specify intent more clearly 
 
 LICENSES/exceptions/.gitignore | 8 ++++++++
 LICENSES/other/.gitignore      | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/LICENSES/exceptions/.gitignore b/LICENSES/exceptions/.gitignore
index e69de29bb..7323b9e1a 100644
--- a/LICENSES/exceptions/.gitignore
+++ b/LICENSES/exceptions/.gitignore
@@ -0,0 +1,8 @@
+# Placeholder as upstream checkpatch.pl requires this directory to exist
+# This file can be removed when new files are added
+
+# Ignore everything in this directory
+*
+
+# Except for this file
+!.gitignore
diff --git a/LICENSES/other/.gitignore b/LICENSES/other/.gitignore
index e69de29bb..7323b9e1a 100644
--- a/LICENSES/other/.gitignore
+++ b/LICENSES/other/.gitignore
@@ -0,0 +1,8 @@
+# Placeholder as upstream checkpatch.pl requires this directory to exist
+# This file can be removed when new files are added
+
+# Ignore everything in this directory
+*
+
+# Except for this file
+!.gitignore
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
