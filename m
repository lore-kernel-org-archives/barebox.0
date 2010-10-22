Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkY-0002cE-Kp
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:58 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:44:57 +0200
Message-Id: <1287765924-1856-6-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 05/32] Doxyfile: remove non-existing directories
To: barebox@lists.infradead.org

The example and image directories are currently not used, so we remove
the references from the Doxyfile. Silences a doxygen warning.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Doxyfile |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Doxyfile b/Doxyfile
index 46f086c..21a6212 100644
--- a/Doxyfile
+++ b/Doxyfile
@@ -544,7 +544,7 @@ EXCLUDE_SYMBOLS        =
 # directories that contain example code fragments that are included (see
 # the \include command).
 
-EXAMPLE_PATH           = Documentation/examples/
+EXAMPLE_PATH           =
 
 # If the value of the EXAMPLE_PATH tag contains directories, you can use the
 # EXAMPLE_PATTERNS tag to specify one or more wildcard pattern (like *.cpp
@@ -564,7 +564,7 @@ EXAMPLE_RECURSIVE      = NO
 # directories that contain image that are included in the documentation (see
 # the \image command).
 
-IMAGE_PATH             = Documentation/images/
+IMAGE_PATH             =
 
 # The INPUT_FILTER tag can be used to specify a program that doxygen should
 # invoke to filter for each input file. Doxygen will invoke the filter program
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
