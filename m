Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUiLJ-0001La-SZ
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 03:29:46 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Oct 2020 05:29:37 +0200
Message-Id: <20201020032937.10132-5-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 5/5] Documentation: aarch64-qemu-virt: note physical
 target support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The documentation structure is a bit unfortunate because it says
4.1. Aarch64, but lists only a single virtual board. Fix this by:

 - Removing the Aarch64 heading, as there are more boards outside it
 - Explicitly note that this documentation page only refers to the
   virtual target

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/aarch64-qemu-virt.rst | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/aarch64-qemu-virt.rst b/Documentation/boards/aarch64-qemu-virt.rst
index e21791af164a..5f6cd882d546 100644
--- a/Documentation/boards/aarch64-qemu-virt.rst
+++ b/Documentation/boards/aarch64-qemu-virt.rst
@@ -1,8 +1,8 @@
-Aarch64
-=======
-
 Aarch64 Qemu virt
------------------
+=================
+
+Besides a number of physical ARM64 targets, barebox also supports a
+``qemu-virt64`` board.
 
 Running barebox on QEMU aarch64 virt machine
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
