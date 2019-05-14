Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQN3J-0008HW-Dl
 for barebox@lists.infradead.org; Tue, 14 May 2019 02:20:26 +0000
Received: by mail-qk1-x742.google.com with SMTP id a64so3615467qkg.5
 for <barebox@lists.infradead.org>; Mon, 13 May 2019 19:20:24 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
Date: Tue, 14 May 2019 02:19:54 +0000
Message-Id: <20190514021954.11834-1-gneukum1@gmail.com>
In-Reply-To: <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
References: <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
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
Subject: [PATCH] LICENSES: modify .gitignore files to be nonempty
To: barebox@lists.infradead.org
Cc: Geordan Neukum <gneukum1@gmail.com>, a.fatoum@pengutronix.de

The .gitignore files under the LICENSES/exceptions and LICENSES/other
directories cannot have a size of 0 or else they are subject to removal
by the make target 'distclean'. Modify the .gitignore files to
ignore all files except for themselves. These .gitignores can be
updated further or removed outright as new licenses are added to these
directories in the future.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 LICENSES/exceptions/.gitignore | 4 ++++
 LICENSES/other/.gitignore      | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/LICENSES/exceptions/.gitignore b/LICENSES/exceptions/.gitignore
index e69de29bb..d5e7eacf3 100644
--- a/LICENSES/exceptions/.gitignore
+++ b/LICENSES/exceptions/.gitignore
@@ -0,0 +1,4 @@
+# Ignore everything in this directory
+*
+# Except for this file
+!.gitignore
diff --git a/LICENSES/other/.gitignore b/LICENSES/other/.gitignore
index e69de29bb..d5e7eacf3 100644
--- a/LICENSES/other/.gitignore
+++ b/LICENSES/other/.gitignore
@@ -0,0 +1,4 @@
+# Ignore everything in this directory
+*
+# Except for this file
+!.gitignore
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
