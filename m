Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0TnX-0004T4-Sq
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:28 +0000
Received: by mail-we0-f175.google.com with SMTP id k48so5024685wev.34
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:05 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:13 +0200
Message-Id: <1403866821-4029-5-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
References: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 04/12] doc: only include own download chapter
To: barebox@lists.infradead.org

Also make this download chapter note the next branch.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 Documentation/download.rst     |   16 ----------------
 Documentation/index.rst        |    1 -
 Documentation/user/barebox.rst |    7 ++++++-
 3 files changed, 6 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/download.rst

diff --git a/Documentation/download.rst b/Documentation/download.rst
deleted file mode 100644
index 9e30efe..0000000
--- a/Documentation/download.rst
+++ /dev/null
@@ -1,16 +0,0 @@
-:: _download:
-
-Getting barebox
-===============
-
-Releases of barebox can be downloaded here:
-
-http://barebox.org/download/
-
-git
----
-
-The barebox development repository is available via `git <http://git-scm.com/>`_ here:
-
-  * clone address git://git.pengutronix.de/git/barebox.git
-  * git web http://git.pengutronix.de/?p=barebox.git;a=summary
diff --git a/Documentation/index.rst b/Documentation/index.rst
index aff450a..b7dae23 100644
--- a/Documentation/index.rst
+++ b/Documentation/index.rst
@@ -13,7 +13,6 @@ Contents:
    :numbered:
    :maxdepth: 1
 
-   download
    user/user-manual
    filesystems
    commands
diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 9eb34af..bab0260 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -16,7 +16,7 @@ http://www.barebox.org/download/
 Development versions of barebox are accessible via git. A local repository clone
 can be created using git::
 
-  git clone git://git.pengutronix.de/git/barebox.git
+  $ git clone git://git.pengutronix.de/git/barebox.git
   Cloning into 'barebox'...
   remote: Counting objects: 113356, done.
   remote: Compressing objects: 100% (25177/25177), done.
@@ -26,6 +26,11 @@ can be created using git::
   Checking connectivity... done.
   Checking out files: 100% (5651/5651), done.
 
+After this, make sure to check out needed branch. If you want to
+develop for barebox, it's better to check the the next branch::
+
+  $ git checkout -b next origin/remotes/next
+
 A web interface to the repository is available at
 http://git.pengutronix.de/?p=barebox.git.
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
