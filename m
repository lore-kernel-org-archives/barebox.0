Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUiLJ-0001LY-VY
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 03:29:47 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Oct 2020 05:29:35 +0200
Message-Id: <20201020032937.10132-3-a.fatoum@pengutronix.de>
In-Reply-To: <20201020032937.10132-1-a.fatoum@pengutronix.de>
References: <20201020032937.10132-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 3/5] Documentation: glossary: add some extra info
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Besides expanding the acronyms, a short description text can be useful.
Add one where appropriate and sort the list alphabetically.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/glossary.rst | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/glossary.rst b/Documentation/glossary.rst
index 106dce98a9ef..88d356fbab64 100644
--- a/Documentation/glossary.rst
+++ b/Documentation/glossary.rst
@@ -5,17 +5,17 @@ Glossary
 
 .. glossary:: :sorted:
 
-   FDT
-      Flattened Device Tree
+   DTS
+      Device Tree Source
 
    DTB
-      Device Tree Blob (or Binary)
+      Device Tree Blob (or Binary). The result of compiling a DTS.
 
-   DTS
-      Device Tree Source
+   FDT
+      Flattened Device Tree. A DTB loaded into memory.
 
    PBL
-      Pre BootLoader image
+      Pre BootLoader image. The board-specific entry point attached in front of multi-image barebox binaries.
 
    ESP
       EFI System Partition
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
