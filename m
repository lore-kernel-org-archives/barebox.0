Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkV-0002cD-G4
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:54 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:44:56 +0200
Message-Id: <1287765924-1856-5-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
References: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 04/32] Doxyfile: add exclude rules
To: barebox@lists.infradead.org

The mtd stuff copied from linux and elsewhere contains commands which
are not understood by a 'real' doxygen. For now, we add exclude rules.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Doxyfile |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/Doxyfile b/Doxyfile
index 4fc9834..46f086c 100644
--- a/Doxyfile
+++ b/Doxyfile
@@ -515,7 +515,9 @@ RECURSIVE              = YES
 # excluded from the INPUT source files. This way you can easily exclude a
 # subdirectory from a directory tree whose root is specified with the INPUT tag.
 
-EXCLUDE                =
+EXCLUDE                = drivers/mtd/ubi \
+                         include/mtd \
+                         include/linux/mtd
 
 # The EXCLUDE_SYMLINKS tag can be used select whether or not files or
 # directories that are symbolic links (a Unix filesystem feature) are excluded
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
