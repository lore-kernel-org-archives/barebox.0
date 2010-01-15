Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f212.google.com ([209.85.218.212])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NVjaz-0004uN-2U
	for barebox@lists.infradead.org; Fri, 15 Jan 2010 10:40:05 +0000
Received: by bwz4 with SMTP id 4so143707bwz.2
	for <barebox@lists.infradead.org>; Fri, 15 Jan 2010 02:39:58 -0800 (PST)
From: Peter Korsgaard <jacmet@sunsite.dk>
Date: Fri, 15 Jan 2010 11:39:33 +0100
Message-Id: <1263551973-14588-1-git-send-email-jacmet@sunsite.dk>
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
Subject: [PATCH] documentation: It's U-Boot that doesn't have getopt,
	not Barebox
To: barebox@lists.infradead.org

Commit a3ffa97f (rename U-Boot-v2 project to barebox) also changed the
U-Boot references to Barebox in the getopt description, which doesn't
make much sense.

Signed-off-by: Peter Korsgaard <jacmet@sunsite.dk>
---
 Documentation/barebox-main.dox |    2 +-
 README                         |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/barebox-main.dox b/Documentation/barebox-main.dox
index 42d1256..743add8 100644
--- a/Documentation/barebox-main.dox
+++ b/Documentation/barebox-main.dox
@@ -64,7 +64,7 @@ things right - without caring about losing support for old boards.
 
 - getopt
   - There is a small getopt implementation. Some commands got really
-    complicated (both in code and in usage) due to the fact that @a barebox only
+    complicated (both in code and in usage) due to the fact that @a U-Boot only
     allowed positional parameters.
 
 - editor
diff --git a/README b/README
index 6f5fb26..9b5317d 100644
--- a/README
+++ b/README
@@ -61,7 +61,7 @@ Features
 
 - getopt
   There is a small getopt implementation. Some commands got really
-  complicated (both in code and in usage) due to the fact that barebox only
+  complicated (both in code and in usage) due to the fact that U-Boot only
   allowed positional parameters.
 
 - editor
-- 
1.6.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
