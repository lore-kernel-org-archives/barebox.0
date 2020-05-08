Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwOQ-00052b-3c
 for barebox@lists.infradead.org; Fri, 08 May 2020 06:21:55 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 May 2020 08:21:49 +0200
Message-Id: <20200508062149.30753-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200508062149.30753-1-a.fatoum@pengutronix.de>
References: <20200508062149.30753-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] LICENSES: add Linux-syscall-note exception text
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We include Linux headers in barebox, which are licensed under GPL with
this exception.

While we are GPL-2.0 as well and don't require the exception, we should
always provide license texts to the License-Identifiers we are using.

At the time of this writing these are:
  * BSD-1-Clause
  * BSD-2-Clause
  * BSD-3-Clause
  * GPL-2.0-only, -or-later and WITH Linux-syscall-note
  * LGPL-2.1 and -or-later
  * MIT
  * X11
  * ISC

With this commit, our LICENSES directory now contains licenses for all
of them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 LICENSES/exceptions/Linux-syscall-note | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 LICENSES/exceptions/Linux-syscall-note

diff --git a/LICENSES/exceptions/Linux-syscall-note b/LICENSES/exceptions/Linux-syscall-note
new file mode 100644
index 000000000000..9abdad71fafd
--- /dev/null
+++ b/LICENSES/exceptions/Linux-syscall-note
@@ -0,0 +1,25 @@
+SPDX-Exception-Identifier: Linux-syscall-note
+SPDX-URL: https://spdx.org/licenses/Linux-syscall-note.html
+SPDX-Licenses: GPL-2.0, GPL-2.0+, GPL-1.0+, LGPL-2.0, LGPL-2.0+, LGPL-2.1, LGPL-2.1+, GPL-2.0-only, GPL-2.0-or-later
+Usage-Guide:
+  This exception is used together with one of the above SPDX-Licenses
+  to mark user space API (uapi) header files so they can be included
+  into non GPL compliant user space application code.
+  To use this exception add it with the keyword WITH to one of the
+  identifiers in the SPDX-Licenses tag:
+    SPDX-License-Identifier: <SPDX-License> WITH Linux-syscall-note
+License-Text:
+
+   NOTE! This copyright does *not* cover user programs that use kernel
+ services by normal system calls - this is merely considered normal use
+ of the kernel, and does *not* fall under the heading of "derived work".
+ Also note that the GPL below is copyrighted by the Free Software
+ Foundation, but the instance of code that it refers to (the Linux
+ kernel) is copyrighted by me and others who actually wrote it.
+
+ Also note that the only valid version of the GPL as far as the kernel
+ is concerned is _this_ particular version of the license (ie v2, not
+ v2.2 or v3.x or whatever), unless explicitly otherwise stated.
+
+			Linus Torvalds
+
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
