Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkY-0002cN-Ki
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:58 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:45:03 +0200
Message-Id: <1287765924-1856-12-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 11/32] doc: eliminate nonexisting reference
To: barebox@lists.infradead.org

Silence this warning:
arch/architecture.dox:89: Warning: unable to resolve reference to `dev_x86_mach' for \ref command

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/developers_manual.dox |    1 -
 arch/x86/mach-x86.dox               |    2 +-
 2 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/Documentation/developers_manual.dox b/Documentation/developers_manual.dox
index 620905e..2f7d360 100644
--- a/Documentation/developers_manual.dox
+++ b/Documentation/developers_manual.dox
@@ -20,6 +20,5 @@ This part of the documentation is intended for developers of @a barebox.
 @li @subpage barebox_simul
 @li @subpage io_access_functions
 @li @subpage mcfv4e_MCDlib
-@li @subpage x86_runtime
 
 */
diff --git a/arch/x86/mach-x86.dox b/arch/x86/mach-x86.dox
index fc5b85a..661e905 100644
--- a/arch/x86/mach-x86.dox
+++ b/arch/x86/mach-x86.dox
@@ -2,7 +2,7 @@
  * how to integrate a new CPU (MACH) into this part of the barebox tree
  */
 
-/** @page x86_runtime barebox on x86 at runtime
+/** @page dev_x86_mach barebox on x86 at runtime
 
 @section mach_x86_memory_layout barebox's memory layout (BIOS based)
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
