Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUWyU-0007T2-LU
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 13:12:32 +0000
Received: by mail-lj1-x241.google.com with SMTP id k19-v6so18243705lji.11
 for <barebox@lists.infradead.org>; Wed, 05 Dec 2018 05:12:10 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  5 Dec 2018 16:11:43 +0300
Message-Id: <20181205131144.31512-4-antonynpavlov@gmail.com>
In-Reply-To: <20181205131144.31512-1-antonynpavlov@gmail.com>
References: <20181205131144.31512-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/4] checkpatch.pl: use SPDX tag
To: barebox@lists.infradead.org

Also add Joe's copyright.

Based on Linux kernel commit 882ea1d64eb3956
("scripts: use SPDX tag in get_maintainer and checkpatch").

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/checkpatch.pl | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index d8a8e5004f..d1fe6659ce 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -1,9 +1,11 @@
 #!/usr/bin/perl -w
+# SPDX-License-Identifier: GPL-2.0
+#
 # (c) 2001, Dave Jones. (the file handling bit)
 # (c) 2005, Joel Schopp <jschopp@austin.ibm.com> (the ugly bit)
 # (c) 2007,2008, Andy Whitcroft <apw@uk.ibm.com> (new conditions, test suite)
 # (c) 2008-2010 Andy Whitcroft <apw@canonical.com>
-# Licensed under the terms of the GNU GPL License version 2
+# (c) 2010-2018 Joe Perches <joe@perches.com>
 
 use strict;
 
-- 
2.20.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
