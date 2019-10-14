Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzJz-0002U3-3u
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 12:19:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 14:18:56 +0200
Message-Id: <20191014121901.19471-8-a.fatoum@pengutronix.de>
In-Reply-To: <20191014121901.19471-1-a.fatoum@pengutronix.de>
References: <20191014121901.19471-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 07/12] LICENSES: add BSD-1-Clause license
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Incoming sama5d3 bootstrap code has been ported from the at91bootstrap
project and is licensed under a 1-Clause BSD License. To remove
boilerplate legal text there, place the license at a fixed location
and only note SPDX-License-Identifier and Copyright in the source files.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 LICENSES/preferred/BSD-1-Clause | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 LICENSES/preferred/BSD-1-Clause

diff --git a/LICENSES/preferred/BSD-1-Clause b/LICENSES/preferred/BSD-1-Clause
new file mode 100644
index 000000000000..a6d78dd6b41f
--- /dev/null
+++ b/LICENSES/preferred/BSD-1-Clause
@@ -0,0 +1,26 @@
+Valid-License-Identifier: BSD-1-Clause
+SPDX-URL: https://spdx.org/licenses/BSD-1-Clause.html
+Usage-Guide:
+  To use the BSD 1-clause License put the following SPDX tag/value pair
+  into a comment according to the placement guidelines in the licensing
+  rules documentation:
+    SPDX-License-Identifier: BSD-1-Clause
+License-Text:
+
+Copyright (c) <year> <owner> All rights reserved.
+
+Redistribution and use in source and binary forms, with or without modification,
+are permitted provided that the following conditions are met:
+
+1. Redistributions of source code must retain the above copyright notice, this
+list of conditions and the following disclaimer.
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS. "AS IS" AND ANY EXPRESS OR
+IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
+IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE FOR ANY DIRECT, INDIRECT,
+INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
+LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
+OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
+LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
+OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
+ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
