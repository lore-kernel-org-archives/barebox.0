Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUiLJ-0001LZ-UC
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 03:29:47 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Oct 2020 05:29:36 +0200
Message-Id: <20201020032937.10132-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 4/5] Documentation: x86: note EFI support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Most users are better served by using the EFI support. Add an info box
to nudge them into the correct direction.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/x86.rst | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/boards/x86.rst b/Documentation/boards/x86.rst
index 4514a766a216..c0d5a64b9d45 100644
--- a/Documentation/boards/x86.rst
+++ b/Documentation/boards/x86.rst
@@ -1,6 +1,11 @@
 x86
 ===
 
+.. note::
+   This is about legacy x86 PC boot, which is not as well supported as booting
+   under UEFI. Refer to :doc:`boards/efi.rst` for documentation on the barebox
+   EFI support.
+
 Features
 --------
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
