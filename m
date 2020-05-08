Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWwOQ-00052a-3x
 for barebox@lists.infradead.org; Fri, 08 May 2020 06:21:55 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  8 May 2020 08:21:48 +0200
Message-Id: <20200508062149.30753-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] LICENSES: import ISC/X11/BSD-2-Clause license Text from
 Linux
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Our dts/ directory contains SPDX-License-Identifiers referencing these
three licenses. We should thus add the full-text of the LICENSES to the
source tree. The split into deprecated and preferred is taken from
Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 LICENSES/deprecated/ISC         | 24 +++++++++++++++++++++
 LICENSES/deprecated/X11         | 37 +++++++++++++++++++++++++++++++++
 LICENSES/preferred/BSD-2-Clause | 32 ++++++++++++++++++++++++++++
 3 files changed, 93 insertions(+)
 create mode 100644 LICENSES/deprecated/ISC
 create mode 100644 LICENSES/deprecated/X11
 create mode 100644 LICENSES/preferred/BSD-2-Clause

diff --git a/LICENSES/deprecated/ISC b/LICENSES/deprecated/ISC
new file mode 100644
index 000000000000..8953c3142079
--- /dev/null
+++ b/LICENSES/deprecated/ISC
@@ -0,0 +1,24 @@
+Valid-License-Identifier: ISC
+SPDX-URL: https://spdx.org/licenses/ISC.html
+Usage-Guide:
+  To use the ISC License put the following SPDX tag/value pair into a
+  comment according to the placement guidelines in the licensing rules
+  documentation:
+    SPDX-License-Identifier: ISC
+License-Text:
+
+ISC License
+
+Copyright (c) <year> <copyright holders>
+
+Permission to use, copy, modify, and/or distribute this software for any
+purpose with or without fee is hereby granted, provided that the above
+copyright notice and this permission notice appear in all copies.
+
+THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
+WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
+MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
+SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
+OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
+CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
diff --git a/LICENSES/deprecated/X11 b/LICENSES/deprecated/X11
new file mode 100644
index 000000000000..fe4353fd0000
--- /dev/null
+++ b/LICENSES/deprecated/X11
@@ -0,0 +1,37 @@
+Valid-License-Identifier: X11
+SPDX-URL: https://spdx.org/licenses/X11.html
+Usage-Guide:
+  To use the X11 put the following SPDX tag/value pair into a comment
+  according to the placement guidelines in the licensing rules
+  documentation:
+    SPDX-License-Identifier: X11
+License-Text:
+
+
+X11 License
+
+Copyright (C) 1996 X Consortium
+
+Permission is hereby granted, free of charge, to any person obtaining a
+copy of this software and associated documentation files (the "Software"),
+to deal in the Software without restriction, including without limitation
+the rights to use, copy, modify, merge, publish, distribute, sublicense,
+and/or sell copies of the Software, and to permit persons to whom the
+Software is furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+X CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
+IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
+CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
+
+Except as contained in this notice, the name of the X Consortium shall not
+be used in advertising or otherwise to promote the sale, use or other
+dealings in this Software without prior written authorization from the X
+Consortium.
+
+X Window System is a trademark of X Consortium, Inc.
diff --git a/LICENSES/preferred/BSD-2-Clause b/LICENSES/preferred/BSD-2-Clause
new file mode 100644
index 000000000000..da366e2ce50b
--- /dev/null
+++ b/LICENSES/preferred/BSD-2-Clause
@@ -0,0 +1,32 @@
+Valid-License-Identifier: BSD-2-Clause
+SPDX-URL: https://spdx.org/licenses/BSD-2-Clause.html
+Usage-Guide:
+  To use the BSD 2-clause "Simplified" License put the following SPDX
+  tag/value pair into a comment according to the placement guidelines in
+  the licensing rules documentation:
+    SPDX-License-Identifier: BSD-2-Clause
+License-Text:
+
+Copyright (c) <year> <owner> . All rights reserved.
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+
+1. Redistributions of source code must retain the above copyright notice,
+   this list of conditions and the following disclaimer.
+
+2. Redistributions in binary form must reproduce the above copyright
+   notice, this list of conditions and the following disclaimer in the
+   documentation and/or other materials provided with the distribution.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
+AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
+IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
+ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
+LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
+CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
+SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
+INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
+CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
+ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
+POSSIBILITY OF SUCH DAMAGE.
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
