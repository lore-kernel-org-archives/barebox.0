Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdU-0002Xc-Ng
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:50 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:30 +0100
Message-Id: <1288703442-5032-2-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 01/13] doc: remove obsolete link method for arch specification
To: barebox@lists.infradead.org

The cross_arch and cross_compile links method is obsolete and not
available any more, so we remove it from the documentation.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/building.dox |   14 ++++++--------
 1 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/Documentation/building.dox b/Documentation/building.dox
index 895e9ac..527ca45 100644
--- a/Documentation/building.dox
+++ b/Documentation/building.dox
@@ -15,19 +15,17 @@ x86_64.
 
 \todo Find out about issues on x86_64.
 
-Selecting the architecture and the corresponding cross compiler can be
-done with two methods: You can either specify it using the environment
-variables @p ARCH and @p CROSS_COMPILE or you can create the soft links
-<i>cross_arch</i> and <i>cross_compile</i>, pointing to your
-architecture and compiler.
+Selecting the architecture and the corresponding cross compiler is done
+by setting the following environment variables:
 
-\todo How to use the links? This doesn't work!
+- ARCH=\<architecture>
+- CROSS_COMPILE=\<compiler-prefix>
 
 For @p ARCH=sandbox we do not need a cross compiler, so it is sufficient
 to specify the architecture:
 
 @code
-# ln -s arch/sandbox cross_arch
+# export ARCH=sandbox
 @endcode
 
 In order to configure the various aspects of @a barebox, start the
@@ -52,7 +50,7 @@ After @a barebox is configured, we can start the compilation:
 You can use '-j \<n\>' in order to do a parallel build if you have more
 than one cpus.
 
-If everything goes well, the result is a file called @p barebox: 
+If everything goes well, the result is a file called @p barebox:
 
 @code
 # ls -l barebox
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
